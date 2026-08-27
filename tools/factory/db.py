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
    # Which m2c ruleset produced the stored seed, so a row that has already
    # been PROMOTED can still be re-seeded when the seeder improves.
    #
    # Without this, tier_m2c only ever claimed needs_attempt/stalled, so a
    # seed froze permanently the moment its row reached tier2_ready --
    # section J's ldsh/ldsb patch re-opened ZERO of the 863 tier2_ready rows
    # holding an uncompilable M2C_ERROR body, and the permuter spent 596
    # launches searching them. See requeue_stale_seeds.py.
    #
    # NULL means "not seeded by m2c" (a twin/permuter/rescore candidate) and
    # is deliberately NOT treated as stale.
    ("seed_ruleset", "TEXT"),
    # Byte distance from retail, measured with the function compiled ALONE
    # (isolation_exact.py). Kept separate from best_score deliberately: they
    # are different scales and different things. best_score is an asm-differ
    # number measured inside the shared translation unit, which CLAUDE.md
    # N.4a showed tracks position-in-file more than code quality -- same code,
    # 76x the score, purely from how many functions follow it -- and which is
    # NULL for most rows because that build often cannot produce a number at
    # all (57% of the byte-exact candidates found in the first sweep had no
    # score). iso_score has neither problem: no translation unit to poison, no
    # trailing content to diff against.
    ("iso_score", "INTEGER"),
    # twins.fingerprint() of this function's retail assembly -- its structural
    # shape, with immediates, labels and symbol names normalised away. Cached
    # here because tier2 needs it on every claim and computing it means reading
    # every fragment off disk.
    #
    # What it buys: 254 structural groups hold 785 unmatched functions, so
    # searching each member separately is 531 redundant permuter searches on
    # what is really 254 problems. twins.py has listed deduplication as its
    # exploit #1 since it was written and nothing ever consumed it.
    ("shape_hash", "TEXT"),
    # Per-symbol instruction-match percentage (0-100) from objdiff-cli,
    # artifact-free like iso_score (no shared translation unit to poison)
    # but a normalized signal iso_score's raw byte count doesn't give.
    # Correlates with but is distinct from iso_score (Spearman -0.792,
    # measured on a 2,444-candidate sweep). Wired into tier2's claim
    # ordering as an OR'd admission path alongside ISO_SCORE_CEILING, not
    # a replacement.
    ("objdiff_score", "REAL"),
    # Fuzzy structural cluster (cluster_index.py). shape_hash above is an
    # EXACT md5 of normalised instructions, so it groups only functions whose
    # shapes are identical; measured on this corpus that is 242 groups / 493
    # avoidable searches. Clustering on instruction-sequence SIMILARITY
    # instead finds 257 clusters / 1,011 avoidable searches -- +518 over the
    # exact grouping, because near-identical functions that differ by an
    # instruction or two are invisible to a hash.
    #
    # DEDUPLICATION ONLY. shape_hash members differ solely in immediates and
    # symbol names, which is why validator.propagate_to_twins() can generate
    # one member's C from another's by substitution. Cluster members differ
    # STRUCTURALLY, so no such substitution is valid -- this column must
    # never be used to propagate a candidate, only to avoid searching two
    # near-identical functions at the same time.
    ("cluster_id", "TEXT"),
    # Signature of a permuter zero that was earned in ISOLATION and then did
    # NOT reproduce in the function's real translation unit.
    #
    # This is not a failure of the search and not a lost match -- verified
    # against ground truth (splice + rm -rf build + full make + ROM sha1) on
    # sub_8091CC8 and three siblings: the candidate genuinely does not
    # produce retail bytes in context, so tier2 rejecting it is CORRECT.
    # What is wasted is doing it again: the row goes back to stalled,
    # tier_m2c re-seeds it with the same deterministic m2c output, and the
    # permuter re-derives the same non-transferable zero. sub_8091CC8 had
    # done this 8+ times across several days, 22 functions did it in one
    # 12h window, and each round costs a full search slot (up to 900s of a
    # pinned core).
    #
    # The signature covers the two things that could make the SAME candidate
    # start transferring: the candidate body itself, and the owning file's
    # contents (a sibling's draft being fixed or matched changes what agbcc
    # emits for the whole translation unit). If either changes, the
    # signature no longer matches and the row is fully claimable again --
    # so this defers work, it never strands it, which is the invariant
    # CLAUDE.md requires of anything that declines a row.
    ("iso_zero_sig", "TEXT"),
]


