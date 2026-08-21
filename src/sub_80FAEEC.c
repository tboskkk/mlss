#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FAEEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAEEC.s\"");
#else
u8 sub_80FAEEC(u8* param_1) {
    return param_1[0x24 + 0x9A1];
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAEFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAF28.s\"");
#else
s32 sub_80FAE34(void *);                        /* extern */

void sub_80FAF28(void *arg0) {
    u32 temp_r0_33;
    u32 var_r2_16;
    void **var_r1_21;
    void *temp_r0_24;

    if (1 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x24)))) + (0x9A3)))) {
        var_r2_16 = 0xC;
        var_r1_21 = (*(void ***)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0x158)));
        do {
            temp_r0_24 = *var_r1_21;
            if (temp_r0_24 != NULL) {
                (*(s8 *)((s8 *)(temp_r0_24) + (0x20))) = 0;
            }
            var_r1_21 += 0x40;
            temp_r0_33 = (var_r2_16 << 0x10) + 0xFFFF0000;
            var_r2_16 = temp_r0_33 >> 0x10;
        } while ((s32) temp_r0_33 > 0);
    }
    sub_80FAE34(arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAF8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAFD8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB080.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fobj_with_data_80FB128.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB448.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB6D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
