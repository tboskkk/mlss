#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80C8744 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

extern s32 sub_80C26E4;
void sub_80C8744(void *arg0)
{
  int new_var2;
  s32 temp_r1_23;
  void *temp_r2_10;
  void *temp_r2_34;
  int new_var;
  void *temp_r4_12;
  new_var2 = -7;
  temp_r2_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r4_12 = temp_r2_10 + 8;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r4_12) + 8)))) + 0x12))))
  {
    temp_r1_23 = 6 & (*((u8 *) (((s8 *) temp_r2_10) + 0x7E)));
    new_var = 4;
    if ((temp_r1_23 == 2) || (temp_r1_23 == new_var))
    {
      sub_8082E1C(temp_r4_12, 3, 0x2063, 0);
      temp_r2_34 = *((void **) (((s8 *) temp_r4_12) + 8));
      temp_r2_10 = ((s8 *) temp_r2_34) + 0x12;
      *((u8 *) (((s8 *) temp_r2_34) + 0x12)) = (u8) ((new_var2 & (*((u8 *) temp_r2_10))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80C26E4;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C87A4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80C1CE4;

void sub_80C87A4(void *arg0) {
    s32 temp_r1_23;
    void *temp_r2_10;
    void *temp_r2_34;
    void *temp_r4_12;

    temp_r2_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)));
    temp_r4_12 = temp_r2_10 + 8;
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_12) + (8)))) + (0x12)))) {
        temp_r1_23 = 6 & (*(u8 *)((s8 *)(temp_r2_10) + (0x7E)));
        if ((temp_r1_23 == 2) || (temp_r1_23 == 4)) {
            sub_8082E1C(temp_r4_12, 8, 0x2034, 0);
            temp_r2_34 = (*(void **)((s8 *)(temp_r4_12) + (8)));
            (*(u8 *)((s8 *)(temp_r2_34) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_34) + (0x12)))) | 2);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80C1CE4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C8804.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80C88C8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
s32 sub_808862C(void *);                        /* extern */
extern s32 sub_80CCE4C;

void sub_80C88C8(void *arg0) {
    s32 temp_r2_109;
    s32 temp_r2_130;
    s32 temp_r2_145;
    s32 temp_r2_193;
    s32 temp_r5_61;
    s32 var_r0_155;
    s32 var_r0_165;
    s32 var_r0_175;
    s32 var_r0_70;
    s32 var_r0_80;
    s32 var_r0_90;
    void *temp_r0_39;
    void *temp_r1_18;
    void *temp_r1_43;
    void *temp_r2_121;
    void *temp_r2_204;
    void *temp_r3_152;
    void *temp_r3_67;
    void *temp_r4_16;
    void *temp_r4_40;
    void *temp_r6_42;
    void *temp_r7_45;

    (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0xE))) = 6;
    temp_r4_16 = *(void **)0x03000FD8;
    temp_r1_18 = *(void **)0x03000FF4;
    (*(u8 *)((s8 *)(temp_r4_16) + (0xA))) = (u8) ((0x3F & (*(u8 *)((s8 *)(temp_r4_16) + (0xA)))) | (((((u8) (*(u8 *)((s8 *)(temp_r1_18) + (0x46))) >> 3) & 1) + ((((u32) ((*(u16 *)((s8 *)(temp_r1_18) + (0x48))) << 0x16) >> 0x1B) & 1) * 2)) << 6));
    temp_r0_39 = *(void **)0x03000FD8;
    temp_r4_40 = (*(void **)((s8 *)(temp_r0_39) + (0x70)));
    temp_r6_42 = temp_r4_40 + 8;
    temp_r1_43 = (*(void **)((s8 *)(temp_r0_39) + (0x74)));
    temp_r7_45 = temp_r1_43 + 8;
    (*(s8 *)((s8 *)(temp_r1_43) + (0x7D))) = (s8) ((*(u8 *)((s8 *)(temp_r4_40) + (0x7D))) - 0x10);
    play_sfx_80195B4(0x53, -1);
    temp_r5_61 = 6 & (*(u8 *)((s8 *)(temp_r4_40) + (0x7E)));
    if ((temp_r5_61 == 2) || (temp_r5_61 == 4)) {
        temp_r3_67 = (*(void **)((s8 *)(temp_r6_42) + (0x28)));
        var_r0_70 = (*(s32 *)((s8 *)(temp_r3_67) + (0xD8)));
        if (var_r0_70 < 0) {
            var_r0_70 += 0xFF;
        }
        var_r0_80 = (*(s32 *)((s8 *)(temp_r3_67) + (0xDC)));
        if (var_r0_80 < 0) {
            var_r0_80 += 0xFF;
        }
        var_r0_90 = (*(s32 *)((s8 *)(temp_r3_67) + (0xE0)));
        if (var_r0_90 < 0) {
            var_r0_90 += 0xFF;
        }
        sub_808843C(temp_r6_42, (var_r0_70 >> 8) + 8, (var_r0_80 >> 8) + 0x10, var_r0_90 >> 8, -1);
        sub_80880C4(temp_r6_42, 0x200);
    }
    temp_r2_109 = 6 & (*(u8 *)((s8 *)(temp_r6_42) + (0x76)));
    if ((temp_r2_109 == 2) || (temp_r2_109 == 4)) {
        sub_8082E1C(temp_r6_42, 0, 0x2034, 0);
        temp_r2_121 = (*(void **)((s8 *)(temp_r6_42) + (8)));
        (*(u8 *)((s8 *)(temp_r2_121) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_121) + (0x12))));
    }
    temp_r2_130 = 6 & (*(u8 *)((s8 *)(temp_r6_42) + (0x76)));
    if ((temp_r2_130 == 2) || (temp_r2_130 == 4)) {
        (*(s32 *)((s8 *)(temp_r6_42) + (0x4C))) = 0;
        sub_808862C(temp_r6_42);
    }
    temp_r2_145 = 6 & (*(u8 *)((s8 *)(temp_r7_45) + (0x76)));
    if ((temp_r2_145 == 2) || (temp_r2_145 == 4)) {
        temp_r3_152 = (*(void **)((s8 *)(temp_r7_45) + (0x28)));
        var_r0_155 = (*(s32 *)((s8 *)(temp_r3_152) + (0xD8)));
        if (var_r0_155 < 0) {
            var_r0_155 += 0xFF;
        }
        var_r0_165 = (*(s32 *)((s8 *)(temp_r3_152) + (0xDC)));
        if (var_r0_165 < 0) {
            var_r0_165 += 0xFF;
        }
        var_r0_175 = (*(s32 *)((s8 *)(temp_r3_152) + (0xE0)));
        if (var_r0_175 < 0) {
            var_r0_175 += 0xFF;
        }
        sub_808843C(temp_r7_45, (var_r0_155 >> 8) - 0xA, (var_r0_165 >> 8) - 0x10, var_r0_175 >> 8, -1);
        sub_80880C4(temp_r7_45, 0x200);
    }
    temp_r2_193 = 6 & (*(u8 *)((s8 *)(temp_r7_45) + (0x76)));
    if ((temp_r2_193 == 2) || (temp_r2_193 == 4)) {
        sub_8082E1C(temp_r7_45, 0, 0x2063, 0);
        temp_r2_204 = (*(void **)((s8 *)(temp_r7_45) + (8)));
        (*(u8 *)((s8 *)(temp_r2_204) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_204) + (0x12))));
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80CCE4C;
}
#endif
