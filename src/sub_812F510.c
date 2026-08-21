#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_812F510 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812F510.s\"");
#else
#error "TODO: write sub_812F510 to match asm/nonmatching/sub_812F510.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812F528.s\"");
#else
#error "TODO: write sub_812F528 to match asm/nonmatching/sub_812F528.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812F550.s\"");
#else
#error "TODO: write sub_812F550 to match asm/nonmatching/sub_812F550.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812F5A4.s\"");
#else
#error "TODO: write sub_812F5A4 to match asm/nonmatching/sub_812F5A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812F5D8.s\"");
#else
#error "TODO: write sub_812F5D8 to match asm/nonmatching/sub_812F5D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812FC4C.s\"");
#else
#error "TODO: write sub_812FC4C to match asm/nonmatching/sub_812FC4C.s, then delete this #error"
#endif
