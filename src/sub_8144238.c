#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8144238 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144238.s\"");
#else
extern s32 sub_8143E90;

void sub_8144238(void *arg1, s32 **arg2) {
    void *temp_r1_10;

    temp_r1_10 = (*(void **)((s8 *)(arg1) + (0x294)));
    if (((*(u8 *)((s8 *)(temp_r1_10) + (0x23))) == 0) && ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) <= (s32) (s8) (*(u8 *)((s8 *)(temp_r1_10) + (0x20))))) {
        *arg2 = &sub_8143E90;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814426C.s\"");
#else
#error "TODO: write sub_814426C to match asm/nonmatching/sub_814426C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81442D4.s\"");
#else
#error "TODO: write sub_81442D4 to match asm/nonmatching/sub_81442D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814432C.s\"");
#else
#error "TODO: write sub_814432C to match asm/nonmatching/sub_814432C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814437C.s\"");
#else
#error "TODO: write sub_814437C to match asm/nonmatching/sub_814437C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81443D0.s\"");
#else
#error "TODO: write sub_81443D0 to match asm/nonmatching/sub_81443D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144428.s\"");
#else
#error "TODO: write sub_8144428 to match asm/nonmatching/sub_8144428.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814448C.s\"");
#else
#error "TODO: write sub_814448C to match asm/nonmatching/sub_814448C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144560.s\"");
#else
#error "TODO: write sub_8144560 to match asm/nonmatching/sub_8144560.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81446F8.s\"");
#else
#error "TODO: write sub_81446F8 to match asm/nonmatching/sub_81446F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814494C.s\"");
#else
#error "TODO: write sub_814494C to match asm/nonmatching/sub_814494C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144B98.s\"");
#else
#error "TODO: write sub_8144B98 to match asm/nonmatching/sub_8144B98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144CD4.s\"");
#else
#error "TODO: write sub_8144CD4 to match asm/nonmatching/sub_8144CD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144F4C.s\"");
#else
#error "TODO: write sub_8144F4C to match asm/nonmatching/sub_8144F4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8144FF0.s\"");
#else
#error "TODO: write sub_8144FF0 to match asm/nonmatching/sub_8144FF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145060.s\"");
#else
#error "TODO: write sub_8145060 to match asm/nonmatching/sub_8145060.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145290.s\"");
#else
#error "TODO: write sub_8145290 to match asm/nonmatching/sub_8145290.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145350.s\"");
#else
#error "TODO: write sub_8145350 to match asm/nonmatching/sub_8145350.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81454A8.s\"");
#else
#error "TODO: write sub_81454A8 to match asm/nonmatching/sub_81454A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81455DC.s\"");
#else
#error "TODO: write sub_81455DC to match asm/nonmatching/sub_81455DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814569C.s\"");
#else
#error "TODO: write sub_814569C to match asm/nonmatching/sub_814569C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81457C4.s\"");
#else
#error "TODO: write sub_81457C4 to match asm/nonmatching/sub_81457C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814585C.s\"");
#else
#error "TODO: write sub_814585C to match asm/nonmatching/sub_814585C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81458C8.s\"");
#else
#error "TODO: write sub_81458C8 to match asm/nonmatching/sub_81458C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145920.s\"");
#else
#error "TODO: write sub_8145920 to match asm/nonmatching/sub_8145920.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145968.s\"");
#else
#error "TODO: write sub_8145968 to match asm/nonmatching/sub_8145968.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81459FC.s\"");
#else
#error "TODO: write sub_81459FC to match asm/nonmatching/sub_81459FC.s, then delete this #error"
#endif
