#include "global.h"
#include "common.h"

asm_unified(".include \"asm/macros.inc\"");

// First function extracted from the middle of a raw blob rather than off
// the front of one (see split_func.py's mid-file path). It's deliberately
// the most trivial possible target -- retail is a bare `bx lr` plus two
// bytes of alignment padding -- chosen so that if the new blob-splitting
// layout surgery got the byte order wrong, the ROM hash would fail loudly
// on something with no other moving parts to blame.
void nullsub_7(void) {
}

ASM_FUNC("asm/nonmatching/sub_819AFA8.s", void sub_819AFA8(void *arg0));