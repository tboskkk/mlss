#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8092E04 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092E04.s\"");
#else
extern s32 sub_808DD2C;
extern s32 sub_8092F68;

s32 sub_8092E04(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8092F68;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092E58.s\"");
#else
#error "TODO: write sub_8092E58 to match asm/nonmatching/sub_8092E58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092EA0.s\"");
#else
#error "TODO: write sub_8092EA0 to match asm/nonmatching/sub_8092EA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092EC4.s\"");
#else
#error "TODO: write sub_8092EC4 to match asm/nonmatching/sub_8092EC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092F08.s\"");
#else
#error "TODO: write sub_8092F08 to match asm/nonmatching/sub_8092F08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092F2C.s\"");
#else
#error "TODO: write sub_8092F2C to match asm/nonmatching/sub_8092F2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092F68.s\"");
#else
#error "TODO: write sub_8092F68 to match asm/nonmatching/sub_8092F68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092F90.s\"");
#else
#error "TODO: write sub_8092F90 to match asm/nonmatching/sub_8092F90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093000.s\"");
#else
#error "TODO: write sub_8093000 to match asm/nonmatching/sub_8093000.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093070.s\"");
#else
#error "TODO: write sub_8093070 to match asm/nonmatching/sub_8093070.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80930D8.s\"");
#else
#error "TODO: write sub_80930D8 to match asm/nonmatching/sub_80930D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093140.s\"");
#else
#error "TODO: write sub_8093140 to match asm/nonmatching/sub_8093140.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809316C.s\"");
#else
#error "TODO: write sub_809316C to match asm/nonmatching/sub_809316C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093194.s\"");
#else
#error "TODO: write sub_8093194 to match asm/nonmatching/sub_8093194.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809326C.s\"");
#else
#error "TODO: write sub_809326C to match asm/nonmatching/sub_809326C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093350.s\"");
#else
#error "TODO: write sub_8093350 to match asm/nonmatching/sub_8093350.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093450.s\"");
#else
#error "TODO: write sub_8093450 to match asm/nonmatching/sub_8093450.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093580.s\"");
#else
#error "TODO: write sub_8093580 to match asm/nonmatching/sub_8093580.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093724.s\"");
#else
#error "TODO: write sub_8093724 to match asm/nonmatching/sub_8093724.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80937FC.s\"");
#else
#error "TODO: write sub_80937FC to match asm/nonmatching/sub_80937FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80938E4.s\"");
#else
#error "TODO: write sub_80938E4 to match asm/nonmatching/sub_80938E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80939E4.s\"");
#else
#error "TODO: write sub_80939E4 to match asm/nonmatching/sub_80939E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093B14.s\"");
#else
#error "TODO: write sub_8093B14 to match asm/nonmatching/sub_8093B14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093CBC.s\"");
#else
#error "TODO: write sub_8093CBC to match asm/nonmatching/sub_8093CBC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093D0C.s\"");
#else
#error "TODO: write sub_8093D0C to match asm/nonmatching/sub_8093D0C.s, then delete this #error"
#endif
