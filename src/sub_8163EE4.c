#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163EE4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163EE4.s\"");
#else
void sub_8163EE4(u32 r0, u32 r1)
{
    u32 *r3;
    u32 *r4;
    u32 r2;
    u32 r5;

    r5 = r0;
    r3 = (u32 *)0x03001028;
    r2 = *r3;
    r0 = 0x41C64E6D * r2 + 0x3039;
    *r3 = r0;
    r4 = (u32 *)0x03001038;
    r2 = 0x08198350 - 0x08198220;
    r3 = (u32 *)0x03001038;
    r3 = r3 + r2;
    r0 = (r0 << 1) >> 0x11;
    r2 = r5 - 1;
    r1 = r1 - r2;
    ((void (*)(u32, u32))r3)(r0, r1);
    r0 = r0 + r5;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163F30.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
