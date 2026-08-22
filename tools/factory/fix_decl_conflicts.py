"""Repair the `X redeclared as different kind of symbol` candidates.

declare_missing / m2c emit `extern s32 X;` because the candidate takes `&X`
(CLAUDE.md N.4's rule). That is right for a symbol the file only REFERENCES
and wrong for one the same file DEFINES as a function.

The fix is not to delete the declaration - X may be defined later in the file,
leaving the use undeclared - but to replace it with a forward declaration
taken from the file's own definition, which is the better-informed signature
(CLAUDE.md M.2), plus a cast at the address-taken site.

Byte-neutral by construction: the linker sets bit 0 of a function pointer from
the SYMBOL's Thumb type, not from how C declared it. Retail here is
`.4byte sub_80603D8` loading 0x080603D9, so the same relocation is emitted
either way. The validator's from-scratch gate confirms it regardless.

Reports only. Compiles in a scratch dir, mutates nothing, needs no repo lock.
"""
import re, sqlite3, subprocess, sys
sys.path.insert(0, 'tools/factory')
import gitops

DIAG = gitops.REPO / ".claude" / "factory" / "diag"
DIAG.mkdir(parents=True, exist_ok=True)
conn = sqlite3.connect('.claude/factory/state.db')
FAIL = ['sub_806021C','sub_806025C','sub_8062F00','sub_806A894',
        'sub_8079BA8','sub_8079C70','sub_8106EB0']


def definition_prototype(file_text, sym):
    """`void sub_80603D8(void *arg0) {` -> `void sub_80603D8(void *arg0);`"""
    m = re.search(rf'^([A-Za-z_][\w \*]*?\b{re.escape(sym)}\s*\([^;{{]*?\))\s*$',
                  file_text, re.M)
    if not m:
        m = re.search(rf'^([A-Za-z_][\w \*]*?\b{re.escape(sym)}\s*\([^;{{]*?\))\s*\{{',
                      file_text, re.M)
    return m.group(1).strip() + ";" if m else None


def repair(body, file_text):
    m = re.search(r'^extern\s+s32\s+(\w+);\s*$', body, re.M)
    if not m:
        return None, None
    sym = m.group(1)
    proto = definition_prototype(file_text, sym)
    if proto is None:
        return None, sym
    out = re.sub(r'^extern\s+s32\s+%s;\s*$' % sym, proto, body, flags=re.M)
    out = out.replace('&%s;' % sym, '(s32 *) &%s;' % sym)
    return out, sym


def compile_text(tag, text):
    src, pre = DIAG / f"{tag}.c", DIAG / f"{tag}.i"
    src.write_text(text)
    rs, rp = src.relative_to(gitops.REPO).as_posix(), pre.relative_to(gitops.REPO).as_posix()
    script = (f"arm-none-eabi-cpp -I tools/agbcc/include -nostdinc -undef -iquote include "
              f"-Wno-trigraphs {rs} -o {rp} && tools/agbcc/bin/agbcc -O2 -mthumb-interwork "
              f"-fno-common -Wimplicit -Wparentheses -Werror -g -ffix-debug-line -o /dev/null {rp}")
    r = subprocess.run(["./container.sh", "bash", "-c", script], cwd=gitops.REPO,
                       capture_output=True, text=True)
    for f in (src, pre):
        f.unlink(missing_ok=True)
    return r.returncode, (r.stderr or "") + (r.stdout or "")


if __name__ == "__main__":
    fixed = {}
    for n in FAIL:
        body = conn.execute('select candidate_body from functions where name=?',
                            (n,)).fetchone()[0]
        cp, block = gitops.find_guard_block(n)
        if cp is None:
            print(f"{n:14} no guard block"); continue
        ftext = cp.read_text()
        new, sym = repair(body, ftext)
        if new is None:
            print(f"{n:14} could not derive a prototype for {sym}"); continue
        rc, out = compile_text(n, ftext.replace(block, new.rstrip() + "\n"))
        if rc == 0:
            print(f"{n:14} OK   ({sym} -> forward declaration + cast)")
            fixed[n] = new
        else:
            first = next((l for l in out.splitlines() if 'rror' in l or 'redeclared' in l), out[:90])
            print(f"{n:14} FAIL {first.strip()[:88]}")
    print(f"\n{len(fixed)}/{len(FAIL)} repaired")
    import json
    (DIAG / "fixed.json").write_text(json.dumps(fixed))
