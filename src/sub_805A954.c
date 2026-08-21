#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805A954 needs.

asm_unified(".include \"asm/macros.inc\"");

u16* sub_805A954(u16* param_1, u16 param_2, u16 param_3) {
    param_1[0x10] = param_2;
    param_1[0x11] = param_3;
    return param_1;
}

void sub_805A95C(void *arg0) {
    (*(s16 *)((s8 *)((void *)0x02000010) + (0))) = (s16) (0x1FF & (*(u16 *)((s8 *)(arg0) + (0x30))));
    *(s16 *)0x02000014 = 0x1FF & (*(u16 *)((s8 *)(arg0) + (0x32)));
    (*(s16 *)((s8 *)((void *)0x02000010) + (2))) = (s16) (0xFF & (*(u16 *)((s8 *)(arg0) + (0x34))));
    *(s16 *)0x02000016 = 0xFF & (*(u16 *)((s8 *)(arg0) + (0x36)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A99C.s\"");
#else
#error "TODO: write sub_805A99C to match asm/nonmatching/sub_805A99C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805ABE8.s\"");
#else
#error "TODO: write sub_805ABE8 to match asm/nonmatching/sub_805ABE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805AC98.s\"");
#else
#error "TODO: write sub_805AC98 to match asm/nonmatching/sub_805AC98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805AEC8.s\"");
#else
#error "TODO: write sub_805AEC8 to match asm/nonmatching/sub_805AEC8.s, then delete this #error"
#endif
