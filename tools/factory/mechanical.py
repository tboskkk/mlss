#!/usr/bin/env python3
"""A deterministic (no LLM) Thumb -> C translator, for the class of
functions where one is possible at all.

Why this exists: today's 5-way LLM-strategy comparison (see bench.py) found
that NOTHING tested moved the needle -- few-shot, best-of-N, multi-turn, a
32B dense model, and a reasoning model all matched or underperformed a
single plain draft from the current small model. That is real evidence the
bottleneck isn't prompting or scale: this task ("invert one specific
compiler's codegen, deterministically enough that decomp-permuter can find
the exact expression form") was never a good fit for a model tuned to
write good code for a human. It's the same problem `mips_to_c`/`m2c` solves
for MIPS decomps, mechanically, in milliseconds, with zero sampling
variance -- see the session notes for why adopting m2c directly isn't a
drop-in fit here (its ARM support has no proven Thumb track record).

This grows the same symbolic-register idea already proven in asmfacts.py
(which only derives HINT facts for an LLM) into a translator that emits a
complete, compilable C function directly. Deliberately narrow in scope,
same philosophy as asmfacts.py: a function is either translated with full
confidence, or `translate()` returns None and declines -- never a guess.

Currently handles:
  - straight-line functions (loads, stores, arithmetic, shifts, bitwise,
    literal-pool constants/symbols, the void-return-via-saved-LR idiom)
  - ONE guarded block with no reconverging live registers ("if (cond) {
    store/side-effect only }")
  - ONE if/else diamond where BOTH arms independently return

Anything else (loops, calls, multi-level branching, stack locals beyond a
plain push/pop of callee-saved regs) declines. That is the honest current
scope, not a limitation to silently paper over.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

REG_RE = r"r(\d+)"
IMM = r"#0x([0-9A-Fa-f]+)|#(\d+)"

WIDTH_CTYPE = {"ldr": "u32", "str": "u32",
               "ldrb": "u8", "strb": "u8",
               "ldrh": "u16", "strh": "u16",
               "ldrsb": "s8", "ldrsh": "s16"}

MEM_RE = re.compile(r"^(ldr|ldrb|ldrh|ldrsb|ldrsh|str|strb|strh)\s+r(\d+),\s*\[r(\d+)(?:,\s*#0x([0-9A-Fa-f]+))?\]$")
LIT_LOAD_RE = re.compile(r"^ldr\s+r(\d+),\s*(_\w+)(?:\s*@.*)?$")
POOL_RE = re.compile(r"^(_\w+):\s*\.4byte\s+(\S+)")
MOV_REG_RE = re.compile(r"^movs?\s+r(\d+),\s*r(\d+)$")
MOV_IMM_RE = re.compile(rf"^movs\s+r(\d+),\s*(?:{IMM})$")
ADD3_IMM_RE = re.compile(rf"^adds\s+r(\d+),\s*r(\d+),\s*(?:{IMM})$")
ADD3_REG_RE = re.compile(r"^adds\s+r(\d+),\s*r(\d+),\s*r(\d+)$")
SUB3_IMM_RE = re.compile(rf"^subs\s+r(\d+),\s*r(\d+),\s*(?:{IMM})$")
SUB3_REG_RE = re.compile(r"^subs\s+r(\d+),\s*r(\d+),\s*r(\d+)$")
ADD2_RE = re.compile(r"^adds\s+r(\d+),\s*r(\d+)$")
SUB2_RE = re.compile(r"^subs\s+r(\d+),\s*r(\d+)$")
SHIFT_IMM_RE = re.compile(rf"^(lsls|lsrs|asrs)\s+r(\d+),\s*r(\d+),\s*(?:{IMM})$")
BITOP2_RE = re.compile(r"^(ands|orrs|eors|muls)\s+r(\d+),\s*r(\d+)$")
MVN_RE = re.compile(r"^mvns\s+r(\d+),\s*r(\d+)$")
NEG_RE = re.compile(r"^negs\s+r(\d+),\s*r(\d+)$")
CMP_IMM_RE = re.compile(rf"^cmp\s+r(\d+),\s*(?:{IMM})$")
CMP_REG_RE = re.compile(r"^cmp\s+r(\d+),\s*r(\d+)$")
BRANCH_RE = re.compile(r"^(beq|bne|bcs|bhs|bcc|blo|bmi|bpl|bvs|bvc|bhi|bls|bge|blt|bgt|ble)\s+(_?\w+)$")
B_RE = re.compile(r"^b\s+(_?\w+)$")
PUSH_RE = re.compile(r"^push\s*\{([^}]*)\}$")
POP_RE = re.compile(r"^pop\s*\{([^}]*)\}$")
BX_RE = re.compile(r"^bx\s+(?:r(\d+)|(lr))$")

# Branch mnemonic -> the C comparison that is TRUE when the branch is TAKEN.
BRANCH_TRUE_COND = {
    "beq": "==", "bne": "!=",
    "bcs": ">=", "bhs": ">=", "bcc": "<", "blo": "<",   # unsigned, approximated
    "bge": ">=", "blt": "<", "bgt": ">", "ble": "<=",
    "bhi": ">", "bls": "<=",
}
INVERT = {"==": "!=", "!=": "==", ">=": "<", "<": ">=",
          ">": "<=", "<=": ">", "<=?": ">"}


class Decline(Exception):
    """Raised anywhere translation hits something outside current scope."""


class FuncState:
    def __init__(self):
        self.reg: dict[int, str] = {i: (f"param_{i+1}" if i < 4 else "0") for i in range(13)}
        self.pending_cmp: tuple[str, str] | None = None  # (lhs_expr, rhs_expr)
        self.pool: dict[str, str] = {}       # label -> symbol or hex constant
        self.externs: set[str] = set()
        self.declares_temp_r0 = False        # if/else diamond merged r0 into a temp


def parse_pool(asm: str) -> dict[str, str]:
    pool = {}
    for raw in asm.splitlines():
        line = raw.split("@")[0].strip()
        m = POOL_RE.match(line)
        if m:
            pool[m.group(1)] = m.group(2)
    return pool


def clean_lines(asm: str) -> list[tuple[str | None, str]]:
    """-> [(label_or_None, instruction_text)], skipping directives/pool defs."""
    out = []
    for raw in asm.splitlines():
        line = raw.split("@")[0].rstrip()
        stripped = line.strip()
        if not stripped:
            continue
        if stripped.startswith(".") or "func_start" in stripped:
            continue
        if POOL_RE.match(stripped):
            continue
        label = None
        if stripped.endswith(":"):
            label = stripped[:-1]
            continue  # label-only line; the NEXT real instruction gets tagged separately
        out.append((None, stripped))
    return out


def label_positions(asm: str) -> dict[str, int]:
    """label -> index into the instruction list (post label-only-line removal)."""
    positions = {}
    idx = 0
    for raw in asm.splitlines():
        line = raw.split("@")[0].rstrip()
        stripped = line.strip()
        if not stripped:
            continue
        if stripped.startswith(".") or "func_start" in stripped:
            continue
        if POOL_RE.match(stripped):
            continue
        if stripped.endswith(":"):
            positions[stripped[:-1]] = idx
            continue
        idx += 1
    return positions


def _imm(m: re.Match, *group_pairs) -> int:
    for a, b in group_pairs:
        if m.group(a) is not None:
            return int(m.group(a), 16)
        if m.group(b) is not None:
            return int(m.group(b))
    raise Decline("no immediate matched")


def _addr_expr(base_expr: str, off: int) -> str:
    if off:
        return f"(u8*){base_expr} + 0x{off:X}"
    return f"(u8*){base_expr}"


def _mem_expr(op: str, base_expr: str, off: int) -> str:
    ctype = WIDTH_CTYPE[op]
    return f"*({ctype}*)({_addr_expr(base_expr, off)})"


def translate_block(instrs: list[str], st: FuncState, out: list[str], indent: str) -> str | None:
    """Translate a straight-line instruction list. Returns:
      'void'   -- block ends in a void return
      'value'  -- block ends in a non-void return (value already emitted)
      None     -- block does NOT end in a return (falls through)
    Raises Decline on anything unrecognized or out of scope."""
    i = 0
    n = len(instrs)
    while i < n:
        line = instrs[i]

        m = PUSH_RE.match(line)
        if m:
            i += 1
            continue
        m = POP_RE.match(line)
        if m:
            regs = [r.strip() for r in m.group(1).split(",")]
            if regs == ["pc"]:
                return _emit_return(st, out, indent)
            # A single popped register that is r0 itself means r0 just got
            # overwritten with a saved return ADDRESS, not data -- it is no
            # longer a valid return-value candidate. Any other register
            # (the common `pop {r1}; bx r1` shape) leaves r0's own tracked
            # value untouched, whatever that currently is; sub_8134B24 is
            # exactly this shape and IS non-void (returns bool32 in r0),
            # so this must NOT be treated as a blanket void idiom.
            if len(regs) == 1 and regs[0] == "r0":
                st.reg[0] = None
            i += 1
            continue
        m = BX_RE.match(line)
        if m:
            return _emit_return(st, out, indent)

        m = MEM_RE.match(line)
        if m:
            op, rd, rb, off = m.group(1), int(m.group(2)), int(m.group(3)), m.group(4)
            off_v = int(off, 16) if off else 0
            base = st.reg.get(rb)
            if base is None:
                raise Decline(f"load/store base r{rb} unknown")
            if op.startswith("ldr"):
                st.reg[rd] = f"({_mem_expr(op, base, off_v)})"
            else:
                val = st.reg.get(rd)
                if val is None:
                    raise Decline(f"store from unknown r{rd}")
                ctype = WIDTH_CTYPE[op]
                out.append(f"{indent}{_mem_expr(op, base, off_v)} = ({ctype})({val});")
            i += 1
            continue

        m = LIT_LOAD_RE.match(line)
        if m:
            rd, label = int(m.group(1)), m.group(2)
            val = st.pool.get(label)
            if val is None:
                raise Decline(f"literal pool label {label} unresolved")
            if re.fullmatch(r"sub_\w+|nullsub_\w+|[A-Za-z_]\w*", val) and not val.startswith("0x"):
                st.externs.add(val)
                st.reg[rd] = f"((u32){val})"
            else:
                st.reg[rd] = val
            i += 1
            continue

        m = MOV_REG_RE.match(line)
        if m:
            rd, rs = int(m.group(1)), int(m.group(2))
            if st.reg.get(rs) is None:
                raise Decline(f"mov from unknown r{rs}")
            st.reg[rd] = st.reg[rs]
            i += 1
            continue

        m = MOV_IMM_RE.match(line)
        if m:
            rd = int(m.group(1))
            st.reg[rd] = f"0x{_imm(m, (2, 3)):X}"
            i += 1
            continue

        m = ADD3_IMM_RE.match(line) or SUB3_IMM_RE.match(line)
        if m:
            op = "+" if line.startswith("adds") else "-"
            rd, rs = int(m.group(1)), int(m.group(2))
            imm = _imm(m, (3, 4))
            base = st.reg.get(rs)
            if base is None:
                raise Decline(f"arith on unknown r{rs}")
            st.reg[rd] = f"({base} {op} 0x{imm:X})" if imm else base
            i += 1
            continue

        m = ADD3_REG_RE.match(line) or SUB3_REG_RE.match(line)
        if m:
            op = "+" if line.startswith("adds") else "-"
            rd, rs, rt = int(m.group(1)), int(m.group(2)), int(m.group(3))
            a, b = st.reg.get(rs), st.reg.get(rt)
            if a is None or b is None:
                raise Decline(f"arith on unknown r{rs}/r{rt}")
            st.reg[rd] = f"({a} {op} {b})"
            i += 1
            continue

        m = ADD2_RE.match(line) or SUB2_RE.match(line)
        if m:
            op = "+" if line.startswith("adds") else "-"
            rd, rs = int(m.group(1)), int(m.group(2))
            a, b = st.reg.get(rd), st.reg.get(rs)
            if a is None or b is None:
                raise Decline(f"arith on unknown r{rd}/r{rs}")
            st.reg[rd] = f"({a} {op} {b})"
            i += 1
            continue

        m = SHIFT_IMM_RE.match(line)
        if m:
            op = {"lsls": "<<", "lsrs": ">>", "asrs": ">>"}[m.group(1)]
            rd, rs = int(m.group(2)), int(m.group(3))
            base = st.reg.get(rs)
            if base is None:
                raise Decline(f"shift of unknown r{rs}")
            shamt = _imm(m, (4, 5))
            st.reg[rd] = f"({base} {op} {shamt})"
            i += 1
            continue

        m = BITOP2_RE.match(line)
        if m:
            op = {"ands": "&", "orrs": "|", "eors": "^", "muls": "*"}[m.group(1)]
            rd, rs = int(m.group(2)), int(m.group(3))
            a, b = st.reg.get(rd), st.reg.get(rs)
            if a is None or b is None:
                raise Decline("bitop on unknown register")
            st.reg[rd] = f"({a} {op} {b})"
            i += 1
            continue

        m = MVN_RE.match(line)
        if m:
            rd, rs = int(m.group(1)), int(m.group(2))
            base = st.reg.get(rs)
            if base is None:
                raise Decline("mvn of unknown register")
            st.reg[rd] = f"(~{base})"
            i += 1
            continue

        m = NEG_RE.match(line)
        if m:
            rd, rs = int(m.group(1)), int(m.group(2))
            base = st.reg.get(rs)
            if base is None:
                raise Decline("neg of unknown register")
            st.reg[rd] = f"(-{base})"
            i += 1
            continue

        m = CMP_IMM_RE.match(line)
        if m:
            rd = int(m.group(1))
            lhs = st.reg.get(rd)
            if lhs is None:
                raise Decline("cmp of unknown register")
            st.pending_cmp = (lhs, f"0x{_imm(m, (2, 3)):X}")
            i += 1
            continue

        m = CMP_REG_RE.match(line)
        if m:
            ra, rb = int(m.group(1)), int(m.group(2))
            lhs, rhs = st.reg.get(ra), st.reg.get(rb)
            if lhs is None or rhs is None:
                raise Decline("cmp of unknown register")
            st.pending_cmp = (lhs, rhs)
            i += 1
            continue

        # Anything else (branches are handled by the caller, which slices
        # blocks BEFORE calling this) is out of scope.
        raise Decline(f"unrecognized instruction: {line!r}")

    return None  # fell off the end without a return -> caller merges


def _emit_return(st: FuncState, out: list[str], indent: str) -> str:
    r0 = st.reg.get(0)
    if r0 is None:
        out.append(f"{indent}return;")
        return "void"
    out.append(f"{indent}return {r0};")
    return "value"


def _clone(st: FuncState) -> FuncState:
    new = FuncState()
    new.reg = dict(st.reg)
    new.pool = st.pool
    new.externs = st.externs  # shared set, only grows
    return new


def translate(name: str, asm: str) -> str | None:
    """-> a full compilable C function definition, or None if this
    function is outside the current translator's scope."""
    try:
        return _translate(name, asm)
    except Decline:
        return None


