#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808EC88 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EC88.s\"");
#else
extern s32 sub_808DD2C;
extern s32 sub_808ED18;

s32 sub_808EC88(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808ED18;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808ECDC.s\"");
#else
#error "TODO: write sub_808ECDC to match asm/nonmatching/sub_808ECDC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808ED18.s\"");
#else
#error "TODO: write sub_808ED18 to match asm/nonmatching/sub_808ED18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808ED40.s\"");
#else
#error "TODO: write sub_808ED40 to match asm/nonmatching/sub_808ED40.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EDA8.s\"");
#else
#error "TODO: write sub_808EDA8 to match asm/nonmatching/sub_808EDA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EE0C.s\"");
#else
#error "TODO: write sub_808EE0C to match asm/nonmatching/sub_808EE0C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EE30.s\"");
#else
#error "TODO: write sub_808EE30 to match asm/nonmatching/sub_808EE30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EE54.s\"");
#else
#error "TODO: write sub_808EE54 to match asm/nonmatching/sub_808EE54.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EEB8.s\"");
#else
#error "TODO: write sub_808EEB8 to match asm/nonmatching/sub_808EEB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EF1C.s\"");
#else
#error "TODO: write sub_808EF1C to match asm/nonmatching/sub_808EF1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EF8C.s\"");
#else
#error "TODO: write sub_808EF8C to match asm/nonmatching/sub_808EF8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EFFC.s\"");
#else
#error "TODO: write sub_808EFFC to match asm/nonmatching/sub_808EFFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F054.s\"");
#else
#error "TODO: write sub_808F054 to match asm/nonmatching/sub_808F054.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F0AC.s\"");
#else
#error "TODO: write sub_808F0AC to match asm/nonmatching/sub_808F0AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F0D8.s\"");
#else
#error "TODO: write sub_808F0D8 to match asm/nonmatching/sub_808F0D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F100.s\"");
#else
#error "TODO: write sub_808F100 to match asm/nonmatching/sub_808F100.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F1D8.s\"");
#else
#error "TODO: write sub_808F1D8 to match asm/nonmatching/sub_808F1D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F2A8.s\"");
#else
#error "TODO: write sub_808F2A8 to match asm/nonmatching/sub_808F2A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F398.s\"");
#else
#error "TODO: write sub_808F398 to match asm/nonmatching/sub_808F398.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F4C0.s\"");
#else
#error "TODO: write sub_808F4C0 to match asm/nonmatching/sub_808F4C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F658.s\"");
#else
#error "TODO: write sub_808F658 to match asm/nonmatching/sub_808F658.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F730.s\"");
#else
#error "TODO: write sub_808F730 to match asm/nonmatching/sub_808F730.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F800.s\"");
#else
#error "TODO: write sub_808F800 to match asm/nonmatching/sub_808F800.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808F8F0.s\"");
#else
#error "TODO: write sub_808F8F0 to match asm/nonmatching/sub_808F8F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FA18.s\"");
#else
#error "TODO: write sub_808FA18 to match asm/nonmatching/sub_808FA18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FBB4.s\"");
#else
#error "TODO: write sub_808FBB4 to match asm/nonmatching/sub_808FBB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FC04.s\"");
#else
#error "TODO: write sub_808FC04 to match asm/nonmatching/sub_808FC04.s, then delete this #error"
#endif
