#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815928C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815928C.s\"");
#else
void sub_815928C(void)
{
    u16 r2;
    u16 *r0;
    u32 *r1;
    u16 r4;
    u16 r3;
    
    r0 = (u16 *)0x04000006;
    r2 = *r0;
    r0 = (u16 *)0x04000018;
    *r0 = 0;
    r0 += 1;
    *r0 = 0x80 - r2;
    r0 += 0x13;
    r1 = (u32 *)0x03001014;
    r3 = *(u16 *)r1;
    r1 = (u32 *)0x03001018;
    r0 = (u16 *)r1;
    r1 = (u32 *)0x00001CC4;
    r0 += (u16)r1;
    r1 = (u32 *)r0;
    r0 = (u16 *)r1;
    if (*r0 & 0x04)
    {
        r4 = 0xE6 << 1;
        r0 = (u16 *)(r3 + r4);
        r0 += (r2 << 1);
        r1 = (u32 *)r0;
        r0 = (u16 *)r1;
        *r1 = *r0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81592EC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
