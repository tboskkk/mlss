"""State database for the factory pipeline: schema, connection, and the
small set of queries every process (scanner, tier workers, validator) needs
to move a function through the state machine. See the architecture doc for
the full design (published as a Claude Artifact; ask Tyler for the link if
it's not in memory) -- this module is deliberately just plumbing, no policy.

One SQLite file, WAL mode so a writer (any one process at a time, by
convention -- see claim_for_worker()) doesn't block readers (status
queries, the dashboard). Every process opens its own connection; nothing
holds one open across a long-running search.
"""
from __future__ import annotations

import sqlite3
import time
from contextlib import contextmanager
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent.parent
DB_PATH = REPO / ".claude" / "factory" / "state.db"

# The state machine, exactly as designed. Kept here as the single list of
# legal values -- nothing else in this package should hardcode a state
# string outside this tuple, so a typo fails loud instead of silently
# creating a function that's stuck in a state no process is watching for.
STATES = (
    "raw",          # not yet scanned into a real decision
    "excluded",     # not_c_reason set -- terminal, no process ever claims this
    "queued",       # extractable, dependencies matched, waiting on tier 1
    "needs_attempt",# tier 1 had no idiom match; needs a first real C draft
    "tier2_ready",  # has a real C attempt; waiting for a permuter pool slot
    "permuting",    # a tier 2 worker owns this right now
    "stalled",      # permuting timed out with no score improvement
    "validating",   # a candidate (tier1 idiom or permuter score-0) awaits the from-scratch check
    "needs_human",  # escalations exhausted; needs a Claude/human session
    "matched",      # terminal -- committed, byte-identical, done
)

SCHEMA = """
CREATE TABLE IF NOT EXISTS functions (
    name             TEXT PRIMARY KEY,
    rom_addr         INTEGER,
    file             TEXT NOT NULL,
    state            TEXT NOT NULL DEFAULT 'raw',
    not_c_reason     TEXT,
    lines            INTEGER DEFAULT 0,
    high_regs        INTEGER DEFAULT 0,
    stack_bytes      INTEGER DEFAULT 0,
    indirect_calls   INTEGER DEFAULT 0,
    tractability     REAL,
    best_score       INTEGER,
    last_improved_at REAL,
    escalation_count INTEGER DEFAULT 0,
    worker_id        TEXT,
    notes            TEXT DEFAULT '',
    candidate_body   TEXT,
    candidate_source TEXT,
    created_at       REAL NOT NULL,
    updated_at       REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS edges (
    caller   TEXT NOT NULL,
    callee   TEXT NOT NULL,
    indirect INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (caller, callee)
);
CREATE INDEX IF NOT EXISTS idx_edges_callee ON edges(callee);
CREATE INDEX IF NOT EXISTS idx_edges_caller ON edges(caller);

CREATE TABLE IF NOT EXISTS events (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    function_name TEXT NOT NULL,
    ts            REAL NOT NULL,
    kind          TEXT NOT NULL,
    detail        TEXT DEFAULT ''
);
CREATE INDEX IF NOT EXISTS idx_events_fn ON events(function_name);
CREATE INDEX IF NOT EXISTS idx_events_ts ON events(ts);

CREATE INDEX IF NOT EXISTS idx_functions_state ON functions(state);
"""


# Columns added after the table already existed somewhere. CREATE TABLE IF
# NOT EXISTS doesn't add new columns to an existing table, and this DB
# holds real accumulating state (worker history, candidate bodies) once
# the tier processes are running -- wiping it to pick up a schema change
# would throw that away. (col_name, sql_type_and_default)
MIGRATIONS = [
    ("candidate_body", "TEXT"),
    ("candidate_source", "TEXT"),
]


