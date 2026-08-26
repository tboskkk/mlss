#!/usr/bin/env python3
"""Turn `+OFFSET` struct Entity field accesses into `entity->field`, byte-identically.

WHAT THIS IS FOR. Matching decompilation produces C that is correct and almost
unreadable: the entity handler assignment appears 419 times across 137 files as

    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8111234;

which says nothing about what it does. With `struct Entity` in common.h (see
CLAUDE.md section S, unblocked 2026-08-23) the same statement is

    arg0->handler = &sub_8111234;

Identical bytes, and now it says what it means. This is one field of a general
pass: --offset/--field/--ctype parameterize which struct Entity field gets the
same treatment (default is the pilot field, handler at 0x4C).

WHY IT IS SAFE, and why the safety is unusually good here. Two properties have
to hold and both are checkable:

  * The struct field matches the EXISTING usage rather than forcing a change.
    `handler` is typed `s32 *` because `declare_missing` declares an
    address-taken symbol as `extern s32 X;` (CLAUDE.md N.4's rule), so
    `&sub_8111234` is already an `s32 *`. Nothing about the expression's type
    changes.
  * Retyping the parameter from `void *` to `struct Entity *` cannot change a
    call, because the callees are declared K&R with no parameter list -- and a
    pointer is a pointer to agbcc regardless.

And then the ROM's sha1 checks it anyway. That is the luxury of doing a
refactor on a matching decomp: if the hash still matches, nothing changed but
the reading. Verified on the pilot (sub_81126BC): `mlss.gba: OK`, layout clean.

CONSERVATIVE BY CONSTRUCTION. A function is rewritten only when

  * the dereferenced name is the function's own parameter, and
  * that parameter is declared exactly `void *NAME`, and
  * the function is MATCHED (its C is real, not a `#else` draft)

Anything else is left alone -- a `+0x4C` access on a local, on a differently
typed parameter, or inside an unproven draft is skipped rather than guessed at.

    python3 tools/readable_entity.py              # report what it would do
    python3 tools/readable_entity.py --apply      # rewrite, then BUILD to verify
"""
from __future__ import annotations

import argparse
import re
import sqlite3
import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
SRC = REPO / "src"
DB = REPO / ".claude" / "factory" / "state.db"

# A function definition line: `type name(params) {`
FUNCDEF = re.compile(r"^([A-Za-z_][\w \*]*?)\b(\w+)\s*\(([^;{]*)\)\s*\{", re.M)


def offset_forms(offset: int) -> list[str]:
    """split_func.py/m2c write offsets 0/4/8 in decimal and everything from
    0xC up in hex (no leading zero) -- measured, not assumed (see
    docs/... none written up; checked directly against src/*.c). Return every
    spelling actually seen so the access regex matches either."""
    forms = [str(offset)]
    hexf = f"0x{offset:X}"
    if hexf not in forms:
        forms.append(hexf)
    return forms


def access_regex(ctype: str, offset: int) -> re.Pattern[str]:
    """`(*(CTYPE *)((s8 *)(NAME) + (OFFSET)))` -- CTYPE is the field's own
    type (e.g. `s32 *`), so the cast is one level higher, matching the
    existing corpus convention (handler is `s32 *`, accessed as `s32 **`)."""
    cast = re.escape(ctype + "*")
    alt = "|".join(re.escape(f) for f in offset_forms(offset))
    return re.compile(rf"\(\*\({cast}\)\(\(s8 \*\)\((\w+)\) \+ \((?:{alt})\)\)\)")


def matched_names() -> set[str]:
    try:
        c = sqlite3.connect(f"file:{DB}?mode=ro", uri=True)
        return {n for n, in c.execute("SELECT name FROM functions WHERE state='matched'")}
    except sqlite3.Error:
        return set()


