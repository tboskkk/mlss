#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F6250 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F6250.s\"");
#else
s16 sub_8082D40(s32);                               /* extern */
s16 sub_8082D50(s32);                               /* extern */

s32 sub_80F6250(s32 arg0, void *arg1, void *arg2) {
    s16 var_r3_43;
    s32 temp_r1_36;
    s32 var_r1_68;
    void *temp_r1_16;
    void *temp_r2_24;
    void *temp_r6_28;

    temp_r1_16 = *(void **)0x03000FD8;
    (*(s16 *)((s8 *)(temp_r1_16) + (0x354))) = sub_8082D50((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C))));
    temp_r2_24 = *(void **)0x03000FD8;
    (*(s16 *)((s8 *)(temp_r2_24) + (0x356))) = sub_8082D40((*(s32 *)((s8 *)(temp_r1_16) + (0x24C))));
    temp_r6_28 = arg2 + 4;
    (*(s16 *)((s8 *)(temp_r2_24) + (0x358))) = (s16) (*(s32 *)((s8 *)(arg2) + (0)));
    (*(s16 *)((s8 *)(temp_r2_24) + (0x35A))) = (s16) (*(s32 *)((s8 *)(arg2) + (4)));
    temp_r1_36 = (*(s32 *)((s8 *)(temp_r6_28) + (4)));
    if (0x40 & temp_r1_36) {
        var_r3_43 = temp_r1_36 & 0xF;
    } else {
        var_r3_43 = temp_r1_36 * 0x10;
    }
    (*(s16 *)((s8 *)(temp_r2_24) + (0x35C))) = var_r3_43;
    (*(s16 *)((s8 *)(*(u32 *)0x03000FD8) + (0x35E))) = 0;
    if ((*(s32 *)((s8 *)((temp_r6_28 + 4)) + (4))) != 0) {
        var_r1_68 = 0x500;
    } else {
        var_r1_68 = 0x100;
    }
    (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (var_r1_68 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F62EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F63BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F64AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F67EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F68C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
