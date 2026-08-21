#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163BB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163BB8.s\"");
#else
u32 sub_8163BB8(void) {
    *(u16*)0x0300102C = 0;
    return 0;
}
#endif

s32 sub_8163BC4(void **arg0, s32 arg1) {
    s32 var_r3_8;
    void *var_r2_7;

    var_r2_7 = *arg0;
    var_r3_8 = 0;
    if (var_r2_7 != NULL) {
        do {
            if ((*(s32 *)((s8 *)(var_r2_7) + (0))) == arg1) {
                var_r3_8 += 1;
            }
            var_r2_7 = (*(void **)((s8 *)(var_r2_7) + (8)));
        } while (var_r2_7 != NULL);
    }
    return var_r3_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163BE4.s\"");
#else
#error "TODO: write sub_8163BE4 to match asm/nonmatching/sub_8163BE4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163C40.s\"");
#else
#error "TODO: write sub_8163C40 to match asm/nonmatching/sub_8163C40.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163C94.s\"");
#else
#error "TODO: write sub_8163C94 to match asm/nonmatching/sub_8163C94.s, then delete this #error"
#endif
