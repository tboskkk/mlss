#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808225C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808225C.s\"");
#else
extern s32 sub_8081F84;

void sub_808225C(void *arg0) {
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8081F84;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808227C.s\"");
#else
#error "TODO: write sub_808227C to match asm/nonmatching/sub_808227C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80822D4.s\"");
#else
#error "TODO: write sub_80822D4 to match asm/nonmatching/sub_80822D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808231C.s\"");
#else
#error "TODO: write sub_808231C to match asm/nonmatching/sub_808231C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082370.s\"");
#else
#error "TODO: write sub_8082370 to match asm/nonmatching/sub_8082370.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80823C0.s\"");
#else
#error "TODO: write sub_80823C0 to match asm/nonmatching/sub_80823C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082584.s\"");
#else
#error "TODO: write sub_8082584 to match asm/nonmatching/sub_8082584.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80827F0.s\"");
#else
#error "TODO: write sub_80827F0 to match asm/nonmatching/sub_80827F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082898.s\"");
#else
#error "TODO: write sub_8082898 to match asm/nonmatching/sub_8082898.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082920.s\"");
#else
#error "TODO: write sub_8082920 to match asm/nonmatching/sub_8082920.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082994.s\"");
#else
#error "TODO: write sub_8082994 to match asm/nonmatching/sub_8082994.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082A28.s\"");
#else
#error "TODO: write sub_8082A28 to match asm/nonmatching/sub_8082A28.s, then delete this #error"
#endif
