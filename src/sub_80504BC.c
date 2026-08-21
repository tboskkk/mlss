#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80504BC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80504BC.s\"");
#else
s32 init_fobj_803FEB8();                        /* extern */
s32 sub_80FB448(u8, s32, void *);               /* extern */

void *sub_80504BC(void *arg0, u8 arg3, s32 arg4) {
    init_fobj_803FEB8();
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDBFC8;
    sub_80FB448(arg3, arg4, arg0);
    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x20C))));
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) (-3 & (*(u8 *)((s8 *)(arg0) + (0x20F))));
    (*(s32 *)((s8 *)(arg0) + (0x344))) = arg4;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050518.s\"");
#else
#error "TODO: write sub_8050518 to match asm/nonmatching/sub_8050518.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050554.s\"");
#else
#error "TODO: write sub_8050554 to match asm/nonmatching/sub_8050554.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050584.s\"");
#else
#error "TODO: write sub_8050584 to match asm/nonmatching/sub_8050584.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80505C4.s\"");
#else
#error "TODO: write sub_80505C4 to match asm/nonmatching/sub_80505C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80505F4.s\"");
#else
#error "TODO: write sub_80505F4 to match asm/nonmatching/sub_80505F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805062C.s\"");
#else
#error "TODO: write sub_805062C to match asm/nonmatching/sub_805062C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805065C.s\"");
#else
#error "TODO: write sub_805065C to match asm/nonmatching/sub_805065C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805068C.s\"");
#else
#error "TODO: write sub_805068C to match asm/nonmatching/sub_805068C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80506D0.s\"");
#else
#error "TODO: write sub_80506D0 to match asm/nonmatching/sub_80506D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050710.s\"");
#else
#error "TODO: write sub_8050710 to match asm/nonmatching/sub_8050710.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050740.s\"");
#else
#error "TODO: write sub_8050740 to match asm/nonmatching/sub_8050740.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050774.s\"");
#else
#error "TODO: write sub_8050774 to match asm/nonmatching/sub_8050774.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80507A4.s\"");
#else
#error "TODO: write sub_80507A4 to match asm/nonmatching/sub_80507A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80507E0.s\"");
#else
#error "TODO: write sub_80507E0 to match asm/nonmatching/sub_80507E0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050850.s\"");
#else
#error "TODO: write sub_8050850 to match asm/nonmatching/sub_8050850.s, then delete this #error"
#endif
