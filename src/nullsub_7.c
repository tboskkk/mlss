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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819AFA8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
