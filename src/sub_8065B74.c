#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8065B74 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065B74.s\"");
#else
extern s32 sub_8065C34;

s32 sub_8065B74(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 2;
    }
    (*(s32 *)((s8 *)(arg0) + (0xA8))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x9C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8065C34;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065BD8.s\"");
#else
#error "TODO: write sub_8065BD8 to match asm/nonmatching/sub_8065BD8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065C34.s\"");
#else
#error "TODO: write sub_8065C34 to match asm/nonmatching/sub_8065C34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065C5C.s\"");
#else
#error "TODO: write sub_8065C5C to match asm/nonmatching/sub_8065C5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065CA0.s\"");
#else
#error "TODO: write sub_8065CA0 to match asm/nonmatching/sub_8065CA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065CC4.s\"");
#else
#error "TODO: write sub_8065CC4 to match asm/nonmatching/sub_8065CC4.s, then delete this #error"
#endif
