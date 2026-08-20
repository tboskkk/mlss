#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804794C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804794C.s\"");
#else
u16* sub_804794C(u16* param_1, u16 param_2) {
    *param_1 = param_2;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047958.s\"");
#else
#error "TODO: write sub_8047958 to match asm/nonmatching/sub_8047958.s, then delete this #error"
#endif
