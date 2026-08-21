#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D9F34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9F34.s\"");
#else
extern s32 sub_80DA0E0;

void sub_80D9F34(void *arg0) {
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA0E0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9F50.s\"");
#else
#error "TODO: write sub_80D9F50 to match asm/nonmatching/sub_80D9F50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9FB0.s\"");
#else
#error "TODO: write sub_80D9FB0 to match asm/nonmatching/sub_80D9FB0.s, then delete this #error"
#endif
