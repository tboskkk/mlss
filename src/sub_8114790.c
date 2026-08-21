#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114790 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8114790(void *arg0) {
    s32 temp_r2_11;

    temp_r2_11 = 0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)));
    if (temp_r2_11 == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r2_11;
        (*(s8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)))) + (0x113))) = (s8) temp_r2_11;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81147B4.s\"");
#else
#error "TODO: write sub_81147B4 to match asm/nonmatching/sub_81147B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81147D0.s\"");
#else
#error "TODO: write sub_81147D0 to match asm/nonmatching/sub_81147D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114854.s\"");
#else
#error "TODO: write sub_8114854 to match asm/nonmatching/sub_8114854.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811488C.s\"");
#else
#error "TODO: write sub_811488C to match asm/nonmatching/sub_811488C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81148B8.s\"");
#else
#error "TODO: write sub_81148B8 to match asm/nonmatching/sub_81148B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_ybpa_process_8114B4C.s\"");
#else
#error "TODO: write init_ybpa_process_8114B4C to match asm/nonmatching/init_ybpa_process_8114B4C.s, then delete this #error"
#endif