def rewrite(text: str, matched: set[str], field: str, access: re.Pattern[str]) -> tuple[str, list[str]]:
    """-> (new text, [function names rewritten])."""
    done: list[str] = []
    out = text
    for m in list(FUNCDEF.finditer(text)):
        fname, params = m.group(2), m.group(3)
        if fname not in matched:
            continue
        # body: from the opening brace to the matching close at column 0
        start = m.end()
        end = out.find("\n}", start)
        if end == -1:
            continue
        body = text[start:end]
        names = {n for n in access.findall(body)}
        if len(names) != 1:
            continue
        var = names.pop()
        # only a parameter declared exactly `void *var`
        if not re.search(rf"\bvoid\s*\*\s*{re.escape(var)}\b", params):
            continue
        # ...and NOT one the function does pointer arithmetic on.
        #
        # This is the trap that failed the first whole-batch attempt, and it is
        # invisible in the source text. `void *p; p + 4` is BYTE arithmetic (a
        # GCC extension); `struct Entity *p; p + 4` scales by sizeof(struct
        # Entity) = 0xB4. Retyping the parameter silently changes every such
        # expression's meaning while the code still compiles and still looks
        # right. 11 of 171 functions do this, the ROM refused to reproduce, and
        # the pass reverted itself.
        #
        # Those 11 are skipped rather than guessed at. They can still be made
        # readable, but via a cast at the use site rather than a retype.
        if re.search(rf"(?<!\)){re.escape(var)}\s*[+\-]\s*\w", body):
            continue
        new_params = re.sub(rf"\bvoid(\s*\*\s*{re.escape(var)}\b)",
                            rf"struct Entity\1", params, count=1)
        new_body = access.sub(lambda mm: f"{mm.group(1)}->{field}", body)
        old_chunk = text[m.start():end]
        new_chunk = (old_chunk[:m.start(3) - m.start()] + new_params
                     + old_chunk[m.end(3) - m.start():(start - m.start())] + new_body)
        out = out.replace(old_chunk, new_chunk, 1)

        # Retype the function's own forward DECLARATION too, if the file has
        # one. Several files both declare and define a function -- the
        # declaration is what fix_decl_conflicts emits so a sibling can take
        # its address before it is defined -- and retyping only the definition
        # is `conflicting types for X`, which fails the whole object. That was
        # the entire cause of the 11 files this pass first skipped; they were
        # not producing different bytes, they were not compiling at all.
        decl = re.compile(
            rf"^([A-Za-z_][\w \*]*?\b{re.escape(fname)}\s*\()([^;{{)]*)(\)\s*;)", re.M)

        def _fix_decl(dm):
            params_d = dm.group(2)
            if params_d.count("void *") != 1 and not re.search(r"\bvoid\s*\*", params_d):
                return dm.group(0)
            return dm.group(1) + re.sub(r"\bvoid(\s*\*)", r"struct Entity\1",
                                        params_d, count=1) + dm.group(3)

        out = decl.sub(_fix_decl, out)
        done.append(fname)
    return out, done


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--offset", default="0x4C",
                     help="struct Entity offset, decimal or 0x-hex (default: 0x4C)")
    ap.add_argument("--field", default="handler",
                     help="field name in struct Entity (default: handler)")
    ap.add_argument("--ctype", default="s32 *",
                     help="field's C type, e.g. 's32 *' or 'void *' (default: s32 *)")
    args = ap.parse_args()

    offset = int(args.offset, 0)
    field, ctype = args.field, args.ctype
    access = access_regex(ctype, offset)
    anchors = [f"+ ({f}))" for f in offset_forms(offset)]

    matched = matched_names()
    if not matched:
        print("could not read matched functions from the DB", file=sys.stderr)
        return 1

    plan: dict[Path, tuple[str, list[str]]] = {}
    for p in sorted(SRC.glob("*.c")):
        text = p.read_text(errors="ignore")
        if not any(a in text for a in anchors):
            continue
        new, done = rewrite(text, matched, field, access)
        if done and new != text:
            plan[p] = (new, done)

    total = sum(len(v[1]) for v in plan.values())
    print(f"{total} function(s) in {len(plan)} file(s) can become entity->{field}")
    for p, (_n, done) in list(plan.items())[:8]:
        print(f"   {p.name:<26} {', '.join(done[:4])}"
              + (f" +{len(done)-4}" if len(done) > 4 else ""))
    if len(plan) > 8:
        print(f"   ... and {len(plan)-8} more files")

    if not args.apply:
        print("\npass --apply to rewrite (a from-scratch build then verifies the ROM)")
        return 0

    sys.path.insert(0, str(REPO / "tools" / "factory"))
    import gitops
    import shutil

    # VERIFY EACH FILE, KEEP ONLY WHAT IS PROVABLY IDENTICAL.
    #
    # The first two attempts rewrote everything and asked the ROM. Both failed,
    # and "something among 169 functions changed bytes" is not a diagnosis. The
    # retype is not the pure rename it resembles: `p + 4` is 4 bytes on a
    # `void *` and 4 * 0xB4 on a `struct Entity *`, and there turned out to be
    # at least one further interaction beyond that (files where
    # fix_decl_conflicts has already inserted an `(s32 *)` cast at the
    # address-taken site).
    #
    # So stop predicting which rewrites are safe and measure it: build each
    # file's object with and without its rewrite and compare `.text` plus
    # relocations. Relocations matter for the reason twin_backfill documents --
    # a `bl target` is placeholder zeroes in the object, and the callee lives
    # only in the relocation. Measured: 82 of 93 files are byte-identical, 11
    # are not.
    import re as _re

    def _image(stem):
        o = f"build/src/{stem}.o"
        d = gitops.run(["./container.sh", "arm-none-eabi-objdump", "-s", "-j", ".text", o]).stdout
        b = "".join(_re.findall(r"^\s+[0-9a-f]+\s((?:[0-9a-f]{2,8}\s){1,4})", d, _re.M))
        r = gitops.run(["./container.sh", "arm-none-eabi-objdump", "-r", "-j", ".text", o]).stdout
        return b + "|" + r

    kept, skipped = [], []
    with gitops.repo_lock(what="readable_entity per-file verify"):
        for p, (new, done) in plan.items():
            stem, pre = p.stem, p.read_text()
            objs = [Path(f"build/src/{stem}.o"), Path(f"build/src/{stem}.s")]
            try:
                for f in objs:
                    if f.exists():
                        f.unlink()
                gitops.run(["./container.sh", "make", f"build/src/{stem}.o"])
                before = _image(stem)
                p.write_text(new)
                for f in objs:
                    if f.exists():
                        f.unlink()
                gitops.run(["./container.sh", "make", f"build/src/{stem}.o"])
                if _image(stem) == before:
                    kept.append((p, done))
                    continue
                skipped.append((stem, done))
            except Exception:
                skipped.append((stem, done))
            p.write_text(pre)

    n_kept = sum(len(d) for _p, d in kept)
    print(f"\nbyte-identical: {n_kept} function(s) in {len(kept)} file(s)")
    print(f"skipped (object changed): {len(skipped)} file(s)"
          + (f" -- {', '.join(s for s, _ in skipped[:6])}" if skipped else ""))
    if not kept:
        return 1
    print("\nConfirming with a from-scratch build...")

    with gitops.repo_lock(what="readable_entity final verify"):
        shutil.rmtree(REPO / "build", ignore_errors=True)
        r = gitops.run(["./container.sh", "make"])
        rom = [l for l in r.stdout.splitlines() if "mlss.gba" in l]
        line = (rom[-1:] or ["FAILED"])[0]
        print("ROM:", line)
        ok, detail = gitops.layout_ok()
        print("layout:", "ok" if ok else detail[:200])
        if "OK" not in line or not ok:
            print("\nREVERTING -- the ROM did not reproduce.")
            gitops.run(["git", "checkout", "--", "src/"])
            return 1
    print("\nByte-identical. The C says what it means now.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
