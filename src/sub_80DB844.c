#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DB844 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082B00();                                  /* extern */
extern s32 sub_80DB1E4;

void sub_80DB844(void *arg0) {
    if (sub_8082B00() == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DB1E4;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB860.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB8D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB95C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB9DC.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DBA98;

void sub_80DB9DC(void *arg0) {
    s32 temp_r0_60;
    s32 temp_r1_64;
    s32 var_r0_16;
    s32 var_r0_31;
    u8 temp_r2_74;
    void *temp_r3_73;

    var_r0_16 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * 0xFD;
    if (var_r0_16 < 0) {
        var_r0_16 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) (var_r0_16 >> 8);
    var_r0_31 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * 0xFD;
    if (var_r0_31 < 0) {
        var_r0_31 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0xB0))) = (s16) (var_r0_31 >> 8);
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) + (*(s32 *)((s8 *)(arg0) + (0x94))));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x3C))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    temp_r0_60 = (*(s32 *)((s8 *)(arg0) + (0x40))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_60;
    temp_r1_64 = (*(s32 *)((s8 *)(arg0) + (0x98)));
    if (temp_r0_60 <= temp_r1_64) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r1_64;
        sub_8082E1C(arg0, 2, 0, 0);
        temp_r3_73 = (*(void **)((s8 *)(arg0) + (8)));
        temp_r2_74 = (*(u8 *)((s8 *)(temp_r3_73) + (0x11)));
        (*(u8 *)((s8 *)(temp_r3_73) + (0x11))) = (u8) ((-0x41 & temp_r2_74) | ((((u32) (temp_r2_74 << 0x19) >> 0x1F) ^ 1) << 6));
        play_sfx_80195B4(0x11A, -1);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x20;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DBA98;
    }
}
#endif
