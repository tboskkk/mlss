#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082158 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8080A40;

void sub_8082158(void *arg0) {
    s32 (*temp_r1_9)(void *);
    void *temp_r4_8;

    temp_r4_8 = (*(void **)((s8 *)(arg0) + (0xC)));
    temp_r1_9 = (*(s32 (**)(void *))((s8 *)(temp_r4_8) + (0x4C)));
    if ((temp_r1_9 == NULL) || (temp_r1_9(temp_r4_8), ((*(s32 (**)(void *))((s8 *)(temp_r4_8) + (0x4C))) == NULL))) {
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8080A40;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082180.s\"");
#else
#error "TODO: write sub_8082180 to match asm/nonmatching/sub_8082180.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80821C4.s\"");
#else
#error "TODO: write sub_80821C4 to match asm/nonmatching/sub_80821C4.s, then delete this #error"
#endif
