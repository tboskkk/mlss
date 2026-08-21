#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EE028 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE028.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE140.s\"");
#else
s32 sub_80EE140(s32 arg0, void *arg1, void *arg3) {
    void *temp_r3_18;
    void *temp_r3_23;
    void *temp_r3_27;
    void *temp_r3_31;
    void *temp_r3_35;
    void *temp_r3_8;
    void *var_r2_7;

    var_r2_7 = arg1;
    temp_r3_8 = arg3 + 4;
    if ((*(s32 *)((s8 *)(arg3) + (0))) & 2) {
        var_r2_7 = (*(void **)((s8 *)(var_r2_7) + (0x344)));
    }
    temp_r3_18 = temp_r3_8 + 4;
    (*(s16 *)((s8 *)(var_r2_7) + (0x146))) = (s16) (*(s32 *)((s8 *)(arg3) + (4)));
    temp_r3_23 = temp_r3_18 + 4;
    (*(s16 *)((s8 *)(var_r2_7) + (0x148))) = (s16) (*(s32 *)((s8 *)(temp_r3_8) + (4)));
    temp_r3_27 = temp_r3_23 + 4;
    (*(s16 *)((s8 *)(var_r2_7) + (0x14A))) = (s16) (*(s32 *)((s8 *)(temp_r3_18) + (4)));
    temp_r3_31 = temp_r3_27 + 4;
    (*(s16 *)((s8 *)(var_r2_7) + (0x14C))) = (s16) (*(s32 *)((s8 *)(temp_r3_23) + (4)));
    temp_r3_35 = temp_r3_31 + 4;
    (*(s16 *)((s8 *)(var_r2_7) + (0x14E))) = (s16) (*(s32 *)((s8 *)(temp_r3_27) + (4)));
    (*(s16 *)((s8 *)(var_r2_7) + (0x150))) = (s16) (*(s32 *)((s8 *)(temp_r3_31) + (4)));
    (*(s16 *)((s8 *)(var_r2_7) + (0x152))) = (s16) (*(s32 *)((s8 *)(temp_r3_35) + (4)));
    (*(s16 *)((s8 *)(var_r2_7) + (0x154))) = (s16) (*(s32 *)((s8 *)((temp_r3_35 + 4)) + (4)));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE1A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE26C.s\"");
#else
#error "TODO: write sub_80EE26C to match asm/nonmatching/sub_80EE26C.s, then delete this #error"
#endif