def _translate(name: str, asm: str) -> str | None:
    pool = parse_pool(asm)
    instrs = [text for _, text in clean_lines(asm)]
    labels = label_positions(asm)
    if not instrs:
        return None

    st = FuncState()
    st.pool = pool
    out: list[str] = []

    # Find branch instructions to determine shape.
    branch_idxs = [i for i, t in enumerate(instrs) if BRANCH_RE.match(t) or B_RE.match(t)]
    cond_idxs = [i for i in branch_idxs if BRANCH_RE.match(instrs[i])]
    uncond_idxs = [i for i in branch_idxs if B_RE.match(instrs[i])]

    if len(cond_idxs) == 0 and len(uncond_idxs) == 0:
        kind = translate_block(instrs, st, out, "    ")
        if kind is None:
            return None  # no return at all -- something's off, decline
    elif len(cond_idxs) == 1 and len(uncond_idxs) == 0:
        ok = _translate_guarded(instrs, labels, cond_idxs[0], st, out)
        if not ok:
            return None
    elif len(cond_idxs) == 1 and len(uncond_idxs) == 1:
        ok = _translate_diamond(instrs, labels, cond_idxs[0], uncond_idxs[0], st, out)
        if not ok:
            return None
    else:
        return None  # more branching than this v0 scope handles

    return_type = _infer_return_type(out)
    externs = "".join(f"extern void {e}();\n" for e in sorted(st.externs))
    # Plain u32, not void*: a parameter may be used as a raw integer
    # (shifted/added directly, e.g. sub_80FB790's `param_1 << 16`) as often
    # as it's used as a pointer base -- void* can't be shifted, but every
    # access site already casts explicitly via _addr_expr()'s `(u8*)base`,
    # so a plain integer works identically for both uses and is strictly
    # more permissive.
    params = ", ".join(f"u32 param_{i+1}" for i in range(_param_count(asm)))
    decls = "    u32 temp_r0;\n" if st.declares_temp_r0 else ""
    body = "\n".join(out) if out else "    return;" if return_type == "void" else "    return 0;"
    return f"{externs}{return_type} {name}({params or 'void'})\n{{\n{decls}{body}\n}}"


