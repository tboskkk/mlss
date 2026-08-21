#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8021EA8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021EA8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021ED8.s\"");
#else
void sub_8021ED8(void *arg0)
{
  s8 *new_var;
  if (0x20 & (*((u8 *) (((s8 *) arg0) + 0x12))))
  {
    if ((*((void **) (((s8 *) arg0) + 0x64))) == (*((void **) (((s8 *) arg0) + 0x68))))
    {
      new_var = (s8 *) ((void *) 0x0203FFB8);
      if ((*((void **) (new_var + 0x30))) == ((void *) 0))
      {
        *((void **) (new_var + 0x30)) = arg0;
      }
      else
      {
        *((void **) (((s8 *) arg0) + 0x68)) = (void *) (*((void **) (((s8 *) (*((void **) (new_var + 0x34)))) + 0x68)));
        *((void **) (((s8 *) (*((void **) (new_var + 0x34)))) + 0x68)) = arg0;
      }
      new_var = new_var;
      *((void **) (((s8 *) arg0) + 0x64)) = (void *) (*((void **) (new_var + 0x34)));
      *((void **) (new_var + 0x34)) = arg0;
      *((u8 *) (new_var + 1)) = (u8) ((*((u8 *) (new_var + 1))) + 1);
    }
    sprite_show_8020CBC(arg0);
  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_hide_8021F20.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021F7C.s\"");
#else
s32 sub_801E68C(void *);                        /* extern */
s32 sub_8021308(void *);                        /* extern */

void sub_8021F7C(void) {
    s32 temp_r0_28;
    u8 temp_r1_22;
    void *temp_r5_12;
    void *var_r4_8;

    var_r4_8 = (*(void **)((s8 *)((void *)0x0203FFB8) + (0x30)));
    if (var_r4_8 != NULL) {
        do {
            temp_r5_12 = (*(void **)((s8 *)(var_r4_8) + (0x68)));
            if (0x40 & (*(u8 *)((s8 *)(var_r4_8) + (0x29)))) {
                sub_801E68C(var_r4_8);
                temp_r1_22 = (*(u8 *)((s8 *)(var_r4_8) + (0x12)));
                if (8 & temp_r1_22) {
                    temp_r0_28 = 6 & temp_r1_22;
                    if (temp_r0_28 == 4) {
                        sprite_hide_8021F20(var_r4_8);
                    } else if (temp_r0_28 == 6) {
                        sub_8021308(var_r4_8);
                    }
                }
            }
            var_r4_8 = temp_r5_12;
        } while (var_r4_8 != NULL);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021FD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fldm_8021FF8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8022554.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/fldm_update_8022658.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/update_field_8023DD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025584.s\"");
#else
s32 CpuSet(s32, s32, s32);                      /* extern */

void sub_8025584(void *arg0) {
    u8 *temp_r1_85;
    u8 temp_r0_75;
    u8 temp_r1_26;
    u8 temp_r1_46;
    u8 temp_r2_36;
    u8 temp_r2_66;
    u8 temp_r3_56;

    CpuSet((*(u8 **)((s8 *)(arg0) + (0x20))) + 4, *(s32 *)0x03000FC0, 0x0400015D);
    temp_r1_26 = (-2 & (*(u8 *)((s8 *)(arg0) + (0x208)))) | ((u32) (*(*(u8 **)((s8 *)(arg0) + (0x20))) << 0x1E) >> 0x1F);
    (*(u8 *)((s8 *)(arg0) + (0x208))) = temp_r1_26;
    temp_r2_36 = (-3 & temp_r1_26) | (((u32) (*(*(u8 **)((s8 *)(arg0) + (0x20))) << 0x1D) >> 0x1F) * 2);
    (*(u8 *)((s8 *)(arg0) + (0x208))) = temp_r2_36;
    temp_r1_46 = (-5 & temp_r2_36) | (((u32) (*(*(u8 **)((s8 *)(arg0) + (0x20))) << 0x1C) >> 0x1F) * 4);
    (*(u8 *)((s8 *)(arg0) + (0x208))) = temp_r1_46;
    temp_r3_56 = (-9 & temp_r1_46) | (((u32) (*(*(u8 **)((s8 *)(arg0) + (0x20))) << 0x1B) >> 0x1F) * 8);
    (*(u8 *)((s8 *)(arg0) + (0x208))) = temp_r3_56;
    temp_r2_66 = (-0x11 & temp_r3_56) | (((u32) (*(*(u8 **)((s8 *)(arg0) + (0x20))) << 0x1A) >> 0x1F) * 0x10);
    (*(u8 *)((s8 *)(arg0) + (0x208))) = temp_r2_66;
    temp_r0_75 = (-0x41 & temp_r2_66) | (0x40 & *(*(u8 **)((s8 *)(arg0) + (0x20))));
    (*(u8 *)((s8 *)(arg0) + (0x208))) = temp_r0_75;
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) ((temp_r0_75 & 0x7F) | (((u8) *(*(u8 **)((s8 *)(arg0) + (0x20))) >> 7) << 7));
    temp_r1_85 = (*(u8 **)((s8 *)(arg0) + (0x20)));
    *temp_r1_85 &= -2;
}
#endif
