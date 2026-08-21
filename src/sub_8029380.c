#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029380 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029380.s\"");
#else
s32 sub_80507E0(s32);                           /* extern */

void sub_8029380(void *arg0) {
    s32 *var_r6_15;
    s32 temp_r0_24;
    s32 var_r4_16;

    if ((*(u8 *)((s8 *)(arg0) + (0x112))) != 0) {
        var_r6_15 = arg0 + 0x30;
        var_r4_16 = 0;
        if ((s32) (*(u8 *)((s8 *)(arg0) + (0x113))) > 0) {
            do {
                temp_r0_24 = *var_r6_15;
                var_r6_15 += 4;
                sub_80507E0(temp_r0_24);
                var_r4_16 += 1;
            } while (var_r4_16 < (s32) (*(u8 *)((s8 *)(arg0) + (0x113))));
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80293B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80293F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029460.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80294A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802955C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029624.s\"");
#else
void sub_8029624(void *arg0) {
    void *temp_r1_7;
    void *temp_r2_17;
    void *temp_r2_36;
    void *temp_r2_55;
    void *temp_r2_74;
    void *temp_r3_11;
    void *temp_r3_35;
    void *temp_r3_54;
    void *temp_r3_73;

    temp_r1_7 = (*(void **)((s8 *)(arg0) + (0x1C)));
    temp_r3_11 = temp_r1_7 + 0x25C;
    temp_r2_17 = (*(void **)((s8 *)(temp_r1_7) + (0x25C)));
    if (!(0x20 & (*(u8 *)((s8 *)(temp_r2_17) + (0x12))))) {
        (*(s16 *)((s8 *)(temp_r2_17) + (0))) = (s16) ((*(u16 *)((s8 *)(temp_r3_11) + (4))) - (*(u16 *)((s8 *)(arg0) + (0x27E))));
        (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r1_7) + (0x25C)))) + (2))) = (s16) ((*(u16 *)((s8 *)(temp_r3_11) + (6))) - (*(u16 *)((s8 *)(arg0) + (0x280))));
    }
    temp_r3_35 = temp_r1_7 + 0x264;
    temp_r2_36 = (*(void **)((s8 *)(temp_r1_7) + (0x264)));
    if (!(0x20 & (*(u8 *)((s8 *)(temp_r2_36) + (0x12))))) {
        (*(s16 *)((s8 *)(temp_r2_36) + (0))) = (s16) ((*(u16 *)((s8 *)(temp_r3_35) + (4))) - (*(u16 *)((s8 *)(arg0) + (0x27E))));
        (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r1_7) + (0x264)))) + (2))) = (s16) ((*(u16 *)((s8 *)(temp_r3_35) + (6))) - (*(u16 *)((s8 *)(arg0) + (0x280))));
    }
    temp_r3_54 = temp_r1_7 + 0x26C;
    temp_r2_55 = (*(void **)((s8 *)(temp_r1_7) + (0x26C)));
    if (!(0x20 & (*(u8 *)((s8 *)(temp_r2_55) + (0x12))))) {
        (*(s16 *)((s8 *)(temp_r2_55) + (0))) = (s16) ((*(u16 *)((s8 *)(temp_r3_54) + (4))) - (*(u16 *)((s8 *)(arg0) + (0x27E))));
        (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r1_7) + (0x26C)))) + (2))) = (s16) ((*(u16 *)((s8 *)(temp_r3_54) + (6))) - (*(u16 *)((s8 *)(arg0) + (0x280))));
    }
    temp_r3_73 = temp_r1_7 + 0x274;
    temp_r2_74 = (*(void **)((s8 *)(temp_r1_7) + (0x274)));
    if (!(0x20 & (*(u8 *)((s8 *)(temp_r2_74) + (0x12))))) {
        (*(s16 *)((s8 *)(temp_r2_74) + (0))) = (s16) ((*(u16 *)((s8 *)(temp_r3_73) + (4))) - (*(u16 *)((s8 *)(arg0) + (0x27E))));
        (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r1_7) + (0x274)))) + (2))) = (s16) ((*(u16 *)((s8 *)(temp_r3_73) + (6))) - (*(u16 *)((s8 *)(arg0) + (0x280))));
    }
}
#endif