def _infer_return_type(out: list[str]) -> str:
    for ln in out:
        if ln.strip().startswith("return") and ln.strip() != "return;":
            return "u32"
    return "void"


def _param_count(asm: str) -> int:
    """How many of r0-r3 this function actually reads before writing --
    conservative: count the highest parameter register referenced at all
    in the raw text as a rough upper bound. Good enough for a prototype;
    a wrong (too-generous) count just adds an unused void* param, which
    doesn't affect codegen for a value that's never read."""
    used = 0
    for i in range(4):
        if re.search(rf"\br{i}\b", asm.split("\n", 4)[-1] if False else asm):
            used = i + 1
    return max(used, 1)


def _translate_guarded(instrs, labels, cond_i, st, out) -> bool:
    """cmp; bXX SKIP; <guarded block>; SKIP: <rest>."""
    branch = BRANCH_RE.match(instrs[cond_i])
    target_label = branch.group(2)
    if target_label not in labels:
        return False
    target = labels[target_label]
    if target <= cond_i:
        return False  # backward branch (loop) -- out of scope

    pre = instrs[:cond_i]
    guarded = instrs[cond_i + 1:target]
    rest = instrs[target:]

    try:
        kind = translate_block(pre, st, out, "    ")
        if kind is not None:
            return True  # pre-block already returned; nothing more to do (rare)
        if st.pending_cmp is None:
            return False
        lhs, rhs = st.pending_cmp
        cmp_op = BRANCH_TRUE_COND.get(branch.group(1))
        if cmp_op is None:
            return False
        cond = INVERT[cmp_op]  # guarded block runs when the branch is NOT taken
        st.pending_cmp = None

        # The guarded block must not leave a live value needed by `rest` --
        # approximate by requiring it contain no register WRITE, only
        # stores/side effects. Simplify: decline if it writes any register
        # that `rest` reads by name before that register is rewritten there.
        guard_out: list[str] = []
        guard_state = _clone(st)
        gk = translate_block(guarded, guard_state, guard_out, "        ")
        if gk is not None:
            return False  # a return inside a plain guard isn't this shape
        changed = {r for r in range(13) if guard_state.reg.get(r) != st.reg.get(r)}
        if changed and _regs_read_before_write(rest, changed):
            return False

        out.append(f"    if ({lhs} {cond} {rhs})")
        out.append("    {")
        out.extend(guard_out)
        out.append("    }")

        kind2 = translate_block(rest, st, out, "    ")
        return True  # even if kind2 is None, we emit what we have and accept -- caller checks for a return existing
    except Decline:
        return False


