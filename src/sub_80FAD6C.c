#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FAD6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAD6C.s\"");
#else
s32 script_read_next_line(void *, s32 *, s32, s32, s32, s32); /* extern */
s32 stc_script_execute_next_command(void *, void *, s32 *); /* extern */
u8 sub_80F9668(void *, void *);                     /* extern */

s32 sub_80FAD6C(void *arg0, void *arg1) {
    s32 sp8;
    s32 temp_r0_23;
    u8 temp_r1_45;

    if (((*(u8 *)((s8 *)(arg1) + (0xA0))) ^ 1) & 1) {
        return 0;
    }
loop_3:
    temp_r1_45 = sub_80F9668(arg0, arg1);
    if (temp_r1_45 == 0) {
        temp_r0_23 = (*(s32 *)((s8 *)(arg0) + (0x24)));
        script_read_next_line(arg1, &sp8, *(s32 *)0x03000FC0, temp_r0_23 + 0x908, temp_r0_23 + 0x99C, (s32) temp_r1_45);
        if ((stc_script_execute_next_command(arg0, arg1, &sp8) << 0x18) != 0) {
            goto loop_3;
        }
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FADD4.s\"");
#else
s32 sub_8021308();                              /* extern */

void sub_80FADD4(void *arg0) {
    s32 *var_r4_14;
    u32 temp_r0_27;
    u32 var_r5_12;
    void *temp_r0_8;
    void *temp_r1_33;
    void *temp_r1_40;

    temp_r0_8 = (*(void **)((s8 *)(arg0) + (0x24)));
    var_r5_12 = (u8) (*(u8 *)((s8 *)(temp_r0_8) + (0x9A2))) >> 1;
    var_r4_14 = temp_r0_8 + 0x888;
    if (var_r5_12 != 0) {
        do {
            if (*var_r4_14 != 0) {
                sub_8021308();
                *var_r4_14 = 0;
            }
            temp_r0_27 = (var_r5_12 << 0x10) + 0xFFFF0000;
            var_r4_14 += 4;
            var_r5_12 = temp_r0_27 >> 0x10;
        } while ((s32) temp_r0_27 > 0);
    }
    temp_r1_33 = (*(void **)((s8 *)(arg0) + (0x24)));
    (*(u8 *)((s8 *)(temp_r1_33) + (0x9A2))) = (u8) (1 & (*(u8 *)((s8 *)(temp_r1_33) + (0x9A2))));
    temp_r1_40 = (*(void **)((s8 *)(arg0) + (0x24)));
    (*(u8 *)((s8 *)(temp_r1_40) + (0x9A2))) = (u8) (-2 & (*(u8 *)((s8 *)(temp_r1_40) + (0x9A2))));
}
#endif

void sub_80FAE34(void *arg0)
{
  s32 var_r4_8;
  u32 temp_r0_19;
  u32 var_r5_7;
  var_r5_7 = 0xD;
  var_r4_8 = *((s32 *) (((s8 *) arg0) + 0x24));
  do
  {
    (*((s32 (**)(s32, s32, s32)) (temp_r0_19 = 0x03001034)))(0, var_r4_8, 0xA8);
    var_r4_8 += 0xA8;
    temp_r0_19 = (var_r5_7 << 0x10) + 0xFFFF0000;
    var_r5_7 = temp_r0_19 >> 0x10;
  }
  while (((s32) temp_r0_19) > 0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAE64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
