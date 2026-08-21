#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DBC3C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBC3C.s\"");
#else
#error "TODO: write sub_80DBC3C to match asm/nonmatching/sub_80DBC3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBC60.s\"");
#else
#error "TODO: write sub_80DBC60 to match asm/nonmatching/sub_80DBC60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBC84.s\"");
#else
#error "TODO: write sub_80DBC84 to match asm/nonmatching/sub_80DBC84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBCA4.s\"");
#else
#error "TODO: write sub_80DBCA4 to match asm/nonmatching/sub_80DBCA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBD18.s\"");
#else
#error "TODO: write sub_80DBD18 to match asm/nonmatching/sub_80DBD18.s, then delete this #error"
#endif
