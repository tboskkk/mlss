#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815817C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815817C.s\"");
#else
u32* sub_815817C(u32* param_1) {
    param_1[0] = 0;
    param_1[1] = 0x08CDC570;
    param_1[2] = 0;
    param_1[3] = 0;
    param_1[4] = 0xFFFFFF80;
    param_1[5] = 0;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158198.s\"");
#else
u32* sub_8158198(u32* param_1) {
    *param_1 = 0x08CDCA30;
    *(param_1 + 1) = 0;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81581FC.s\"");
#else
#error "TODO: write sub_81581FC to match asm/nonmatching/sub_81581FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158220.s\"");
#else
#error "TODO: write sub_8158220 to match asm/nonmatching/sub_8158220.s, then delete this #error"
#endif
