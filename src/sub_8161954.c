#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161954 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161954.s\"");
#else
void *sub_8161954(void *arg0) {
    void *temp_r2_9;

    temp_r2_9 = arg0 + 8;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(temp_r2_9) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    (*(s32 *)((s8 *)((temp_r2_9 + 4)) + (8))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0))) = 0;
    (*(s16 *)((s8 *)(arg0) + (2))) = 0;
    (*(s16 *)((s8 *)(arg0) + (4))) = 0;
    (*(s16 *)((s8 *)(arg0) + (6))) = 0;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161974.s\"");
#else
#error "TODO: write sub_8161974 to match asm/nonmatching/sub_8161974.s, then delete this #error"
#endif
