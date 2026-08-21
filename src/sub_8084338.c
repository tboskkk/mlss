#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8084338 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084338.s\"");
#else
s32 sub_80842D8(void *);                        /* extern */

void *sub_8084338(u16 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_r2_37;
    void *temp_r0_26;

    temp_r0_26 = sub_8020DD0(0, arg0, arg3, -1, -1, -1, -1);
    sub_801E150(temp_r0_26, arg1, -1, 0, 0);
    temp_r2_37 = arg2 & 3;
    (*(u8 *)((s8 *)(temp_r0_26) + (0x1F))) = (u8) ((((((((-4 & (*(u8 *)((s8 *)(temp_r0_26) + (0x1F)))) | temp_r2_37) & ~0xC) | (temp_r2_37 * 4)) & ~0x30) | (temp_r2_37 * 0x10)) & 0x3F) | (arg2 << 6));
    if (arg3 == 1) {
        sub_80842D8(temp_r0_26);
    }
    return temp_r0_26;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80843C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80844C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084578.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084614.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
