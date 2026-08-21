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
