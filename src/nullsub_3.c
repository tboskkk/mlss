#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_3 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_3(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081DE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081E2C.s\"");
#else
s32 sub_8082898();                              /* extern */
s32 sub_8082AAC();                              /* extern */

void sub_8081E2C(void *arg0) {
    u16 *temp_r4_8;
    u16 *var_r4_12;
    u16 temp_r0_11;
    u16 temp_r0_21;
    u16 temp_r0_28;

    temp_r4_8 = *(*(u16 ***)((s8 *)(arg0) + (0x6C)));
    if (temp_r4_8 != NULL) {
        temp_r0_11 = *temp_r4_8;
        var_r4_12 = temp_r4_8 + 2;
        if (temp_r0_11 != 0) {
            if (temp_r0_11 != 0xFFFF) {
loop_4:
                sub_8082898();
                temp_r0_21 = *var_r4_12;
                var_r4_12 += 2;
                if (temp_r0_21 != 0) {
                    if (temp_r0_21 == 0xFFFF) {
                        goto loop_6;
                    }
                    goto loop_4;
                }
            } else {
loop_6:
                temp_r0_28 = *var_r4_12;
                var_r4_12 += 2;
                if (temp_r0_28 != 0) {
                    sub_8082AAC();
                    goto loop_6;
                }
            }
        }
    }
}
#endif
