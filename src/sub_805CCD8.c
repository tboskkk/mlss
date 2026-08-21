#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805CCD8 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_805CCD8(u32 param_1) {
    *(u8*)(param_1 + 0xA) = 0;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805CCE0.s\"");
#else
#error "TODO: write sub_805CCE0 to match asm/nonmatching/sub_805CCE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805CE78.s\"");
#else
#error "TODO: write sub_805CE78 to match asm/nonmatching/sub_805CE78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805D038.s\"");
#else
#error "TODO: write sub_805D038 to match asm/nonmatching/sub_805D038.s, then delete this #error"
#endif