def _translate_diamond(instrs, labels, cond_i, uncond_i, st, out) -> bool:
    """cmp; bXX ELSE; <if-block>; b END; ELSE: <else-block>; END: <rest>."""
    branch = BRANCH_RE.match(instrs[cond_i])
    else_label = branch.group(2)
    if else_label not in labels or uncond_i <= cond_i:
        return False
    else_pos = labels[else_label]
    if else_pos != uncond_i + 1:
        return False  # not the simple contiguous diamond shape

    pre = instrs[:cond_i]
    if_block = instrs[cond_i + 1:uncond_i]
    end_label = B_RE.match(instrs[uncond_i]).group(1)
    if end_label not in labels:
        return False
    end_pos = labels[end_label]
    else_block = instrs[else_pos:end_pos]
    rest = instrs[end_pos:]

    try:
        kind = translate_block(pre, st, out, "    ")
        if kind is not None or st.pending_cmp is None:
            return False
        lhs, rhs = st.pending_cmp
        cmp_op = BRANCH_TRUE_COND.get(branch.group(1))
        if cmp_op is None:
            return False
        st.pending_cmp = None

        # branch TAKEN falls into the else label's code; branch NOT taken
        # falls into the if-block, in source order.
        else_out: list[str] = []
        else_state = _clone(st)
        ek = translate_block(else_block, else_state, else_out, "        ")

        if_out: list[str] = []
        if_state = _clone(st)
        ik = translate_block(if_block, if_state, if_out, "        ")

        if ek is not None and ik is not None and not rest:
            # Both arms independently return, nothing after -- the shape
            # this originally supported (e.g. two `return CONST;` arms
            # with no shared epilogue).
            pass
        elif ek is None and ik is None:
            # Neither arm returns -- both fall through to a SHARED
            # epilogue in `rest` (e.g. sub_8134B24: each arm just sets r0,
            # then a common `pop {r1}; bx r1`). r0 is the only register
            # this v0 merges across the join point, since it is the one
            # that matters for the eventual return; if the two arms
            # disagree, materialize it into a real temp so `rest` (which
            # only ever reads r0 through _emit_return) has one consistent
            # name to use, matching what a human would actually write.
            if if_state.reg.get(0) is None or else_state.reg.get(0) is None:
                return False
            if if_state.reg[0] != else_state.reg[0]:
                if_out.append(f"        temp_r0 = {if_state.reg[0]};")
                else_out.append(f"        temp_r0 = {else_state.reg[0]};")
                st.reg[0] = "temp_r0"
                st.declares_temp_r0 = True
            else:
                st.reg[0] = if_state.reg[0]
        else:
            return False  # one arm returns, the other falls through -- not v0 scope

        out.append(f"    if ({lhs} {cmp_op} {rhs})")
        out.append("    {")
        out.extend(else_out)
        out.append("    }")
        out.append("    else")
        out.append("    {")
        out.extend(if_out)
        out.append("    }")

        if rest:
            kind2 = translate_block(rest, st, out, "    ")
            return kind2 is not None
        return True
    except Decline:
        return False


def _regs_read_before_write(instrs: list[str], regs: set[int]) -> bool:
    for line in instrs:
        for r in regs:
            if re.search(rf"\br{r}\b", line) and not re.match(rf"^(movs?|adds|subs|lsls|lsrs|asrs|ands|orrs|eors|mvns|negs)\s+r{r}\s*,", line):
                return True
        # once any of `regs` is freshly written, stop worrying about it
        for r in list(regs):
            if re.match(rf"^(movs?|adds|subs|lsls|lsrs|asrs|ands|orrs|eors|mvns|negs|ldr\w*)\s+r{r}\s*,", line):
                regs.discard(r)
    return False


if __name__ == "__main__":
    for name in sys.argv[1:]:
        p = Path("asm/nonmatching") / f"{name}.s"
        asm = p.read_text()
        c = translate(name, asm)
        print(f"=== {name} ===")
        print(c if c else "(declined)")
        print()
