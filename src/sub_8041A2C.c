#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8041A2C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8041A2C.s\"");
#else
/* Draft quarantined: it did not compile, and under agbcc a single bad
   draft fails the WHOLE translation unit -- taking every sibling's compile
   verdict, asm-differ score and permuter promotion down with it. Emptied by
   tools/factory/quarantine_broken_drafts.py. The guard is intact, so the
   real ROM still gets the verbatim retail bytes and progress.py still counts
   this as unmatched; the candidate body is still in the state DB and m2c can
   regenerate the seed. Write real C here to replace this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8041FFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8044630.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80457E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80458B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80459C0.s\"");
#else
s32 sub_804761C(void *, s32);                   /* extern */

void sub_80459C0(void *arg0) {
    s32 var_r2_74;
    u8 *temp_r2_39;
    u8 *var_r1_43;
    u8 temp_r0_21;
    u8 var_r0_49;
    void *temp_r3_94;

    if (0x180 & (*(u16 *)((s8 *)(arg0) + (0x212)))) {
        temp_r0_21 = (*(u8 *)((s8 *)(arg0) + (0x2B4))) - 1;
        (*(u8 *)((s8 *)(arg0) + (0x2B4))) = temp_r0_21;
        if ((temp_r0_21 << 0x18) == 0) {
            if (2 & (*(u8 *)((s8 *)(arg0) + (0x20F)))) {
                sub_804761C(arg0, 0);
                temp_r2_39 = (*(u8 **)((s8 *)(arg0) + (0x2B0)));
                var_r1_43 = temp_r2_39 + 2;
                if ((0x180 & (*(u16 *)((s8 *)(arg0) + (0x212)))) == 0x80) {
                    var_r1_43 = temp_r2_39 - 2;
                }
                (*(u8 **)((s8 *)(arg0) + (0x2B0))) = var_r1_43;
                var_r0_49 = *var_r1_43;
            } else {
                sub_804761C(arg0, 1);
                var_r0_49 = (*(u8 *)((s8 *)((*(u8 **)((s8 *)(arg0) + (0x2B0)))) + (1)));
            }
            (*(u8 *)((s8 *)(arg0) + (0x2B4))) = var_r0_49;
        }
        if (M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */) == -1) {
            var_r2_74 = 0;
            if ((0x180 & (*(u16 *)((s8 *)(arg0) + (0x212)))) == 0x80) {
                var_r2_74 = 1;
            }
            sub_804761C(arg0, var_r2_74);
            (*(u16 *)((s8 *)(arg0) + (0x212))) = (u16) (0xFFFFFE7F & (*(u16 *)((s8 *)(arg0) + (0x212))));
            temp_r3_94 = (*(void **)((s8 *)(arg0) + (0x294)));
            (*(u8 *)((s8 *)(temp_r3_94) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r3_94) + (0x12)))) | (((u8) (*(u8 *)((s8 *)(arg0) + (0x213))) >> 6) * 2));
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8045A94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8045F04.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80461B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80465D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8046980(void *arg0)
{
  s32 temp_r1_15;
  s32 temp_r1_24;
  s32 temp_r1_38;
  int new_var;
  s32 temp_r1_45;
  if (7 & (*((u8 *) (((s8 *) arg0) + 0x2B5))))
  {
    temp_r1_15 = *((s32 *) (((s8 *) arg0) + 0xC));
    new_var = -8;
    *((s32 *) (((s8 *) arg0) + 0xC)) = (s32) ((temp_r1_15 + ((temp_r1_15 & 0x80) * 2)) & 0xFFFFFF00);
    temp_r1_24 = *((s32 *) (((s8 *) arg0) + 0x10));
    *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((temp_r1_24 + ((temp_r1_24 & 0x80) * 2)) & 0xFFFFFF00);
    if (!(0x40 & (*((u8 *) (((s8 *) arg0) + 0x20D)))))
    {
      temp_r1_38 = *((s32 *) (((s8 *) arg0) + 0x14));
      *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((temp_r1_38 + ((temp_r1_38 & 0x80) * 2)) & 0xFFFFFF00);
      temp_r1_45 = *((s32 *) (((s8 *) arg0) + 0x18));
      *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) ((temp_r1_45 + ((temp_r1_45 & 0x80) * 2)) & 0xFFFFFF00);
    }
    *((s16 *) (((s8 *) arg0) + 0x2E0)) = 0;
    *((s16 *) (((s8 *) arg0) + 0x242)) = 0;
    *((s16 *) (((s8 *) arg0) + 0x244)) = 0;
    *((u8 *) (((s8 *) arg0) + 0x2B5)) = (u8) (new_var & (*((u8 *) (((s8 *) arg0) + 0x2B5))));
  }
}
