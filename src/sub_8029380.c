#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029380 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029380.s\"");
#else
s32 sub_80507E0(s32);                           /* extern */

void sub_8029380(void *arg0) {
    s32 *var_r6_15;
    s32 temp_r0_24;
    s32 var_r4_16;

    if ((*(u8 *)((s8 *)(arg0) + (0x112))) != 0) {
        var_r6_15 = arg0 + 0x30;
        var_r4_16 = 0;
        if ((s32) (*(u8 *)((s8 *)(arg0) + (0x113))) > 0) {
            do {
                temp_r0_24 = *var_r6_15;
                var_r6_15 += 4;
                sub_80507E0(temp_r0_24);
                var_r4_16 += 1;
            } while (var_r4_16 < (s32) (*(u8 *)((s8 *)(arg0) + (0x113))));
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80293B8.s\"");
#else
#error "TODO: write sub_80293B8 to match asm/nonmatching/sub_80293B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80293F8.s\"");
#else
#error "TODO: write sub_80293F8 to match asm/nonmatching/sub_80293F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029460.s\"");
#else
#error "TODO: write sub_8029460 to match asm/nonmatching/sub_8029460.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80294A0.s\"");
#else
#error "TODO: write sub_80294A0 to match asm/nonmatching/sub_80294A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802955C.s\"");
#else
#error "TODO: write sub_802955C to match asm/nonmatching/sub_802955C.s, then delete this #error"
#endif
