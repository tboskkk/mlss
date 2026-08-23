"""Re-check needs_human rows whose verdict may simply have gone stale.

`needs_human` is a DEAD-END queue: nothing in the factory ever reclaims from
it. So a row filed there keeps its verdict forever, even after the thing that
caused it is fixed - and this project fixes things in the shared tree
constantly (quarantine_broken_drafts, unblock_files, declare_missing, every
match that lands in a neighbouring guard).

Measured the first time this was run: of 106 rows filed as "plain-build
asm-differ score 0 (very likely correct C), but the destination file will not
compile with it spliced", **99 compiled perfectly well.** They were finished,
byte-correct functions parked in a queue nothing revisits. Only 7 still had
the real declaration conflict (`X redeclared as different kind of symbol` -
a symbol declared `extern s32 X;` for an address-taken use while the same
file also DEFINES X as a function; see CLAUDE.md N.4).

Splices the candidate in memory, writes the whole translation unit into a
scratch directory, and compiles it with the real Makefile flags. Nothing in
the repo is mutated, so this is safe to run against a live factory and needs
no repo lock. It only REPORTS - requeueing is a separate, deliberate step,
and the validator re-verifies from scratch either way.
"""
import collections, pathlib, re, subprocess, sys
sys.path.insert(0, 'tools/factory')
import db, gitops

DIAG = gitops.REPO / ".claude" / "factory" / "diag"
DIAG.mkdir(parents=True, exist_ok=True)


def spliced_text(name, body):
    """The destination file with `body` spliced in, AS THE REAL PATH WOULD DO IT.

    The two declaration repairs matter here, not just cosmetically. A tool that
    simulates a splice but skips the repairs the real splice applies reports
    conflicts that will not actually happen, and those rows stay filed in a
    queue nothing revisits (CLAUDE.md section Q). Before this, four rows in
    this very report were clustered under `X redeclared as different kind of
    symbol` -- a class gitops.splice_candidate() now fixes on its own.

    General rule worth keeping: any tool that PREDICTS what a splice will do
    must apply the same transformations the splice does, or it under-reports.
    """
    c_path, block = gitops.find_guard_block(name)
    if c_path is None:
        return None, None
    # 1. declarations inside the candidate that contradict the file
    body = gitops._repair_body_decls(c_path, body)
    text = c_path.read_text().replace(block, body.rstrip() + "\n")
    # 2. a stale file-scope `extern s32 <name>;` for the symbol being defined
    try:
        import fix_decl_conflicts
        out, _proto = fix_decl_conflicts.repair_file_scope(text, name, body)
        if out:
            text = out
    except Exception:
        pass
    return c_path, text


def compile_text(tag, text):
    src = DIAG / f"{tag}.c"
    pre = DIAG / f"{tag}.i"
    src.write_text(text)
    rs, rp = src.relative_to(gitops.REPO).as_posix(), pre.relative_to(gitops.REPO).as_posix()
    script = (f"arm-none-eabi-cpp -I tools/agbcc/include -nostdinc -undef "
              f"-iquote include -Wno-trigraphs {rs} -o {rp} && "
              f"tools/agbcc/bin/agbcc -O2 -mthumb-interwork -fno-common "
              f"-Wimplicit -Wparentheses -Werror -g -ffix-debug-line -o /dev/null {rp}")
    r = subprocess.run(["./container.sh", "bash", "-c", script], cwd=gitops.REPO,
                       capture_output=True, text=True)
    for f in (src, pre):
        f.unlink(missing_ok=True)
    return r.returncode, (r.stderr or "") + (r.stdout or "")


ERR_RE = re.compile(r"^[^\s:]+:\d+:\s*(.*)$", re.M)

conn = db.connect()
# ALL dead-end rows carrying a candidate, not one note pattern. The
# blocking condition is usually somebody else's broken draft, and which
# note a row happens to carry says nothing about whether that is still
# true. Measured on a later run: 96 of 125 compiled.
rows = list(conn.execute(
    "SELECT name, candidate_body FROM functions WHERE state IN "
    "('needs_human','stalled') AND candidate_body IS NOT NULL"))
apply_fix = "--apply" in sys.argv
args = [a for a in sys.argv[1:] if not a.startswith("-")]
limit = int(args[0]) if args else len(rows)

clusters, examples, no_body, ok = collections.Counter(), {}, 0, 0
recovered = []
for i, r in enumerate(rows[:limit], 1):
    name, body = r["name"], r["candidate_body"]
    if not body:
        no_body += 1
        continue
    c_path, text = spliced_text(name, body)
    if text is None:
        clusters["no guard block found"] += 1
        continue
    rc, out = compile_text(name, text)
    if rc == 0:
        ok += 1
        recovered.append(name)
        continue
    msgs = [m.group(1) for m in ERR_RE.finditer(out)]
    fatal = next((m for m in msgs if "warning" not in m.lower()), msgs[0] if msgs else out[:70])
    key = re.sub(r"`[^']*'", "X", fatal).strip()[:70]
    clusters[key] += 1
    examples.setdefault(key, (name, fatal))
    print(f"[{i}/{limit}] {name:22} {key}", flush=True)

print("\n=== clusters ===")
for k, v in clusters.most_common(15):
    print(f"{v:4d}  {k}")
    e = examples.get(k)
    if e: print(f"        e.g. {e[0]}: {e[1][:100]}")
print(f"\ncompiles fine now: {ok}   no candidate_body: {no_body}")
if recovered and apply_fix:
    import time
    q = ",".join("?" * len(recovered))
    conn.execute(
        f"UPDATE functions SET state='tier2_ready', worker_id=NULL, notes='requeued "
        f"by recheck_needs_human: the destination file compiles with this candidate "
        f"now', updated_at=? WHERE name IN ({q})", [time.time()] + recovered)
    conn.commit()
    print(f"requeued {len(recovered)} -> tier2_ready (the validator re-verifies)")
elif recovered:
    print(f"pass --apply to requeue those {len(recovered)}")
