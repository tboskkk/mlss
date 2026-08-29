#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8085440 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085440.s\"");
#else
s32 sub_80183A4(s32, s32, s32, s32, s32);       /* extern */

void sub_8085440(void) {
    void *temp_r0_36;
    void *temp_r0_38;
    void *temp_r0_40;
    void *temp_r0_42;
    void *temp_r0_48;
    void *temp_r0_54;
    void *temp_r1_16;
    void *temp_r1_25;

    *(s32 *)0x03000F70 = (s32) (*(u16 *)((s8 *)((void *)0x02000000) + (0)));
    (*(u16 *)((s8 *)((void *)0x02000000) + (0))) = 0x7F40U;
    temp_r1_16 = (void *)0x02000000 + 0x50;
    (*(s16 *)((s8 *)((void *)0x02000000) + (0x50))) = 0x3740;
    (*(s16 *)((s8 *)(temp_r1_16) + (2))) = 0x808;
    temp_r1_25 = (temp_r1_16 + 2) - 0x46;
    (*(s16 *)((s8 *)(temp_r1_25) + (0))) = 0x1E04;
    (*(s16 *)((s8 *)(temp_r1_25) + (2))) = 0x1F08;
    (*(s16 *)((s8 *)((void *)0x02000018) + (0))) = 0;
    temp_r0_36 = (void *)0x02000018 + 2;
    (*(s16 *)((s8 *)((void *)0x02000018) + (2))) = 0;
    temp_r0_38 = temp_r0_36 + 2;
    (*(s16 *)((s8 *)(temp_r0_36) + (2))) = 0;
    temp_r0_40 = temp_r0_38 + 2;
    (*(s16 *)((s8 *)(temp_r0_38) + (2))) = 0;
    temp_r0_42 = temp_r0_40 + 0x2A;
    (*(s16 *)((s8 *)(temp_r0_40) + (0x2A))) = 0x3F3F;
    (*(s16 *)((s8 *)(temp_r0_42) + (2))) = 0x3F3F;
    temp_r0_48 = (temp_r0_42 + 2) - 0xA;
    (*(s16 *)((s8 *)(temp_r0_48) + (0))) = 0xF0;
    (*(s16 *)((s8 *)(temp_r0_48) + (4))) = 0xA0;
    temp_r0_54 = (temp_r0_48 + 4) - 2;
    (*(s16 *)((s8 *)(temp_r0_54) + (0))) = 0xF0;
    (*(s16 *)((s8 *)(temp_r0_54) + (4))) = 0xA0;
    sub_80183A4(0, 0x06008000, 0x5000, 0x20, 0);
    sub_80183A4(0, 0x0600F800, 0x800, 0x20, 0);
}
#endif

s32 free_heap_memory_8018C68(s32);              /* extern */

void sub_80854F8(void *arg0, s32 arg1) {
    *(s16 *)0x02000000 = (s16) *(s32 *)0x03000F70;
    free_heap_memory_8018C68((*(s32 *)((s8 *)(arg0) + (0x288))));
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808552C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085730.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085968.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085A6C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085B38.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085C20.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085ED0.s\"");
#else
s32 sub_8085ED0(void *arg0, void *arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 temp_r3_71;
    s32 temp_r3_99;
    s32 temp_r4_119;
    s32 temp_r4_188;
    s32 temp_r4_67;
    s32 temp_r5_112;
    s32 temp_r5_181;
    s32 var_r0_33;
    s32 var_r0_56;
    s32 var_r2_129;
    s32 var_r2_199;
    s32 var_r2_30;
    s32 var_r3_121;
    s32 var_r3_190;
    s32 var_r4_132;
    s32 var_r4_202;
    s32 var_r5_53;
    s32 var_r6_73;
    s32 var_r7_80;

    if (0x40 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x11)))) {
        var_r2_30 = 0 - M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
        var_r0_33 = 0 - M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
    } else {
        var_r2_30 = M2C_ERROR(/* unknown instruction: ldsb $r2, ($mem_loc_fictive_) */);
        var_r0_33 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
    }
    sp4 = var_r0_33;
    if (0x40 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg1) + (8)))) + (0x11)))) {
        var_r5_53 = 0 - M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
        var_r0_56 = 0 - M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
    } else {
        var_r5_53 = M2C_ERROR(/* unknown instruction: ldsb $r5, ($mem_loc_fictive_) */);
        var_r0_56 = M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
    }
    temp_r4_67 = (*(s32 *)((s8 *)(arg1) + (0x38)));
    temp_r3_71 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    var_r6_73 = (temp_r4_67 + (var_r0_56 << 8)) - (temp_r3_71 + (var_r2_30 << 8));
    var_r7_80 = (temp_r4_67 - temp_r3_71) - ((*(s32 *)((s8 *)(arg1) + (0x10))) - (*(s32 *)((s8 *)(arg0) + (0x10))));
    if (var_r6_73 >= 0) {
        sp0 = 1;
        goto block_9;
    }
    var_r6_73 = (temp_r3_71 + (sp4 << 8)) - (temp_r4_67 + (var_r5_53 << 8));
    var_r7_80 = 0 - var_r7_80;
    sp0 = (s32) ~var_r6_73 >> 0x1F;
    temp_r3_99 = sp0 & 2;
    sp0 = temp_r3_99;
    if (temp_r3_99 != 0) {
block_9:
        if (var_r6_73 <= var_r7_80) {
            goto block_10;
        }
        goto block_25;
    }
