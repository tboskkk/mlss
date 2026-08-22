#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DE948 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_80DE948(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE960.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8086C64(s32, s32, s32);                 /* extern */

void sub_80DE960(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x11A);
    sub_8086C64(arg0, arg1, arg2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE980.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_810DD7C(s32, s32, s32);                 /* extern */

void sub_80DE980(s32 arg0, s32 arg1, s32 arg2) {
    stop_sfx_80195A8(0x11A);
    sub_810DD7C(arg0, arg1, arg2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE9A0.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DE780;

void sub_80DE9A0(void *arg0) {
    s32 var_r2_22;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x11C);
        var_r2_22 = 0xF;
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) != -1) {
            var_r2_22 = 0x11;
        }
        sub_8082E1C(arg0, var_r2_22, 0, 0);
        (*(s16 *)((s8 *)((arg0 + 0x9C)) + (0x10))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x9C)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DE780;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE9F0.s\"");
#else
s32 sub_80F7068(s32, s32);                      /* extern */
extern s32 sub_80DEC60;

s32 sub_80DE9F0(void *arg0) {
    u8 temp_r1_13;

    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DEC60;
    temp_r1_13 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113)));
    if (0x80 & temp_r1_13) {
        sub_80F7068(0x7F & temp_r1_13, 1);
        (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) = 0U;
    }
    return 1;
}
#endif

s32 sub_808552C(void *, s32, void *, s32, s32, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_80DE5E4;
void sub_80DEA2C(void *arg0)
{
  void *new_var;
  s32 temp_r6_15;
  void *temp_r5_12;
  new_var = arg0 + 0x98;
  temp_r5_12 = *((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x28));
  temp_r6_15 = *((s32 *) (((s8 *) temp_r5_12) + 0xE0));
  *((s32 *) (((s8 *) arg0) + 0x98)) = temp_r6_15;
  *((s32 *) (((s8 *) arg0) + 0x94)) = sub_808552C(arg0 + 0xAE, (s32) (new_var + 0x18), arg0 + 0xB2, (*((s32 *) (((s8 *) temp_r5_12) + 0xD8))) - (*((s32 *) (((s8 *) arg0) + 0x38))), (*((s32 *) (((s8 *) temp_r5_12) + 0xDC))) - (*((s32 *) (((s8 *) arg0) + 0x3C))), temp_r6_15 - (*((s32 *) (((s8 *) arg0) + 0x40))), 0x2800, 0x7CC, 0xFD, 0);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DE5E4;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087540(void *);                        /* extern */

void sub_80DEA98(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        sub_8087540(arg0);
    }
}