def _schema_is_current(conn: sqlite3.Connection) -> bool:
    """Read-only check that the DDL below would be a no-op."""
    try:
        have = {r[0] for r in conn.execute(
            "SELECT name FROM sqlite_master WHERE type='table'")}
        if not {"functions", "edges", "events"} <= have:
            return False
        cols = {r[1] for r in conn.execute("PRAGMA table_info(functions)")}
        return all(col in cols for col, _ in MIGRATIONS)
    except sqlite3.Error:
        return False


def connect(readonly: bool = False) -> sqlite3.Connection:
    """Open the state DB.

    `readonly=True` opens with SQLite's `mode=ro` URI and touches nothing.
    Use it for anything that only reports -- health.py, dashboard.py, ad-hoc
    queries. It is not merely tidier: this function USED to run
    `executescript(SCHEMA)`, a migration check and `commit()` on EVERY open,
    i.e. a write transaction per connection, and both monitors reconnect on
    a timer. A dashboard left running 18.4 hours at its 5s refresh was
    issuing on the order of 13,000 write transactions an hour against the
    same DB the pipeline writes to -- while CLAUDE.md described both tools
    as read-only and safe to run against a live factory as often as you
    like. `database is locked` errors then clustered in exactly the hours
    that monitoring was heaviest, and each one cost 12 killed permuter
    searches (see tier2.main()). The observer was perturbing the system.

    Even for writers the DDL now runs only when it would actually change
    something, checked with a read query first.
    """
    if readonly:
        conn = sqlite3.connect(f"file:{DB_PATH}?mode=ro", uri=True, timeout=30)
        conn.row_factory = sqlite3.Row
        conn.execute("PRAGMA busy_timeout = 30000")
        return conn
    DB_PATH.parent.mkdir(parents=True, exist_ok=True)
    conn = sqlite3.connect(DB_PATH, timeout=30)
    conn.row_factory = sqlite3.Row
    # Autocommit mode, so tx()'s explicit BEGIN IMMEDIATE is legal (Python's
    # default implicit BEGIN would make it "cannot start a transaction
    # within a transaction"). It also fixes a silent data-loss bug: several
    # callers do `with db.tx(conn): set_state(...)` and then log_event()
    # OUTSIDE the block, and the connection is closed in a finally -- so
    # under the old implicit-transaction behaviour that event was rolled
    # back and vanished. Measured: 139 state:tier2_ready transitions in one
    # hour with ZERO matching `seeded` events on record. The events table is
    # what health.py's search-yield check and every incident post-mortem
    # read, so those holes were being read as fact.
    conn.isolation_level = None
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
    if not _schema_is_current(conn):
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
    can never leave a function half-transitioned between states.

    BEGIN IMMEDIATE, not Python's default deferred transaction. Two real
    problems came from the default:

    1. `database is locked`, thrown rather than waited out. A deferred
       transaction takes its write lock only at the first write, so a
       SELECT-then-UPDATE block (which is what claim_for_worker and every
       read-modify-write here is) can find that another writer committed in
       between. SQLite cannot safely wait at that point -- upgrading a read
       lock to a write lock is a deadlock risk -- so it returns SQLITE_BUSY
       IMMEDIATELY and `busy_timeout` never applies, however generous it
       is. That is why a 30-second busy_timeout was still producing 25
       `database is locked` failures in three hours.
    2. claim_for_worker's advertised atomicity was not real. Its docstring
       says two workers grabbing the same function is "structurally
       impossible"; with a deferred transaction both could pass the
       `worker_id IS NULL` SELECT before either wrote. Unexercised so far
       (one claimant per state), but the guarantee is load-bearing and
       several tools now read unclaimed rows.

    BEGIN IMMEDIATE takes the write lock up front, so contention becomes a
    wait governed by busy_timeout instead of an exception, and the SELECT
    sees a snapshot nothing can change underneath it.
    """
    conn.execute("BEGIN IMMEDIATE")
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
