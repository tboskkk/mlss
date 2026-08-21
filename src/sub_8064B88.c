#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064B88 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064B88.s\"");
#else
extern s32 sub_8064C00;

void sub_8064B88(void *arg0) {
    s32 var_r0_39;
    s32 var_r0_52;
    void *temp_r1_8;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u16 *)((s8 *)(temp_r1_8) + (0xC))) = (u16) ((*(u16 *)((s8 *)(temp_r1_8) + (0xC))) + 0x1000);
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) - (*(s32 *)((s8 *)(arg0) + (0x9C))));
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x9C))) - 0x11);
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0xA0))));
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x10))) > 0x4000) {
        var_r0_39 = (*(s32 *)((s8 *)(arg0) + (0x84))) - (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r0_39 < 0) {
            var_r0_39 += 0xFF;
        }
        (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) (var_r0_39 >> 8);
        var_r0_52 = (*(s32 *)((s8 *)(arg0) + (0x88))) - (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r0_52 < 0) {
            var_r0_52 += 0xFF;
        }
        (*(s16 *)((s8 *)(arg0) + (0xB0))) = (s16) (var_r0_52 >> 8);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8064C00;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064C00.s\"");
#else
#error "TODO: write sub_8064C00 to match asm/nonmatching/sub_8064C00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064C80.s\"");
#else
#error "TODO: write sub_8064C80 to match asm/nonmatching/sub_8064C80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064CB0.s\"");
#else
#error "TODO: write sub_8064CB0 to match asm/nonmatching/sub_8064CB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064D20.s\"");
#else
#error "TODO: write sub_8064D20 to match asm/nonmatching/sub_8064D20.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064D64.s\"");
#else
#error "TODO: write sub_8064D64 to match asm/nonmatching/sub_8064D64.s, then delete this #error"
#endif