def connect() -> sqlite3.Connection:
    DB_PATH.parent.mkdir(parents=True, exist_ok=True)
    conn = sqlite3.connect(DB_PATH, timeout=30)
    conn.row_factory = sqlite3.Row
    conn.execute("PRAGMA journal_mode=WAL")
    # Belt and suspenders alongside the connect() timeout= kwarg above:
    # found live, running all 5 processes together for the first time,
    # that write-write contention (multiple processes' loops landing on
    # the DB within the same second) can still throw "database is locked"
    # despite WAL mode -- explicit busy_timeout makes SQLite actually wait
    # and retry internally before giving up, rather than surfacing the
    # error to Python immediately.
    conn.execute("PRAGMA busy_timeout = 30000")
    conn.execute("PRAGMA foreign_keys=OFF")  # edges/functions can reference rows not yet scanned
    conn.executescript(SCHEMA)
    existing_cols = {r[1] for r in conn.execute("PRAGMA table_info(functions)")}
    for col, sqltype in MIGRATIONS:
        if col not in existing_cols:
            conn.execute(f"ALTER TABLE functions ADD COLUMN {col} {sqltype}")
    conn.commit()
    return conn


@contextmanager
def tx(conn: sqlite3.Connection):
    """One transaction, committed on clean exit, rolled back on exception --
    every write in this package goes through this so a crash mid-update
    can never leave a function half-transitioned between states."""
    try:
        yield conn
        conn.commit()
    except Exception:
        conn.rollback()
        raise


def log_event(conn: sqlite3.Connection, name: str, kind: str, detail: str = "") -> None:
    conn.execute(
        "INSERT INTO events (function_name, ts, kind, detail) VALUES (?, ?, ?, ?)",
        (name, time.time(), kind, detail),
    )


def set_state(conn: sqlite3.Connection, name: str, new_state: str, **fields) -> None:
    """Move a function to a new state and log it in the same breath. `fields`
    can set any other column at the same time (best_score, notes, ...) --
    keeps a transition and the data that justified it atomic and always
    paired in the event log."""
    if new_state not in STATES:
        raise ValueError(f"not a real state: {new_state!r}")
    cols = ", ".join(f"{k} = ?" for k in fields)
    sql = f"UPDATE functions SET state = ?, updated_at = ?{(', ' + cols) if cols else ''} WHERE name = ?"
    params = [new_state, time.time(), *fields.values(), name]
    conn.execute(sql, params)
    log_event(conn, name, f"state:{new_state}", ", ".join(f"{k}={v}" for k, v in fields.items()))


def claim_for_worker(conn: sqlite3.Connection, state: str, worker_id: str,
                     order_by: str = "tractability ASC",
                     extra_where: str | None = None, params: tuple = ()):
    """Atomically claim the single best-ranked row in `state` for this
    worker, by moving it to a transitional 'claimed by me' marker in
    worker_id under one transaction -- the mutual-exclusion mechanism that
    makes 'two workers grab the same function' structurally impossible
    rather than a race to be careful about. Returns the row, or None.

    `extra_where` is an additional SQL predicate ANDed onto the claim (with
    its own `params`), for a caller that wants to restrict WHICH rows it
    will take rather than just how they are ordered -- see tier2's seed
    ceiling."""
    with tx(conn):
        row = conn.execute(
            f"SELECT * FROM functions WHERE state = ? AND worker_id IS NULL "
            f"{('AND ' + extra_where) if extra_where else ''} "
            f"ORDER BY {order_by} LIMIT 1",
            (state, *params),
        ).fetchone()
        if row is None:
            return None
        conn.execute(
            "UPDATE functions SET worker_id = ?, updated_at = ? WHERE name = ?",
            (worker_id, time.time(), row["name"]),
        )
    return row


def release_worker(conn: sqlite3.Connection, name: str) -> None:
    with tx(conn):
        conn.execute("UPDATE functions SET worker_id = NULL WHERE name = ?", (name,))


def counts_by_state(conn: sqlite3.Connection) -> dict:
    rows = conn.execute("SELECT state, COUNT(*) AS n FROM functions GROUP BY state").fetchall()
    return {r["state"]: r["n"] for r in rows}
