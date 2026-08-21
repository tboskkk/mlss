#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8063BF0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063BF0.s\"");
#else
extern s32 sub_808750C;

void sub_8063BF0(void *arg0) {
    s32 temp_r1_8;
    s32 var_r0_10;

    temp_r1_8 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    var_r0_10 = temp_r1_8 + 0xFFFFFE00;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_10;
    if (var_r0_10 < 0) {
        var_r0_10 = temp_r1_8 + 0xFFFFFEFF;
    }
    if ((s32) (var_r0_10 >> 8) < -0x20) {
        (*(s32 *)((s8 *)(arg0) + (0x10))) = 0x10000;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063C24.s\"");
#else
#error "TODO: write sub_8063C24 to match asm/nonmatching/sub_8063C24.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063C60.s\"");
#else
#error "TODO: write sub_8063C60 to match asm/nonmatching/sub_8063C60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063C8C.s\"");
#else
#error "TODO: write sub_8063C8C to match asm/nonmatching/sub_8063C8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063CC8.s\"");
#else
#error "TODO: write sub_8063CC8 to match asm/nonmatching/sub_8063CC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063F30.s\"");
#else
#error "TODO: write sub_8063F30 to match asm/nonmatching/sub_8063F30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063FC0.s\"");
#else
#error "TODO: write sub_8063FC0 to match asm/nonmatching/sub_8063FC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064184.s\"");
#else
#error "TODO: write sub_8064184 to match asm/nonmatching/sub_8064184.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064224.s\"");
#else
#error "TODO: write sub_8064224 to match asm/nonmatching/sub_8064224.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806424C.s\"");
#else
#error "TODO: write sub_806424C to match asm/nonmatching/sub_806424C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064274.s\"");
#else
#error "TODO: write sub_8064274 to match asm/nonmatching/sub_8064274.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064290.s\"");
#else
#error "TODO: write sub_8064290 to match asm/nonmatching/sub_8064290.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80642AC.s\"");
#else
#error "TODO: write sub_80642AC to match asm/nonmatching/sub_80642AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806432C.s\"");
#else
#error "TODO: write sub_806432C to match asm/nonmatching/sub_806432C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064354.s\"");
#else
#error "TODO: write sub_8064354 to match asm/nonmatching/sub_8064354.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064370.s\"");
#else
#error "TODO: write sub_8064370 to match asm/nonmatching/sub_8064370.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80643DC.s\"");
#else
#error "TODO: write sub_80643DC to match asm/nonmatching/sub_80643DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064424.s\"");
#else
#error "TODO: write sub_8064424 to match asm/nonmatching/sub_8064424.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806446C.s\"");
#else
#error "TODO: write sub_806446C to match asm/nonmatching/sub_806446C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064488.s\"");
#else
#error "TODO: write sub_8064488 to match asm/nonmatching/sub_8064488.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80644DC.s\"");
#else
#error "TODO: write sub_80644DC to match asm/nonmatching/sub_80644DC.s, then delete this #error"
#endif
