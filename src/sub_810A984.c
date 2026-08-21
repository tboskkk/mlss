#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810A984 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810A984.s\"");
#else
#error "TODO: write sub_810A984 to match asm/nonmatching/sub_810A984.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810AA24.s\"");
#else
#error "TODO: write sub_810AA24 to match asm/nonmatching/sub_810AA24.s, then delete this #error"
#endif
