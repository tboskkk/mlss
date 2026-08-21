#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819B22C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B22C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B290.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B2E0.s\"");
#else
s32 sub_819B070(s32, u16 *);                    /* extern */

void sub_819B2E0(void) {
    s32 var_r5_7;
    u16 *var_r4_9;

    var_r5_7 = 0;
    var_r4_9 = *(u16 **)0x03007FF0;
    do {
        if (1 & *var_r4_9) {
            sub_819B070(var_r5_7, var_r4_9);
            *var_r4_9 &= 0xFFFE;
        }
        var_r5_7 += 1;
        var_r4_9 += 0x20;
    } while (var_r5_7 <= 0xB);
}
#endif
