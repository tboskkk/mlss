#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8093E50 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093E50.s\"");
#else
extern s32 sub_808DD2C;
extern s32 sub_8093EE0;

s32 sub_8093E50(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8093EE0;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093EA4.s\"");
#else
#error "TODO: write sub_8093EA4 to match asm/nonmatching/sub_8093EA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093EE0.s\"");
#else
#error "TODO: write sub_8093EE0 to match asm/nonmatching/sub_8093EE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093F08.s\"");
#else
#error "TODO: write sub_8093F08 to match asm/nonmatching/sub_8093F08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093F8C.s\"");
#else
#error "TODO: write sub_8093F8C to match asm/nonmatching/sub_8093F8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809400C.s\"");
#else
#error "TODO: write sub_809400C to match asm/nonmatching/sub_809400C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094070.s\"");
#else
#error "TODO: write sub_8094070 to match asm/nonmatching/sub_8094070.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094094.s\"");
#else
#error "TODO: write sub_8094094 to match asm/nonmatching/sub_8094094.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80940F8.s\"");
#else
#error "TODO: write sub_80940F8 to match asm/nonmatching/sub_80940F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809411C.s\"");
#else
#error "TODO: write sub_809411C to match asm/nonmatching/sub_809411C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809418C.s\"");
#else
#error "TODO: write sub_809418C to match asm/nonmatching/sub_809418C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80941FC.s\"");
#else
#error "TODO: write sub_80941FC to match asm/nonmatching/sub_80941FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094264.s\"");
#else
#error "TODO: write sub_8094264 to match asm/nonmatching/sub_8094264.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80942CC.s\"");
#else
#error "TODO: write sub_80942CC to match asm/nonmatching/sub_80942CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80942F8.s\"");
#else
#error "TODO: write sub_80942F8 to match asm/nonmatching/sub_80942F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094320.s\"");
#else
#error "TODO: write sub_8094320 to match asm/nonmatching/sub_8094320.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80943C0.s\"");
#else
#error "TODO: write sub_80943C0 to match asm/nonmatching/sub_80943C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094464.s\"");
#else
#error "TODO: write sub_8094464 to match asm/nonmatching/sub_8094464.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80944AC.s\"");
#else
#error "TODO: write sub_80944AC to match asm/nonmatching/sub_80944AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80944D0.s\"");
#else
#error "TODO: write sub_80944D0 to match asm/nonmatching/sub_80944D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094514.s\"");
#else
#error "TODO: write sub_8094514 to match asm/nonmatching/sub_8094514.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094538.s\"");
#else
#error "TODO: write sub_8094538 to match asm/nonmatching/sub_8094538.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094574.s\"");
#else
#error "TODO: write sub_8094574 to match asm/nonmatching/sub_8094574.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80945E4.s\"");
#else
#error "TODO: write sub_80945E4 to match asm/nonmatching/sub_80945E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094654.s\"");
#else
#error "TODO: write sub_8094654 to match asm/nonmatching/sub_8094654.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80946BC.s\"");
#else
#error "TODO: write sub_80946BC to match asm/nonmatching/sub_80946BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094724.s\"");
#else
#error "TODO: write sub_8094724 to match asm/nonmatching/sub_8094724.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094750.s\"");
#else
#error "TODO: write sub_8094750 to match asm/nonmatching/sub_8094750.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094778.s\"");
#else
#error "TODO: write sub_8094778 to match asm/nonmatching/sub_8094778.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094818.s\"");
#else
#error "TODO: write sub_8094818 to match asm/nonmatching/sub_8094818.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80948BC.s\"");
#else
#error "TODO: write sub_80948BC to match asm/nonmatching/sub_80948BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094904.s\"");
#else
#error "TODO: write sub_8094904 to match asm/nonmatching/sub_8094904.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094928.s\"");
#else
#error "TODO: write sub_8094928 to match asm/nonmatching/sub_8094928.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809496C.s\"");
#else
#error "TODO: write sub_809496C to match asm/nonmatching/sub_809496C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094990.s\"");
#else
#error "TODO: write sub_8094990 to match asm/nonmatching/sub_8094990.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80949CC.s\"");
#else
#error "TODO: write sub_80949CC to match asm/nonmatching/sub_80949CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094A3C.s\"");
#else
#error "TODO: write sub_8094A3C to match asm/nonmatching/sub_8094A3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094AAC.s\"");
#else
#error "TODO: write sub_8094AAC to match asm/nonmatching/sub_8094AAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094B14.s\"");
#else
#error "TODO: write sub_8094B14 to match asm/nonmatching/sub_8094B14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094B7C.s\"");
#else
#error "TODO: write sub_8094B7C to match asm/nonmatching/sub_8094B7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094BA8.s\"");
#else
#error "TODO: write sub_8094BA8 to match asm/nonmatching/sub_8094BA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094BD0.s\"");
#else
#error "TODO: write sub_8094BD0 to match asm/nonmatching/sub_8094BD0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094C70.s\"");
#else
#error "TODO: write sub_8094C70 to match asm/nonmatching/sub_8094C70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094D14.s\"");
#else
#error "TODO: write sub_8094D14 to match asm/nonmatching/sub_8094D14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094D5C.s\"");
#else
#error "TODO: write sub_8094D5C to match asm/nonmatching/sub_8094D5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094D80.s\"");
#else
#error "TODO: write sub_8094D80 to match asm/nonmatching/sub_8094D80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094DC4.s\"");
#else
#error "TODO: write sub_8094DC4 to match asm/nonmatching/sub_8094DC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094DE8.s\"");
#else
#error "TODO: write sub_8094DE8 to match asm/nonmatching/sub_8094DE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094E24.s\"");
#else
#error "TODO: write sub_8094E24 to match asm/nonmatching/sub_8094E24.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094E94.s\"");
#else
#error "TODO: write sub_8094E94 to match asm/nonmatching/sub_8094E94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094F04.s\"");
#else
#error "TODO: write sub_8094F04 to match asm/nonmatching/sub_8094F04.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094F6C.s\"");
#else
#error "TODO: write sub_8094F6C to match asm/nonmatching/sub_8094F6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094FD4.s\"");
#else
#error "TODO: write sub_8094FD4 to match asm/nonmatching/sub_8094FD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095000.s\"");
#else
#error "TODO: write sub_8095000 to match asm/nonmatching/sub_8095000.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095028.s\"");
#else
#error "TODO: write sub_8095028 to match asm/nonmatching/sub_8095028.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80950D0.s\"");
#else
#error "TODO: write sub_80950D0 to match asm/nonmatching/sub_80950D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809521C.s\"");
#else
#error "TODO: write sub_809521C to match asm/nonmatching/sub_809521C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80953D4.s\"");
#else
#error "TODO: write sub_80953D4 to match asm/nonmatching/sub_80953D4.s, then delete this #error"
#endif
