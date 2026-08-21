#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806D770 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D770.s\"");
#else
extern s32 sub_806D7D0;

void sub_806D770(void *arg0) {
    void *temp_r1_9;

    temp_r1_9 = *(void **)0x03000E3C;
    (*(s32 *)((s8 *)(temp_r1_9) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x10)));
    (*(s32 *)((s8 *)(temp_r1_9) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x14)));
    (*(s32 *)((s8 *)(temp_r1_9) + (0x18))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x18)));
    (*(u8 *)((s8 *)(arg0) + (0x75))) = (u8) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75))) - 1);
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x75))) = (s8) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75))) + 5);
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(u8 *)((s8 *)(arg0) + (0x75))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75)));
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x75))) = (s8) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75))) + 1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806D7D0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D7D0.s\"");
#else
#error "TODO: write sub_806D7D0 to match asm/nonmatching/sub_806D7D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D9F8.s\"");
#else
#error "TODO: write sub_806D9F8 to match asm/nonmatching/sub_806D9F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DAF0.s\"");
#else
#error "TODO: write sub_806DAF0 to match asm/nonmatching/sub_806DAF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DBD4.s\"");
#else
#error "TODO: write sub_806DBD4 to match asm/nonmatching/sub_806DBD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DCB4.s\"");
#else
#error "TODO: write sub_806DCB4 to match asm/nonmatching/sub_806DCB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DD48.s\"");
#else
#error "TODO: write sub_806DD48 to match asm/nonmatching/sub_806DD48.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DE28.s\"");
#else
#error "TODO: write sub_806DE28 to match asm/nonmatching/sub_806DE28.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DF2C.s\"");
#else
#error "TODO: write sub_806DF2C to match asm/nonmatching/sub_806DF2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E108.s\"");
#else
#error "TODO: write sub_806E108 to match asm/nonmatching/sub_806E108.s, then delete this #error"
#endif
