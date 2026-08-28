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


_BODY_FUNC_DECL_RE = re.compile(r'^(\w[\w \*]*?)\s+(\w+)\s*\(([^;{\n]*)\)\s*;.*$', re.M)


def repair_body_signature_mismatch(file_text, body):
    """Fix a function-prototype declaration INSIDE `body` (for some symbol
    OTHER than the one being defined -- typically a sibling the candidate
    calls or address-takes) whose signature disagrees with the FILE's own
    real definition of that symbol, in return type OR parameter types.

    A fifth shape of the decl/defn conflict family. Distinct from repair()
    above (DATA-vs-function: `extern s32 X;` vs a real function) and from
    repair_stale_prototype (a stale FILE-scope decl for the symbol being
    spliced ITSELF, position-independent): here the candidate's OWN
    forward-declaration for some sibling uses m2c's generic raw-pointer
    idiom (`void *`, or a guessed integer width) while the file's real,
    already-matched definition of that sibling names a real struct type
    or a different integer width. Both still say "conflicting types for
    X" from agbcc, and both would independently kill the same object, so
    telling them apart by which side (file vs. candidate) holds the
    stale declaration matters for where the fix has to run, not for
    whether it applies.

    Measured 2026-08-27 on 4 of the 16-row escalation-exhausted-pool
    build failures repair_stale_prototype's own fix didn't reach:
    sub_8092304/sub_8092898 declare `void sub_8092DD4(void *arg0);`
    while the file's real definition is `void sub_8092DD4(struct Entity
    *arg0)`; sub_8093350/sub_80938E4 are the identical shape for
    sub_8093E20. ONLY searches `file_text` (the file being spliced), on
    purpose -- sub_80FC0C0's own conflict (against sub_80FBDE0) looked
    identical at first (`u8 sub_80FBDE0(void *, s32, s32, s32);` vs. the
    file's OWN existing `u8 sub_80FBDE0(void *, s32, s16, s16);`) but
    turned out to be a DIFFERENT, harder problem once checked: neither
    side is a real definition (both just declarations, so
    definition_prototype correctly returns None and this function
    correctly leaves it alone), and the actual matched definition lives
    in a completely different file (`src/sub_80FBDE0.c`) with a THIRD,
    still different signature (`s32 sub_80FBDE0(s32, void *, u16, u16)`
    -- note arg0/arg1 also SWAPPED position relative to both guesses).
    Extending this to search other files was deliberately not done:
    unlike a return-type or void*-vs-struct* mismatch, a parameter-order
    disagreement risks silently reassigning which physical argument goes
    to which register at the call site -- not obviously byte-neutral,
    and not safe to guess at. Left as a real, open, separate case.

    Also repairs any bare (non-call) assignment of `sym` elsewhere in
    `body` that relied on the STALE signature via an explicit
    function-pointer cast on the assignment's LHS -- e.g. storing sym's
    address into a `handler` slot cast to `void (**)(void *)` while sym's
    real, corrected type is `void (*)(struct Entity *)`. First version of
    this function DIDN'T do this and was verified wrong immediately, not
    assumed right: fixing only the declaration turned the original
    `conflicting types` error into `assignment from incompatible pointer
    type` at the exact address-taken site, live on sub_8092304/
    sub_8092898/sub_8093350/sub_80938E4. Casting the RHS to the STALE
    function-pointer type there is byte-neutral by the same argument
    repair_file_scope already documents for its own cast: the linker sets
    a function pointer's Thumb bit from the SYMBOL, not from how C
    declared it, so the cast changes only what agbcc's type checker
    accepts, never an emitted byte -- confirmed, not just argued, by
    finish_match()'s from-scratch ROM sha1 re-check remaining the actual
    gate either way.

    Returns the repaired body, or the original body if nothing to fix.
    """
    out = body
    head_end = body.find("{")
    head = body[:head_end] if head_end >= 0 else body
    for m in _BODY_FUNC_DECL_RE.finditer(head):
        sym, stale_ret, stale_args = m.group(2), m.group(1).strip(), m.group(3).strip()
        stale_line = m.group(0)
        proto = definition_prototype(file_text, sym)
        if proto is None:
            continue
        if proto.strip().rstrip(";") == stale_line.strip().rstrip(";"):
            continue
        out = out.replace(stale_line, proto, 1)
        stale_fnptr = f"{stale_ret} (*)({stale_args})"
        out = re.sub(r'=\s*%s\s*;' % re.escape(sym),
                     lambda mm, fp=stale_fnptr, s=sym: f"= ({fp}) {s};", out)
    return out


