#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81116C0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81116C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111754.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111848.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81118F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81119DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111A88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111B38.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111C24.s\"");
#else
s32 sub_807F47C(void *);                        /* extern */
s32 sub_807F4FC(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8111F3C(void *);                            /* extern */
extern s32 sub_810DD7C;
extern s32 sub_8112064;

void sub_8111C24(void *arg0) {
    s32 temp_r2_27;
    s8 var_r1_31;
    void *temp_r0_51;

    if ((0xE & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) == 0xA) {
        sub_8082E1C(arg0, 1, 0, 0);
        sub_807F4FC(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x5C))) = &sub_810DD7C;
    }
    temp_r2_27 = M2C_ERROR(/* unknown instruction: ldsb $r2, ($mem_loc_fictive_) */);
    var_r1_31 = temp_r2_27 + 2;
    if ((*(s32 *)((s8 *)(arg0) + (0xA8))) != 0) {
        var_r1_31 = temp_r2_27 - 2;
    }
    (*(s8 *)((s8 *)(arg0) + (0x75))) = var_r1_31;
    if ((sub_8111F3C(arg0) << 0x18) == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        sub_807F47C(arg0);
        temp_r0_51 = (*(void **)((s8 *)(arg0) + (0x28)));
        (*(u8 *)((s8 *)(temp_r0_51) + (0x113))) = (u8) ((*(u8 *)((s8 *)(temp_r0_51) + (0x113))) - 1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8112064;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111CA8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8112030;

void sub_8111CA8(void *arg0) {
    s32 temp_r0_11;
    u16 temp_r0_19;
    void *temp_r2_35;

    temp_r0_11 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_11 != 1) {
        if (temp_r0_11 == 0) {
            temp_r0_19 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
            (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_19;
            if ((temp_r0_19 << 0x10) == 0) {
                (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xB4))) = 1;
            }
        } else {
            sub_8082E1C(arg0, 3, 0, 0);
            temp_r2_35 = (*(void **)((s8 *)(arg0) + (8)));
            (*(u8 *)((s8 *)(temp_r2_35) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_35) + (0x12)))) | 2);
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8112030;
            play_sfx_80195B4(0x88, -1);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111D0C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111E30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111F3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
