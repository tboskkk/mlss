#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8086150 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086150.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086318.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086424.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80865F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086700.s\"");
#else
s32 sub_807B7A8(void *);                        /* extern */
s32 sub_807FF48(s32, void *);                   /* extern */

s32 sub_8086700(void *arg0) {
    s32 temp_r1_11;
    u8 temp_r1_25;
    void *temp_r2_16;

    temp_r1_11 = 6 & (*(u8 *)((s8 *)(arg0) + (0x76)));
    if ((temp_r1_11 != 6) && (temp_r1_11 != 2)) {
        temp_r2_16 = (*(void **)((s8 *)(arg0) + (0x28)));
        if (temp_r2_16 != NULL) {
            temp_r1_25 = 2 & (*(u8 *)((s8 *)(temp_r2_16) + (0x111)));
            if (temp_r1_25 == 0) {
                (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x08087441;
                (*(s32 *)((s8 *)(arg0) + (0x80))) = (s32) temp_r1_25;
                sub_807FF48(0x0808742D, temp_r2_16);
                (*(u8 *)((s8 *)(temp_r2_16) + (0x111))) = (u8) ((*(u8 *)((s8 *)(temp_r2_16) + (0x111))) | 1);
                sub_807B7A8((*(void **)((s8 *)(arg0) + (0x28))));
                return 1;
            }
        }
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086764.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086858.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
