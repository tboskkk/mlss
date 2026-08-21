#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E5118 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5118.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5298.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E53E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5780.s\"");
#else
void sub_80E5780(void) {
    s32 temp_r0_19;
    s32 temp_r3_24;
    s32 var_r2_20;

    (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))) = (u16) (0xC5FF & (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))));
    (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))) = (u16) (0x7FFF & (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))));
    temp_r0_19 = *(s32 *)0x03000FB0;
    var_r2_20 = temp_r0_19 * 4;
    temp_r3_24 = *(s32 *)0x03000FA8;
    (*(s32 *)((s8 *)((void *)0x040000B0) + (0))) = (s32) (*(s32 *)0x03000FA4 + (temp_r0_19 * 0x280 * temp_r3_24));
    (*(s32 *)((s8 *)((void *)0x040000B0) + (4))) = (s32) ((*(s32 *)0x03000FAC * 4) + 0x04000010);
    if (var_r2_20 < 0) {
        var_r2_20 += 3;
    }
    (*(s32 *)((s8 *)((void *)0x040000B0) + (8))) = (s32) ((var_r2_20 >> 2) | 0xA6600000);
    *(s32 *)0x03000FA8 = temp_r3_24 ^ 1;
}
#endif
