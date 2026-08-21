#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8072350 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072350.s\"");
#else
extern s32 sub_80722F8;

void sub_8072350(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (temp_r0_11 << 0x10) <= 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80722F8;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072370.s\"");
#else
extern s32 sub_8071B14;

void sub_8072370(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8071B14;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072390.s\"");
#else
#error "TODO: write sub_8072390 to match asm/nonmatching/sub_8072390.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072400.s\"");
#else
#error "TODO: write sub_8072400 to match asm/nonmatching/sub_8072400.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072428.s\"");
#else
#error "TODO: write sub_8072428 to match asm/nonmatching/sub_8072428.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807249C.s\"");
#else
#error "TODO: write sub_807249C to match asm/nonmatching/sub_807249C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072500.s\"");
#else
#error "TODO: write sub_8072500 to match asm/nonmatching/sub_8072500.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072528.s\"");
#else
#error "TODO: write sub_8072528 to match asm/nonmatching/sub_8072528.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072550.s\"");
#else
#error "TODO: write sub_8072550 to match asm/nonmatching/sub_8072550.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80725D0.s\"");
#else
#error "TODO: write sub_80725D0 to match asm/nonmatching/sub_80725D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072650.s\"");
#else
#error "TODO: write sub_8072650 to match asm/nonmatching/sub_8072650.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072678.s\"");
#else
#error "TODO: write sub_8072678 to match asm/nonmatching/sub_8072678.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80726D4.s\"");
#else
#error "TODO: write sub_80726D4 to match asm/nonmatching/sub_80726D4.s, then delete this #error"
#endif
