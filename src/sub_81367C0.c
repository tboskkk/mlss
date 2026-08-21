#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81367C0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 process_add(void *, u8);                    /* extern */

void *sub_81367C0(void *arg0, u8 arg1) {
    process_add(arg0, arg1);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC4A0;
    return arg0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81367DC.s\"");
#else
#error "TODO: write sub_81367DC to match asm/nonmatching/sub_81367DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81368AC.s\"");
#else
#error "TODO: write sub_81368AC to match asm/nonmatching/sub_81368AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136A84.s\"");
#else
#error "TODO: write sub_8136A84 to match asm/nonmatching/sub_8136A84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136B30.s\"");
#else
#error "TODO: write sub_8136B30 to match asm/nonmatching/sub_8136B30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136C3C.s\"");
#else
#error "TODO: write sub_8136C3C to match asm/nonmatching/sub_8136C3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136D00.s\"");
#else
#error "TODO: write sub_8136D00 to match asm/nonmatching/sub_8136D00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136D80.s\"");
#else
#error "TODO: write sub_8136D80 to match asm/nonmatching/sub_8136D80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136EFC.s\"");
#else
#error "TODO: write sub_8136EFC to match asm/nonmatching/sub_8136EFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136FB4.s\"");
#else
#error "TODO: write sub_8136FB4 to match asm/nonmatching/sub_8136FB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81370C4.s\"");
#else
#error "TODO: write sub_81370C4 to match asm/nonmatching/sub_81370C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813729C.s\"");
#else
#error "TODO: write sub_813729C to match asm/nonmatching/sub_813729C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8137440.s\"");
#else
#error "TODO: write sub_8137440 to match asm/nonmatching/sub_8137440.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8137550.s\"");
#else
#error "TODO: write sub_8137550 to match asm/nonmatching/sub_8137550.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813774C.s\"");
#else
#error "TODO: write sub_813774C to match asm/nonmatching/sub_813774C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81378CC.s\"");
#else
#error "TODO: write sub_81378CC to match asm/nonmatching/sub_81378CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8137A4C.s\"");
#else
#error "TODO: write sub_8137A4C to match asm/nonmatching/sub_8137A4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8137BB0.s\"");
#else
#error "TODO: write sub_8137BB0 to match asm/nonmatching/sub_8137BB0.s, then delete this #error"
#endif
