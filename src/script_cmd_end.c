#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_end needs.

asm_unified(".include \"asm/macros.inc\"");

s32 script_cmd_end(void *arg1)
{
  s8 *new_var;
  *((s32 *) (new_var + 4)) = (s32) (*((s32 *) (new_var + 0)));
  *((s32 *) (new_var + 0x10)) = 0;
  new_var = (s8 *) arg1;
  return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EB248.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EB490.s\"");
#else
s32 sub_80474D0(void *);                        /* extern */

void sub_80EB490(s32 arg0, void *arg1, void *arg2) {
    s32 temp_r0_33;
    u8 temp_r1_12;
    void *temp_r2_71;
    void *temp_r3_11;

    temp_r3_11 = (*(void **)((s8 *)(arg1) + (0x294)));
    temp_r1_12 = (*(u8 *)((s8 *)(temp_r3_11) + (0x12)));
    if ((6 & temp_r1_12) != 2) {
        (*(u8 *)((s8 *)(temp_r3_11) + (0x12))) = (u8) ((-7 & temp_r1_12) | 2);
    }
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x294)))) + (0x12)))) {
        temp_r0_33 = (*(s32 *)((s8 *)(arg2) + (0x9C))) - 1;
        (*(s32 *)((s8 *)(arg2) + (0x9C))) = temp_r0_33;
        if (temp_r0_33 == 0) {
            if (0x200 & (*(u16 *)((s8 *)(arg2) + (0xA0)))) {
                (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) (-8 & (*(u8 *)((s8 *)(arg1) + (0x214))));
                (*(u16 *)((s8 *)(arg2) + (0xA0))) = (u16) (0xFDDF & (*(u16 *)((s8 *)(arg2) + (0xA0))));
                return;
            }
            sub_80474D0(arg1);
            (*(u16 *)((s8 *)(arg2) + (0xA0))) = (u16) ((*(u16 *)((s8 *)(arg2) + (0xA0))) ^ 0x20);
            goto block_7;
        }
block_7:
        temp_r2_71 = (*(void **)((s8 *)(arg1) + (0x294)));
        (*(u8 *)((s8 *)(temp_r2_71) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_71) + (0x12))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EB524.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EB838.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
