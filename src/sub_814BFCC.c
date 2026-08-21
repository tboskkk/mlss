#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814BFCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BFCC.s\"");
#else
extern s32 sub_8149660;
extern s32 sub_814BC68;

void sub_814BFCC(void *arg1, s32 **arg2) {
    s32 *var_r0_60;
    s32 temp_r2_33;
    u8 temp_r1_53;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x294)))) + (0x12)))) {
        (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) (-8 & (*(u8 *)((s8 *)(arg1) + (0x214))));
    }
    temp_r2_33 = (*(s32 *)((s8 *)(arg1) + (0x18))) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    (*(s32 *)((s8 *)(arg1) + (0x18))) = temp_r2_33;
    if (((*(s32 *)((s8 *)(arg1) + (0x24))) & 0x18000) || ((s32) ((*(s32 *)((s8 *)(arg1) + (0x14))) + temp_r2_33) <= (s32) (*(s32 *)((s8 *)(arg1) + (0x2D4))))) {
        temp_r1_53 = (*(u8 *)((s8 *)(arg1) + (0x1D8)));
        if (((temp_r1_53 << 0x1F) != 0) && ((s32) (temp_r1_53 << 0x1E) < 0)) {
            var_r0_60 = &sub_8149660;
        } else {
            var_r0_60 = &sub_814BC68;
        }
        *arg2 = var_r0_60;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C04C.s\"");
#else
#error "TODO: write sub_814C04C to match asm/nonmatching/sub_814C04C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C0CC.s\"");
#else
#error "TODO: write sub_814C0CC to match asm/nonmatching/sub_814C0CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C1AC.s\"");
#else
#error "TODO: write sub_814C1AC to match asm/nonmatching/sub_814C1AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C298.s\"");
#else
#error "TODO: write sub_814C298 to match asm/nonmatching/sub_814C298.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C47C.s\"");
#else
#error "TODO: write sub_814C47C to match asm/nonmatching/sub_814C47C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C5C4.s\"");
#else
#error "TODO: write sub_814C5C4 to match asm/nonmatching/sub_814C5C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C6F8.s\"");
#else
#error "TODO: write sub_814C6F8 to match asm/nonmatching/sub_814C6F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814C9E8.s\"");
#else
#error "TODO: write sub_814C9E8 to match asm/nonmatching/sub_814C9E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814CB90.s\"");
#else
#error "TODO: write sub_814CB90 to match asm/nonmatching/sub_814CB90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814CC84.s\"");
#else
#error "TODO: write sub_814CC84 to match asm/nonmatching/sub_814CC84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814CDAC.s\"");
#else
#error "TODO: write sub_814CDAC to match asm/nonmatching/sub_814CDAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814CEE8.s\"");
#else
#error "TODO: write sub_814CEE8 to match asm/nonmatching/sub_814CEE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D068.s\"");
#else
#error "TODO: write sub_814D068 to match asm/nonmatching/sub_814D068.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D1F8.s\"");
#else
#error "TODO: write sub_814D1F8 to match asm/nonmatching/sub_814D1F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D298.s\"");
#else
#error "TODO: write sub_814D298 to match asm/nonmatching/sub_814D298.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D35C.s\"");
#else
#error "TODO: write sub_814D35C to match asm/nonmatching/sub_814D35C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D514.s\"");
#else
#error "TODO: write sub_814D514 to match asm/nonmatching/sub_814D514.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D670.s\"");
#else
#error "TODO: write sub_814D670 to match asm/nonmatching/sub_814D670.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D7A8.s\"");
#else
#error "TODO: write sub_814D7A8 to match asm/nonmatching/sub_814D7A8.s, then delete this #error"
#endif
