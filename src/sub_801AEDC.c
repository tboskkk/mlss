#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801AEDC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AEDC.s\"");
#else
u32 sub_801AEDC(void) {
    s32 temp_r1_27;
    u32 temp_r0_8;
    u32 temp_r4_9;
    u32 var_r3_12;
    u8 temp_r0_16;
    u8 var_r0_13;

    temp_r0_8 = (*(u32 *)((s8 *)((void *)0x03000D18) + (8)));
    temp_r4_9 = temp_r0_8 >> 4;
    var_r3_12 = temp_r4_9 >> 0x18;
    var_r0_13 = 6;
    do {
        temp_r0_16 = var_r0_13 - 1;
        var_r3_12 ^= (temp_r4_9 >> (temp_r0_16 * 4)) & 0xF;
        var_r0_13 = temp_r0_16;
    } while (var_r0_13 != 0);
    temp_r1_27 = var_r3_12 ^ (0xF & temp_r0_8);
    return (u32) ((0 - temp_r1_27) | temp_r1_27) >> 0x1F;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AF50.s\"");
#else
s32 sub_80FC1F8();                              /* extern */

void sub_801AF50(void) {
    sub_80FC1F8();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/make_fldm_801AF5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AFA0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AFE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B034.s\"");
#else
void sub_801B034(void)
{
  int new_var;
  new_var = 0x0300034C;
  if ((*((u16 *) (((s8 *) ((void *) new_var)) + 0x28))) == 0x307)
  {
    bclr_init(alloc_Zero(0x4CU, 0U, (s8 *) 0x081E23A0, 0U), 8, 0x081E23A0);
    return;
  }
  comp_init(alloc_Zero(0x4CU, 0U, (s8 *) 0x081E23A8, 0U), 8, 0x081E23A8);
}
#endif

void sub_801B084(void)
{
  void *new_var;
  new_var = (void *) 0x0300034C;
  if (1)
  {
  }
  if ((*((u16 *) (((s8 *) new_var) + 0x2A))) & (*((u16 *) 0x03000D3C)))
  {
    play_sfx_80195B4(0x50, -1);
  }
}
