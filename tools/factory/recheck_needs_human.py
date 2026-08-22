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
    c_path, block = gitops.find_guard_block(name)
    if c_path is None:
        return None, None
    return c_path, c_path.read_text().replace(block, body.rstrip() + "\n")


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
rows = list(conn.execute(
    "SELECT name, candidate_body FROM functions WHERE state='needs_human' "
    "AND notes LIKE 'plain-build asm-differ score 0%'"))
limit = int(sys.argv[1]) if len(sys.argv) > 1 else len(rows)

clusters, examples, no_body, ok = collections.Counter(), {}, 0, 0
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
