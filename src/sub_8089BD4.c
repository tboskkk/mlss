#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8089BD4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089BD4.s\"");
#else
extern s32 sub_8089F44;

void sub_8089BD4(void *arg0) {
    u16 temp_r0_17;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    temp_r0_17 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_17;
    if ((s32) (temp_r0_17 << 0x10) <= 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8089F44;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089C00.s\"");
#else
#error "TODO: write sub_8089C00 to match asm/nonmatching/sub_8089C00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089C88.s\"");
#else
#error "TODO: write sub_8089C88 to match asm/nonmatching/sub_8089C88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089D10.s\"");
#else
#error "TODO: write sub_8089D10 to match asm/nonmatching/sub_8089D10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089D88.s\"");
#else
#error "TODO: write sub_8089D88 to match asm/nonmatching/sub_8089D88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089DD4.s\"");
#else
#error "TODO: write sub_8089DD4 to match asm/nonmatching/sub_8089DD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089E4C.s\"");
#else
#error "TODO: write sub_8089E4C to match asm/nonmatching/sub_8089E4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089EC4.s\"");
#else
#error "TODO: write sub_8089EC4 to match asm/nonmatching/sub_8089EC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089F44.s\"");
#else
#error "TODO: write sub_8089F44 to match asm/nonmatching/sub_8089F44.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089FA4.s\"");
#else
#error "TODO: write sub_8089FA4 to match asm/nonmatching/sub_8089FA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A01C.s\"");
#else
#error "TODO: write sub_808A01C to match asm/nonmatching/sub_808A01C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A098.s\"");
#else
#error "TODO: write sub_808A098 to match asm/nonmatching/sub_808A098.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A0B0.s\"");
#else
#error "TODO: write sub_808A0B0 to match asm/nonmatching/sub_808A0B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A0DC.s\"");
#else
#error "TODO: write sub_808A0DC to match asm/nonmatching/sub_808A0DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A128.s\"");
#else
#error "TODO: write sub_808A128 to match asm/nonmatching/sub_808A128.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A174.s\"");
#else
#error "TODO: write sub_808A174 to match asm/nonmatching/sub_808A174.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A194.s\"");
#else
#error "TODO: write sub_808A194 to match asm/nonmatching/sub_808A194.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A1B4.s\"");
#else
#error "TODO: write sub_808A1B4 to match asm/nonmatching/sub_808A1B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808A1D4.s\"");
#else
#error "TODO: write sub_808A1D4 to match asm/nonmatching/sub_808A1D4.s, then delete this #error"
#endif
