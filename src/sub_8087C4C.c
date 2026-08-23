#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087C4C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8087C4C(void *arg0) {
    s32 (*temp_r1_12)(void *);
    s32 temp_r5_9;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_9 == 0) {
        temp_r1_12 = (*(s32 (**)(void *))((s8 *)(arg0) + (0x68)));
        if (temp_r1_12 != NULL) {
            temp_r1_12(arg0);
        }
        (*(s32 *)((s8 *)(arg0) + (0x6C))) = temp_r5_9;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4();                              /* extern */
extern s32 sub_8088508;
void sub_8087C6C(void *arg0)
{
  s32 temp_r1_20;
  void *temp_r2_48;
  sub_8087CE4();
  if (0x20 & (*((u8 *) (((s8 *) arg0) + 0x79))))
  {
    temp_r1_20 = 6 & (*((u8 *) (((s8 *) arg0) + 0x76)));
    if ((temp_r1_20 == 2) || (temp_r1_20 == 4))
    {
      if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xEC))) == (-1))
      {
        sub_8082E1C(arg0, 8, 0x2000, 0);
      }
      else
      {
        sub_8082E1C(arg0, 8, 0x204D, 0);
      }
      temp_r2_48 = *((void **) (((s8 *) arg0) + 8));
      *((u8 *) (((s8 *) temp_r2_48) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_48) + 0x12))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8088508;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087CE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087DE4.s\"");
#else
s32 sub_80877FC(u16, s32, s32, s32);                /* extern */

s32 sub_8087DE4(void *arg0) {
    s32 temp_r0_111;
    s32 temp_r0_39;
    s32 temp_r0_58;
    s32 temp_r3_47;
    s32 var_r0_22;
    s32 var_r0_49;
    s32 var_r0_64;
    u16 temp_r5_28;

    var_r0_22 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r0_22 < 0) {
        var_r0_22 += 0xFF;
    }
    temp_r5_28 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */) + (var_r0_22 >> 8);
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x7E)));
    (*(u16 *)((s8 *)(arg0) + (0x7E))) = temp_r5_28;
    if ((s32) temp_r5_28 <= 0x3FFF) {
        temp_r0_39 = (*(s32 *)((s8 *)(arg0) + (0x84)));
        temp_r3_47 = 0x4000 - temp_r5_28;
        var_r0_49 = ((temp_r0_39 >> 0x10) * temp_r5_28) + ((s16) temp_r0_39 * temp_r3_47);
        if (var_r0_49 < 0) {
            var_r0_49 += 0x3F;
        }
        (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (var_r0_49 >> 6);
        temp_r0_58 = (*(s32 *)((s8 *)(arg0) + (0x88)));
        var_r0_64 = ((temp_r0_58 >> 0x10) * temp_r5_28) + ((s16) temp_r0_58 * temp_r3_47);
        if (var_r0_64 < 0) {
            var_r0_64 += 0x3F;
        }
        (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (var_r0_64 >> 6);
        (*(s32 *)((s8 *)(arg0) + (0x18))) = sub_80877FC(temp_r5_28, (*(s32 *)((s8 *)(arg0) + (0x94))), (*(s32 *)((s8 *)((arg0 + 0x94)) + (4))), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */) << 8);
        return 1;
    }
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8);
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8);
    temp_r0_111 = sub_80877FC(temp_r5_28, (*(s32 *)((s8 *)(arg0) + (0x94))), (*(s32 *)((s8 *)((arg0 + 0x94)) + (4))), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */) << 8);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_111;
    if (temp_r0_111 >= 0) {
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) (-0x21 & (*(u8 *)((s8 *)(arg0) + (0x79))));
        return 1;
    }
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8);
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087EFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088020.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80880C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
