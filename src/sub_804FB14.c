#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804FB14 needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_804FB14(u32* param_1) {
    param_1[0x06] = param_1[0x02];
    param_1[0x07] = param_1[0x03];
    param_1[0x08] = param_1[0x04];
    param_1[0x09] = param_1[0x05];
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FB28.s\"");
#else
u32 sub_804FB28(u32 r0, u32 r1) {
    u32 r2 = 0x07;
    r1 &= r2;
    u8 r3 = *(u8*)r0;
    r2 = 0x08;
    r2 = -r2;
    r2 &= r3;
    r2 |= r1;
    *(u8*)r0 = r2;
    return r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FB3C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FB64.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FBDC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
