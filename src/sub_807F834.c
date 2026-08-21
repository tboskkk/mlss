#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807F834 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F834.s\"");
#else
void sub_807F834(void *arg0)
{
  void *temp_r2_10;
  int temp_r0_16;
  void *temp_r3_8;
  temp_r3_8 = *((void **) (((s8 *) arg0) + 0xC));
  temp_r2_10 = *((void **) 0x03000FD8);
  *((u8 *) (((s8 *) temp_r2_10) + 0xB)) = (u8) ((*((u8 *) (((s8 *) temp_r2_10) + 0xB))) | 2);
  temp_r0_16 = (*((u16 *) (((s8 *) temp_r3_8) + 0x16))) - 1;
  *((u16 *) (((s8 *) temp_r3_8) + 0x16)) = temp_r0_16;
  if ((temp_r0_16 << 0x10) == 0)
  {
    *((u16 *) (((s8 *) temp_r3_8) + 0x16)) = 0x14U;
    *((s32 **) (((s8 *) arg0) + 4)) = &sub_80801BC;
  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F868.s\"");
#else
s32 sub_807F7BC(s32, s32, s32, s32, s32);   /* extern */
extern s32 sub_807CEC4;

void sub_807F868(void *arg0) {
    s32 var_r1_11;
    s32 var_r2_17;
    u16 temp_r0_36;
    void *temp_r2_30;
    void *temp_r4_9;

    temp_r4_9 = (*(void **)((s8 *)(arg0) + (0xC)));
    var_r1_11 = (*(s32 *)((s8 *)(temp_r4_9) + (4)));
    if (var_r1_11 < 0) {
        var_r1_11 += 0xFF;
    }
    var_r2_17 = (*(s32 *)((s8 *)(temp_r4_9) + (8)));
    if (var_r2_17 < 0) {
        var_r2_17 += 0xFF;
    }
    sub_807F7BC((*(s32 *)((s8 *)(arg0) + (8))), var_r1_11 >> 8, var_r2_17 >> 8, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), 0);
    temp_r2_30 = *(void **)0x03000FD8;
    (*(u8 *)((s8 *)(temp_r2_30) + (0xB))) = (u8) ((*(u8 *)((s8 *)(temp_r2_30) + (0xB))) | 2);
    temp_r0_36 = (*(u16 *)((s8 *)(temp_r4_9) + (0x16))) - 1;
    (*(u16 *)((s8 *)(temp_r4_9) + (0x16))) = temp_r0_36;
    if ((temp_r0_36 << 0x10) == 0) {
        (*(u16 *)((s8 *)(temp_r4_9) + (0x16))) = 0xEU;
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_807CEC4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F8C4.s\"");
#else
s32 sub_807F7BC(s32, s32, s32, s32, s32);   /* extern */
extern s32 sub_807CD18;

void sub_807F8C4(void *arg0) {
    s32 var_r1_11;
    s32 var_r2_17;
    u16 temp_r0_36;
    void *temp_r2_30;
    void *temp_r4_9;

    temp_r4_9 = (*(void **)((s8 *)(arg0) + (0xC)));
    var_r1_11 = (*(s32 *)((s8 *)(temp_r4_9) + (4)));
    if (var_r1_11 < 0) {
        var_r1_11 += 0xFF;
    }
    var_r2_17 = (*(s32 *)((s8 *)(temp_r4_9) + (8)));
    if (var_r2_17 < 0) {
        var_r2_17 += 0xFF;
    }
    sub_807F7BC((*(s32 *)((s8 *)(arg0) + (8))), var_r1_11 >> 8, var_r2_17 >> 8, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), 0);
    temp_r2_30 = *(void **)0x03000FD8;
    (*(u8 *)((s8 *)(temp_r2_30) + (0xB))) = (u8) ((*(u8 *)((s8 *)(temp_r2_30) + (0xB))) | 2);
    temp_r0_36 = (*(u16 *)((s8 *)(temp_r4_9) + (0x16))) - 1;
    (*(u16 *)((s8 *)(temp_r4_9) + (0x16))) = temp_r0_36;
    if ((temp_r0_36 << 0x10) == 0) {
        (*(u16 *)((s8 *)(temp_r4_9) + (0x16))) = 0xEU;
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_807CD18;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F920.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807F9A8.s\"");
#else
#error "TODO: write sub_807F9A8 to match asm/nonmatching/sub_807F9A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FA14.s\"");
#else
#error "TODO: write sub_807FA14 to match asm/nonmatching/sub_807FA14.s, then delete this #error"
#endif
