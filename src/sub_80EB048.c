#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EB048 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80EB048(s32 arg0, s32 arg1, s32 *arg2)
{
  s8 *new_var;
  s32 new_var2;
  new_var = (s8 *) (*((void **) 0x03000FB8));
  new_var2 = *arg2;
  *((s8 *) (new_var + 0x32)) = (s8) new_var2;
  return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EB05C.s\"");
#else
s32 sub_80E9330(void *, u16);                   /* extern */

s32 sub_80EB05C(s32 arg0, void *arg1, void *arg2, void *arg3) {
    s32 temp_r1_9;

    temp_r1_9 = (*(s32 *)((s8 *)(arg3) + (0)));
    switch (temp_r1_9) {                            /* irregular */
    case 0:
        sub_80E9330(arg1, (u16) (*(s32 *)((s8 *)(arg3) + (4))));
block_6:
    default:
        return 1;
    case 1:
        if ((s32) ((*(u8 *)((s8 *)(((*(s32 *)((s8 *)(arg1) + (4))) + (0x4C * (*(s32 *)((s8 *)(arg3) + (4)))))) + (0x42))) << 0x1D) >= 0) {
            (*(s32 *)((s8 *)(arg2) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (0x14)));
            return 0;
        }
        goto block_6;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EB09C.s\"");
#else
s32 sub_80E6E68(void *);                        /* extern */
s32 sub_80E6FB8(void *, u16);                   /* extern */
s32 sub_80E7118(void *, u32);                   /* extern */

s32 sub_80EB09C(s32 arg0, void *arg1, s32 *arg3) {
    s32 temp_r1_9;

    temp_r1_9 = *arg3;
    if (temp_r1_9 <= 4) {
        sub_80E6FB8(arg1, (u16) temp_r1_9);
        sub_80E7118(arg1, (u32) (0x01000000 << *arg3) >> 0x18);
    } else {
        sub_80E6E68(arg1);
        sub_80E7118(arg1, (u32) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg1) + (4)))) + (0x1B3))));
    }
    (*(s8 *)((s8 *)(*(void **)0x03000FB8) + (0x31))) = 0;
    return 1;
}
#endif