def repair_stale_prototype(file_text, target, body):
    """Fix a stale FUNCTION-prototype declaration for `target` elsewhere in
    the file whose return type doesn't match the real definition just
    spliced in from `body`.

    Distinct from repair_file_scope above, which only matches the
    DATA-shaped `extern s32 X;` case (declare_missing's guess for a symbol
    some sibling address-takes). This is the FUNCTION-shaped stale decl --
    `s32 X(args); /* extern */`, declare_missing's generic return-type
    guess for a symbol some sibling only CALLS. Measured 2026-08-27 across
    the escalation-exhausted near-miss pool: 16 of 32 build failures are
    this exact shape, 14 of them the state-machine `handler` slot
    convention (real definition returns `void`, guessed `s32`) -- written
    generally by comparing declared vs. real return type, not hardcoded to
    void, since 2 of the 16 (sub_80FC0C0 -> u8, sub_813CAEC -> void with a
    non-void stale guess) don't fit that pattern.

    POSITION-INDEPENDENT on purpose, unlike repair_file_scope: a
    mismatched-type function prototype is a real conflict wherever in the
    file it sits, not only when it happens to precede the definition --
    the case that was actually blocking `sub_8091CC8` sits AFTER it.

    Also repairs any OTHER bare (non-call) use of `target` that relied on
    the stale return type via an assignment -- e.g. storing target's
    address into a `handler` slot cast to a function-pointer type derived
    from the STALE signature (`sub_813CAEC`'s file has exactly this).
    Casting the RHS to the stale function-pointer type there is
    byte-neutral by the same argument repair_file_scope already documents:
    the linker sets a function pointer's Thumb bit from the SYMBOL, not
    from how C declared it, so the cast changes what agbcc's type checker
    accepts without changing a single emitted byte -- and finish_match()'s
    from-scratch ROM sha1 re-check catches it if that reasoning is ever
    wrong for some case not yet seen.

    Returns the repaired file text, or None if there was nothing to fix.
    """
    proto = definition_prototype(body, target)
    if proto is None:
        return None
    m_real = re.match(r'^(.*?)\b%s\s*\(' % re.escape(target), proto, re.S)
    if not m_real:
        return None
    real_ret = m_real.group(1).strip()

    # group(1) must start at column 0 with a real identifier character, not
    # whitespace -- caught live testing sub_8091CC8: an earlier version
    # allowed leading spaces into group(1), so it matched an INDENTED CALL
    # SITE (`    sub_8091CC8(arg0);`, group(1)="    ", empty after strip())
    # as if it were a zero-type stale declaration and replaced the call
    # itself with a declaration, a real corruption caught by the very next
    # compile, not assumed safe. Declarations in this codebase sit at
    # column 0; calls inside a function body are always indented, so
    # anchoring group(1) to start on a non-space character is sufficient to
    # tell them apart. `[^;{\n]*` (not `[^;{]*`) additionally keeps the args
    # capture on a single line, so a malformed match can't silently swallow
    # unrelated following lines.
    stale_re = re.compile(
        r'^(\w[\w \*]*?)\s+\b%s\s*\(([^;{\n]*)\)\s*;.*$' % re.escape(target), re.M)
    replaced = []

    def repl(m):
        stale_ret = m.group(1).strip()
        if stale_ret == real_ret:
            return m.group(0)
        replaced.append((stale_ret, m.group(2).strip()))
        return proto

    out = stale_re.sub(repl, file_text)
    if not replaced:
        return None
    stale_ret, stale_args = replaced[0]
    stale_fnptr = f"{stale_ret} (*)({stale_args})"
    out = re.sub(r'=\s*%s\s*;' % re.escape(target),
                 lambda m: f"= ({stale_fnptr}) {target};", out)
    return out


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
