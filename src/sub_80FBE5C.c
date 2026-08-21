#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FBE5C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBE5C.s\"");
#else
s32 sub_80FBE5C(s32 arg0, void **arg1) {
    if (!(1 & (*(u8 *)((s8 *)(*arg1) + (0x1D6))))) {
        return 0;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBE7C.s\"");
#else
s32 sub_80FBE7C(s32 arg0, void **arg1) {
    u8 temp_r0_11;

    temp_r0_11 = (*(u8 *)((s8 *)(*arg1) + (0x1D6)));
    if (!(((u32) (temp_r0_11 << 0x1C) >> 0x1F) & ((u32) (temp_r0_11 << 0x1D) >> 0x1F))) {
        return 1;
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBEA0.s\"");
#else
#error "TODO: write sub_80FBEA0 to match asm/nonmatching/sub_80FBEA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBF10.s\"");
#else
#error "TODO: write sub_80FBF10 to match asm/nonmatching/sub_80FBF10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBF7C.s\"");
#else
#error "TODO: write sub_80FBF7C to match asm/nonmatching/sub_80FBF7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBFEC.s\"");
#else
#error "TODO: write sub_80FBFEC to match asm/nonmatching/sub_80FBFEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FC058.s\"");
#else
#error "TODO: write sub_80FC058 to match asm/nonmatching/sub_80FC058.s, then delete this #error"
#endif
