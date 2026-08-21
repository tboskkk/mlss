#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816FBD0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816FBD0.s\"");
#else
#error "TODO: write sub_816FBD0 to match asm/nonmatching/sub_816FBD0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816FE48.s\"");
#else
#error "TODO: write sub_816FE48 to match asm/nonmatching/sub_816FE48.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81700E4.s\"");
#else
#error "TODO: write sub_81700E4 to match asm/nonmatching/sub_81700E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81701A8.s\"");
#else
#error "TODO: write sub_81701A8 to match asm/nonmatching/sub_81701A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8170264.s\"");
#else
#error "TODO: write sub_8170264 to match asm/nonmatching/sub_8170264.s, then delete this #error"
#endif
