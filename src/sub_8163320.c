#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163320 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163320.s\"");
#else
void sub_8163320(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0))) = 0x10;
    (*(s16 *)((s8 *)(arg0) + (2))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816332C.s\"");
#else
s32 sub_816332C(void *arg0) {
    s32 var_r1_13;
    s32 var_r1_26;
    s32 var_r1_39;
    s32 var_r1_52;
    void *temp_r1_21;
    void *temp_r1_34;
    void *temp_r1_47;
    void *temp_r1_8;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (0)));
    if (((*(s32 *)((s8 *)(temp_r1_8) + (0x44))) == 0) || (var_r1_13 = 0, ((*(s32 *)((s8 *)(temp_r1_8) + (0x40))) == 1))) {
        var_r1_13 = 1;
    }
    if (var_r1_13 != 0) {
        temp_r1_21 = (*(void **)((s8 *)(arg0) + (4)));
        if (((*(s32 *)((s8 *)(temp_r1_21) + (0x44))) == 0) || (var_r1_26 = 0, ((*(s32 *)((s8 *)(temp_r1_21) + (0x40))) == 1))) {
            var_r1_26 = 1;
        }
        if (var_r1_26 != 0) {
            temp_r1_34 = (*(void **)((s8 *)(arg0) + (8)));
            if (((*(s32 *)((s8 *)(temp_r1_34) + (0x44))) == 0) || (var_r1_39 = 0, ((*(s32 *)((s8 *)(temp_r1_34) + (0x40))) == 1))) {
                var_r1_39 = 1;
            }
            if (var_r1_39 != 0) {
                temp_r1_47 = (*(void **)((s8 *)(arg0) + (0xC)));
                if (((*(s32 *)((s8 *)(temp_r1_47) + (0x44))) == 0) || (var_r1_52 = 0, ((*(s32 *)((s8 *)(temp_r1_47) + (0x40))) == 1))) {
                    var_r1_52 = 1;
                }
                if (var_r1_52 == 0) {
                    goto block_16;
                }
                return 1;
            }
            goto block_16;
        }
        goto block_16;
    }
block_16:
    return 0;
}
#endif
