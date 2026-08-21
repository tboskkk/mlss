#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DBD50 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBD50.s\"");
#else
#error "TODO: write sub_80DBD50 to match asm/nonmatching/sub_80DBD50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBD6C.s\"");
#else
#error "TODO: write sub_80DBD6C to match asm/nonmatching/sub_80DBD6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBD88.s\"");
#else
#error "TODO: write sub_80DBD88 to match asm/nonmatching/sub_80DBD88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBDE8.s\"");
#else
#error "TODO: write sub_80DBDE8 to match asm/nonmatching/sub_80DBDE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBE18.s\"");
#else
#error "TODO: write sub_80DBE18 to match asm/nonmatching/sub_80DBE18.s, then delete this #error"
#endif
