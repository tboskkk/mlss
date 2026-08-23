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



def definition_prototype(file_text, sym):
    """`void sub_80603D8(void *arg0) {` -> `void sub_80603D8(void *arg0);`"""
    m = re.search(rf'^([A-Za-z_][\w \*]*?\b{re.escape(sym)}\s*\([^;{{]*?\))\s*$',
                  file_text, re.M)
    if not m:
        m = re.search(rf'^([A-Za-z_][\w \*]*?\b{re.escape(sym)}\s*\([^;{{]*?\))\s*\{{',
                      file_text, re.M)
    return m.group(1).strip() + ";" if m else None


def repair(body, file_text):
    """Replace every `extern s32 X;` whose X the FILE defines as a function.

    Returns (new_body, [symbols]) or (None, []) if there was nothing to fix.
    Loops: a body can carry several such declarations.
    """
    fixed, syms = body, []
    for m in re.finditer(r'^extern\s+s32\s+(\w+);\s*$', body, re.M):
        sym = m.group(1)
        proto = definition_prototype(file_text, sym)
        if proto is None:
            continue
        fixed = re.sub(r'^extern\s+s32\s+%s;\s*$' % re.escape(sym), proto,
                       fixed, flags=re.M)
        fixed = fixed.replace('&%s;' % sym, '(s32 *) &%s;' % sym)
        syms.append(sym)
    return (fixed, syms) if syms else (None, [])


def repair_file_scope(file_text, target, body):
    """Fix a stale file-scope `extern s32 <target>;` before <target> is defined.

    The second shape of this conflict, and the more common one in permuter
    output. The declaration is NOT in the candidate: it sits at file scope,
    emitted earlier for a SIBLING that takes `&target`, back when target was
    still a guard. Splicing target's definition in then collides with it.

    Returns (new_file_text, prototype) or (None, None).

    Editing the file touches code that may already be MATCHED - the sibling
    holding `&target`. That is safe here only because the change is
    byte-neutral (the linker sets a function pointer's Thumb bit from the
    symbol's type, not from how C declared it) AND because finish_match()
    re-checks the whole ROM's sha1, so a break anywhere in the file fails the
    gate rather than slipping through.
    """
    if not re.search(r'^extern\s+s32\s+%s;\s*$' % re.escape(target), file_text, re.M):
        return None, None
    proto = definition_prototype(body, target)
    if proto is None:
        return None, None
    out = re.sub(r'^extern\s+s32\s+%s;\s*$' % re.escape(target), proto,
                 file_text, flags=re.M)
    out = out.replace('&%s;' % target, '(s32 *) &%s;' % target)
    return out, proto


def repair_file_third_party(file_text, body):
    """Fix `extern s32 X;` in the FILE when the CANDIDATE calls X as a function.

    The third and commonest shape. X is neither the target nor declared in the
    candidate's own guard: it is some other ROM symbol that this file takes the
    address of (so declare_missing declared it DATA, per CLAUDE.md N.4) while
    the candidate being spliced CALLS it. One translation unit, both
    declarations, fatal.

    Real example - src/sub_808EC88.c holds

        extern s32 sub_808DD2C;
        ... (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;

    while the candidate for sub_808FBB4 carries

        s32 sub_808DD2C(void *);
        ... sub_808DD2C(arg0);

    N.4's rule picks by USE, and both uses are present, so no single choice by
    use can be right. The function declaration is the one that can serve both:
    you cannot call data, but you can cast a function's address. So the file's
    declaration becomes the candidate's prototype and the address-taken sites
    get a cast.

    Byte-neutral: the linker resolves `&X` from the symbol, not from how C
    declared it, and a cast emits no code. The from-scratch gate confirms.

    Returns (new_file_text, [symbols]) or (None, []).
    """
    out, fixed = file_text, []
    for m in re.finditer(r'^\s*([A-Za-z_][\w \*]*?\b(\w+)\s*\([^;{]*\));', body, re.M):
        proto, sym = m.group(1).strip(), m.group(2)
        if not re.search(r'^extern\s+s32\s+%s;\s*$' % re.escape(sym), out, re.M):
            continue
        if f'{sym}(' not in body:               # declared but never called
            continue
        out = re.sub(r'^extern\s+s32\s+%s;\s*$' % re.escape(sym), proto + ';',
                     out, flags=re.M)
        out = out.replace(f'&{sym};', f'(s32 *) &{sym};')
        fixed.append(sym)
    return (out, fixed) if fixed else (None, [])


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
    conn = sqlite3.connect('.claude/factory/state.db')
    FAIL = sys.argv[1:] or [
        r["name"] for r in conn.execute(
            "SELECT name FROM functions WHERE state='needs_human' "
            "AND notes LIKE 'plain-build asm-differ score 0%'")]
    fixed = {}
    for n in FAIL:
        body = conn.execute('select candidate_body from functions where name=?',
                            (n,)).fetchone()[0]
        cp, block = gitops.find_guard_block(n)
        if cp is None:
            print(f"{n:14} no guard block"); continue
        ftext = cp.read_text()
        new, syms = repair(body, ftext)
        if new is None:
            print(f"{n:14} nothing to repair"); continue
        rc, out = compile_text(n, ftext.replace(block, new.rstrip() + "\n"))
        if rc == 0:
            print(f"{n:14} OK   ({', '.join(syms)} -> forward declaration + cast)")
            fixed[n] = new
        else:
            first = next((l for l in out.splitlines() if 'rror' in l or 'redeclared' in l), out[:90])
            print(f"{n:14} FAIL {first.strip()[:88]}")
    print(f"\n{len(fixed)}/{len(FAIL)} repaired")
    import json
    (DIAG / "fixed.json").write_text(json.dumps(fixed))
