#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8092E04 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092E04.s\"");
#else
extern s32 sub_808DD2C;
extern s32 sub_8092F68;

s32 sub_8092E04(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8092F68;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092E58.s\"");
#else
#error "TODO: write sub_8092E58 to match asm/nonmatching/sub_8092E58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092EA0.s\"");
#else
#error "TODO: write sub_8092EA0 to match asm/nonmatching/sub_8092EA0.s, then delete this #error"
#endif