block_10:
    temp_r5_112 = (*(s32 *)((s8 *)(arg1) + (0x3C)));
    temp_r4_119 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    var_r3_121 = (temp_r5_112 + (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) << 8)) - (temp_r4_119 + (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) << 8));
    sp8 = temp_r5_112 - temp_r4_119;
    var_r2_129 = sp8 - ((*(s32 *)((s8 *)(arg1) + (0x14))) - (*(s32 *)((s8 *)(arg0) + (0x14))));
    if (var_r3_121 >= 0) {
        var_r4_132 = 5;
        goto block_15;
    }
    var_r3_121 = (temp_r4_119 + (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) << 8)) - (temp_r5_112 + (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) << 8));
    var_r2_129 = 0 - var_r2_129;
    var_r4_132 = 0;
    if (var_r3_121 >= 0) {
        var_r4_132 = 6;
    }
    if (var_r4_132 != 0) {
block_15:
        if (var_r3_121 <= var_r2_129) {
            goto block_16;
        }
        goto block_25;
    }
block_16:
    if ((sp0 == 0) && (var_r4_132 == 0)) {
        var_r7_80 = 0;
    } else if ((s32) (var_r6_73 * var_r2_129) <= (s32) (var_r3_121 * var_r7_80)) {
        var_r6_73 = var_r3_121;
        var_r7_80 = var_r2_129;
        sp0 = var_r4_132;
    }
    temp_r5_181 = (*(s32 *)((s8 *)(arg1) + (0x40)));
    temp_r4_188 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    var_r3_190 = (temp_r5_181 + (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) << 8)) - (temp_r4_188 + (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) << 8));
    sp8 = temp_r5_181 - temp_r4_188;
    var_r2_199 = sp8 - ((*(s32 *)((s8 *)(arg1) + (0x18))) - (*(s32 *)((s8 *)(arg0) + (0x18))));
    if (var_r3_190 >= 0) {
        var_r4_202 = 3;
        goto block_24;
    }
    var_r3_190 = (temp_r4_188 + (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) << 8)) - (temp_r5_181 + (M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */) << 8));
    var_r2_199 = 0 - var_r2_199;
    var_r4_202 = ((s32) ~var_r3_190 >> 0x1F) & 4;
    if (var_r4_202 != 0) {
block_24:
        if (var_r3_190 > var_r2_199) {
block_25:
            return 0;
        }
        goto block_26;
    }
block_26:
    if ((s32) (var_r6_73 * var_r2_199) <= (s32) (var_r3_190 * var_r7_80)) {
        sp0 = var_r4_202;
    }
    return sp0;
}
#endif

void sub_8086090(void *arg0)
{
  s16 temp_r0_73;
  s16 temp_r0_84;
  s32 temp_r4_28;
  s32 temp_r5_18;
  s32 var_r0_23;
  s32 var_r0_44;
  s32 var_r0_54;
  s32 var_r1_13;
  void *temp_r0_93;
  void *temp_r3_8;
  temp_r3_8 = (void *) (*((void **) (((s8 *) arg0) + 0x28)));
  var_r1_13 = (*((s32 *) (((s8 *) temp_r3_8) + 0xD8))) - (*((s32 *) (((s8 *) arg0) + 0x38)));
  if (var_r1_13 < 0)
  {
    var_r1_13 += 0x1F;
  }
  temp_r5_18 = var_r1_13 >> 5;
  var_r0_23 = (*((s32 *) (((s8 *) temp_r3_8) + 0xE0))) - (*((s32 *) (((s8 *) arg0) + 0x40)));
  if (var_r0_23 < 0)
  {
    var_r0_23 += 0x1F;
  }
  temp_r4_28 = var_r0_23 >> 5;
  *((u16 *) (((s8 *) arg0) + 0xAE)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xAE))) + temp_r5_18);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) (var_r0_23 = (*((u16 *) (((s8 *) arg0) + 0xB2))) + temp_r4_28);
  temp_r3_8 = ((s8 *) arg0) + 0x4C;
  var_r0_44 = ((s16) (*((u16 *) (((s8 *) arg0) + 0xAE)))) * 0xF2;
  if (var_r0_44 < 0)
  {
    var_r0_44 += 0xFF;
  }
  *((u16 *) (((s8 *) arg0) + 0xAE)) = (u16) (var_r0_44 >> 8);
  var_r0_54 = ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2)))) * 0xF2;
  if (var_r0_54 < 0)
  {
    var_r0_54 += 0xFF;
  }
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) (var_r0_54 >> 8);
  *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x10))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xAE)))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x18))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2)))));
  temp_r0_73 = (s16) (*((u16 *) (((s8 *) arg0) + 0xAE)));
  if (((s32) ((temp_r0_73 * temp_r0_73) + (temp_r5_18 * temp_r5_18))) <= 0x40)
  {
    temp_r0_84 = (s16) (*((u16 *) (((s8 *) arg0) + 0xB2)));
    if (((s32) ((temp_r0_84 * temp_r0_84) + (temp_r4_28 * temp_r4_28))) <= 0x40)
    {
      temp_r0_93 = (void *) (*((void **) (((s8 *) arg0) + 0x28)));
      *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) (*((s32 *) (((s8 *) temp_r0_93) + 0xD8)));
      *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) (*((s32 *) (((s8 *) temp_r0_93) + 0xE0)));
      *((s32 *) temp_r3_8) = 0;
    }
  }
}
