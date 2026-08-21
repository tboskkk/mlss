#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8067A4C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_8067A4C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0x200);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) - (*(s32 *)((s8 *)(arg0) + (0x8C))));
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) + 0x66);
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067A84.s\"");
#else
#error "TODO: write sub_8067A84 to match asm/nonmatching/sub_8067A84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067C98.s\"");
#else
#error "TODO: write sub_8067C98 to match asm/nonmatching/sub_8067C98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067DC8.s\"");
#else
#error "TODO: write sub_8067DC8 to match asm/nonmatching/sub_8067DC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067E4C.s\"");
#else
#error "TODO: write sub_8067E4C to match asm/nonmatching/sub_8067E4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067F94.s\"");
#else
#error "TODO: write sub_8067F94 to match asm/nonmatching/sub_8067F94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806800C.s\"");
#else
#error "TODO: write sub_806800C to match asm/nonmatching/sub_806800C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068058.s\"");
#else
#error "TODO: write sub_8068058 to match asm/nonmatching/sub_8068058.s, then delete this #error"
#endif
