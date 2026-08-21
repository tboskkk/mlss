#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80604E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80604E0.s\"");
#else
extern s32 sub_808750C;

void sub_80604E0(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (temp_r0_11 << 0x10) <= 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060500.s\"");
#else
#error "TODO: write sub_8060500 to match asm/nonmatching/sub_8060500.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060544.s\"");
#else
#error "TODO: write sub_8060544 to match asm/nonmatching/sub_8060544.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80605A4.s\"");
#else
#error "TODO: write sub_80605A4 to match asm/nonmatching/sub_80605A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80605CC.s\"");
#else
#error "TODO: write sub_80605CC to match asm/nonmatching/sub_80605CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80605F8.s\"");
#else
#error "TODO: write sub_80605F8 to match asm/nonmatching/sub_80605F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806062C.s\"");
#else
#error "TODO: write sub_806062C to match asm/nonmatching/sub_806062C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060694.s\"");
#else
#error "TODO: write sub_8060694 to match asm/nonmatching/sub_8060694.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80606F4.s\"");
#else
#error "TODO: write sub_80606F4 to match asm/nonmatching/sub_80606F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806081C.s\"");
#else
#error "TODO: write sub_806081C to match asm/nonmatching/sub_806081C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80608FC.s\"");
#else
#error "TODO: write sub_80608FC to match asm/nonmatching/sub_80608FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060A58.s\"");
#else
#error "TODO: write sub_8060A58 to match asm/nonmatching/sub_8060A58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060AF8.s\"");
#else
#error "TODO: write sub_8060AF8 to match asm/nonmatching/sub_8060AF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060B68.s\"");
#else
#error "TODO: write sub_8060B68 to match asm/nonmatching/sub_8060B68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060BB8.s\"");
#else
#error "TODO: write sub_8060BB8 to match asm/nonmatching/sub_8060BB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060C44.s\"");
#else
#error "TODO: write sub_8060C44 to match asm/nonmatching/sub_8060C44.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060CB8.s\"");
#else
#error "TODO: write sub_8060CB8 to match asm/nonmatching/sub_8060CB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060CE8.s\"");
#else
#error "TODO: write sub_8060CE8 to match asm/nonmatching/sub_8060CE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060D4C.s\"");
#else
#error "TODO: write sub_8060D4C to match asm/nonmatching/sub_8060D4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060DC4.s\"");
#else
#error "TODO: write sub_8060DC4 to match asm/nonmatching/sub_8060DC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060DEC.s\"");
#else
#error "TODO: write sub_8060DEC to match asm/nonmatching/sub_8060DEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060E4C.s\"");
#else
#error "TODO: write sub_8060E4C to match asm/nonmatching/sub_8060E4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060E90.s\"");
#else
#error "TODO: write sub_8060E90 to match asm/nonmatching/sub_8060E90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060F70.s\"");
#else
#error "TODO: write sub_8060F70 to match asm/nonmatching/sub_8060F70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8061050.s\"");
#else
#error "TODO: write sub_8061050 to match asm/nonmatching/sub_8061050.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80610D4.s\"");
#else
#error "TODO: write sub_80610D4 to match asm/nonmatching/sub_80610D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80611A8.s\"");
#else
#error "TODO: write sub_80611A8 to match asm/nonmatching/sub_80611A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806123C.s\"");
#else
#error "TODO: write sub_806123C to match asm/nonmatching/sub_806123C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80612B4.s\"");
#else
#error "TODO: write sub_80612B4 to match asm/nonmatching/sub_80612B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80612D4.s\"");
#else
#error "TODO: write sub_80612D4 to match asm/nonmatching/sub_80612D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80612FC.s\"");
#else
#error "TODO: write sub_80612FC to match asm/nonmatching/sub_80612FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8061354.s\"");
#else
#error "TODO: write sub_8061354 to match asm/nonmatching/sub_8061354.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80613FC.s\"");
#else
#error "TODO: write sub_80613FC to match asm/nonmatching/sub_80613FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8061428.s\"");
#else
#error "TODO: write sub_8061428 to match asm/nonmatching/sub_8061428.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8061458.s\"");
#else
#error "TODO: write sub_8061458 to match asm/nonmatching/sub_8061458.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8061480.s\"");
#else
#error "TODO: write sub_8061480 to match asm/nonmatching/sub_8061480.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80614B4.s\"");
#else
#error "TODO: write sub_80614B4 to match asm/nonmatching/sub_80614B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806153C.s\"");
#else
#error "TODO: write sub_806153C to match asm/nonmatching/sub_806153C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80615DC.s\"");
#else
#error "TODO: write sub_80615DC to match asm/nonmatching/sub_80615DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80616B8.s\"");
#else
#error "TODO: write sub_80616B8 to match asm/nonmatching/sub_80616B8.s, then delete this #error"
#endif
