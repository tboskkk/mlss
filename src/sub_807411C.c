#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807411C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807411C.s\"");
#else
extern s32 sub_80744B4;

void sub_807411C(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (temp_r0_11 << 0x10) <= 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80744B4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807413C.s\"");
#else
extern s32 sub_8074508;

void sub_807413C(void *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0xA8))) + 1;
    (*(s32 *)((s8 *)(arg0) + (0xA8))) = temp_r0_11;
    if (temp_r0_11 > 0x71) {
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = 0x72;
        (*(s16 *)((s8 *)((arg0 + 0xA8)) + (4))) = 0x12C;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8074508;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074164.s\"");
#else
#error "TODO: write sub_8074164 to match asm/nonmatching/sub_8074164.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80741EC.s\"");
#else
#error "TODO: write sub_80741EC to match asm/nonmatching/sub_80741EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074260.s\"");
#else
#error "TODO: write sub_8074260 to match asm/nonmatching/sub_8074260.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80742D4.s\"");
#else
#error "TODO: write sub_80742D4 to match asm/nonmatching/sub_80742D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80742FC.s\"");
#else
#error "TODO: write sub_80742FC to match asm/nonmatching/sub_80742FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074324.s\"");
#else
#error "TODO: write sub_8074324 to match asm/nonmatching/sub_8074324.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807438C.s\"");
#else
#error "TODO: write sub_807438C to match asm/nonmatching/sub_807438C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80743AC.s\"");
#else
#error "TODO: write sub_80743AC to match asm/nonmatching/sub_80743AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80743C4.s\"");
#else
#error "TODO: write sub_80743C4 to match asm/nonmatching/sub_80743C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807442C.s\"");
#else
#error "TODO: write sub_807442C to match asm/nonmatching/sub_807442C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80744B4.s\"");
#else
#error "TODO: write sub_80744B4 to match asm/nonmatching/sub_80744B4.s, then delete this #error"
#endif
