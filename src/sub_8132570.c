#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8132570 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132570.s\"");
#else
#error "TODO: write sub_8132570 to match asm/nonmatching/sub_8132570.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132594.s\"");
#else
#error "TODO: write sub_8132594 to match asm/nonmatching/sub_8132594.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81325E8.s\"");
#else
#error "TODO: write sub_81325E8 to match asm/nonmatching/sub_81325E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132650.s\"");
#else
#error "TODO: write sub_8132650 to match asm/nonmatching/sub_8132650.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132678.s\"");
#else
#error "TODO: write sub_8132678 to match asm/nonmatching/sub_8132678.s, then delete this #error"
#endif
