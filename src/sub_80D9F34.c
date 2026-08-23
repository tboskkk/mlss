#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D9F34 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();
void sub_80DA098(void *arg0);

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9F34.s\"");
#else
extern s32 sub_80DA0E0;

void sub_80D9F34(void *arg0) {
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA0E0;
    }
}
#endif

s32 sub_8086858(void *, s32);                   /* extern */
extern s32 sub_80D9E34;
void sub_80D9F50(void *arg0) {
    s32 temp_r5_16;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r5_16 = (*(s32 *)((s8 *)(arg0) + (0xA8)));
        if (temp_r5_16 != 0) {
            sub_8082E1C(arg0, 0xA, 0, 0);
        } else {
            sub_8082E1C(arg0, 0xB, 0, 0);
            sub_8086858(arg0, 0x13CA);
            (*(s32 **)((s8 *)(arg0) + (0x5C))) = &sub_80D9E34;
            (*(s32 *)((s8 *)(arg0) + (0x54))) = temp_r5_16;
        }
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x18;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80DA098;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9FB0.s\"");
#else
s32 sub_807FB64(void *);                        /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_80DA100;

void sub_80D9FB0(void *arg0) {
    void *temp_r1_17;
    void *temp_r2_19;
    void *temp_r2_8;

    temp_r2_8 = (*(void **)((s8 *)(arg0) + (8)));
    if (8 & (*(u8 *)((s8 *)(temp_r2_8) + (0x12)))) {
        sub_807FB64(temp_r2_8);
        temp_r1_17 = arg0 + 0x84;
        temp_r2_19 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((*(s32 *)((s8 *)(temp_r2_19) + (0xD8))) + 0x2000);
        (*(s32 *)((s8 *)(temp_r1_17) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_19) + (0xDC)));
        (*(s32 *)((s8 *)((temp_r1_17 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_19) + (0xE0)));
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
        (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x200;
        (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
        sub_8085B38(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA100;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA024.s\"");
#else
s32 sub_807FB64(void *);                        /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_80DA140;

void sub_80DA024(void *arg0) {
    void *temp_r1_17;
    void *temp_r2_19;
    void *temp_r2_8;

    temp_r2_8 = (*(void **)((s8 *)(arg0) + (8)));
    if (8 & (*(u8 *)((s8 *)(temp_r2_8) + (0x12)))) {
        sub_807FB64(temp_r2_8);
        temp_r1_17 = arg0 + 0x84;
        temp_r2_19 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((*(s32 *)((s8 *)(temp_r2_19) + (0xD8))) + 0x2000);
        (*(s32 *)((s8 *)(temp_r1_17) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_19) + (0xDC)));
        (*(s32 *)((s8 *)((temp_r1_17 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_19) + (0xE0)));
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
        (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x200;
        (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
        sub_8085B38(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA140;
    }
}
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DA180;
void sub_80DA098(void *arg0)
{
  u16 temp_r0_11;
  void *temp_r2_25;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  if (((s32) ((temp_r0_11 << 8) << 8)) < 0)
  {
    play_sfx_80195B4(0x38, -1);
    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_25 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_25) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_25) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DA180;
  }
}
