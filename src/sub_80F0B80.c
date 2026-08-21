#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0B80 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80F0B80(void)
{
  void *temp_r2_7;
  temp_r2_7 = *((void **) 0x03000FD0);
  *((u8 *) (((s8 *) temp_r2_7) + 0x55F)) = (u8) (((-0x61) & (*(((s8 *) temp_r2_7) + 0x55F))) | 0x20);
  return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0BA4.s\"");
#else
s32 sub_805C78C(s32, u8, u8);                   /* extern */

s32 sub_80F0BA4(void *arg0, void *arg2) {
    sub_805C78C((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0x304))), (*(u8 *)((s8 *)(arg2) + (0))), (*(u8 *)((s8 *)(arg2) + (4))));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0BC0.s\"");
#else
s32 sub_805C7B4(s32, u8);                       /* extern */

s32 sub_80F0BC0(void *arg0, u8 *arg2) {
    sub_805C7B4((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0x304))), *arg2);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0BD8.s\"");
#else
s32 sub_805B490(s32, u16);                      /* extern */

s32 sub_80F0BD8(void *arg0, u16 *arg2) {
    sub_805B490((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0x304))), *arg2);
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0BF0.s\"");
#else
s32 sub_805B618(s32, u16);                      /* extern */

s32 sub_80F0BF0(void *arg0, u16 *arg2) {
    sub_805B618((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0x304))), *arg2);
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0C08.s\"");
#else
s32 sub_80F0C08(s32 arg0, void *arg1, void *arg2) {
    s32 var_r6_16;
    u8 var_r0_75;
    void *temp_r3_20;
    void *temp_r3_59;
    void *var_r12_15;

    var_r12_15 = *(void **)0x03000FD0 + 0x2A0;
    var_r6_16 = 0;
loop_1:
    temp_r3_20 = *(void **)0x03000FD0;
    if (((s32) ((u32) ((*(u8 *)((s8 *)(temp_r3_20) + (0x55B))) << 0x1B) >> 0x1C) >> var_r6_16) & 1) {
        if (arg1 != NULL) {
            if (((*(u8 *)((s8 *)(arg1) + (0x54))) + 4) == (*(u8 *)((s8 *)(var_r12_15) + (0x1C)))) {
                goto block_11;
            }
            goto block_6;
        }
        if ((*(u8 *)((s8 *)(temp_r3_20) + (0x548))) != (*(u8 *)((s8 *)(var_r12_15) + (0x1C)))) {
            goto block_6;
        }
        goto block_11;
    }
block_6:
    temp_r3_59 = *(void **)0x03000FD0;
    if (((s32) ((u32) ((*(u8 *)((s8 *)(temp_r3_59) + (0x55B))) << 0x1B) >> 0x1C) >> (var_r6_16 + 1)) & 1) {
        if (arg1 != NULL) {
            var_r0_75 = (*(u8 *)((s8 *)(arg1) + (0x54))) + 4;
        } else {
            var_r0_75 = (*(u8 *)((s8 *)(temp_r3_59) + (0x548)));
        }
        if (var_r0_75 == (*(u8 *)((s8 *)((var_r12_15 + 0x20)) + (0x1C)))) {
block_11:
            (*(s32 *)((s8 *)(arg2) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (0x14)));
            return 0;
        }
        goto block_12;
    }
block_12:
    var_r12_15 += 0x40;
    var_r6_16 += 2;
    if (var_r6_16 > 3) {
        return 1;
    }
    goto loop_1;
}
#endif
