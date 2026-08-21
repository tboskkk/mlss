#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D694 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D694.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D6C4.s\"");
#else
s32 sub_81092B8(s32);                           /* extern */
s32 sub_810971C(s32);                           /* extern */

void sub_810D6C4(s32 arg0) {
    u16 temp_r0_16;
    void *temp_r0_9;

    temp_r0_9 = *(void **)0x03000FD8;
    temp_r0_16 = (*(u16 *)((s8 *)(temp_r0_9) + (0x314))) + 0xFFFFFC00;
    (*(u16 *)((s8 *)(temp_r0_9) + (0x314))) = temp_r0_16;
    if ((s32) (temp_r0_16 << 0x10) > 0) {
        sub_810971C(arg0);
        return;
    }
    (*(u16 *)((s8 *)(temp_r0_9) + (0x314))) = 0U;
    sub_81092B8(arg0);
    sub_810971C(arg0);
}
#endif
