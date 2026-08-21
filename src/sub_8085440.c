#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8085440 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085440.s\"");
#else
#error "TODO: write sub_8085440 to match asm/nonmatching/sub_8085440.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80854F8.s\"");
#else
#error "TODO: write sub_80854F8 to match asm/nonmatching/sub_80854F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808552C.s\"");
#else
#error "TODO: write sub_808552C to match asm/nonmatching/sub_808552C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085A6C.s\"");
#else
#error "TODO: write sub_8085A6C to match asm/nonmatching/sub_8085A6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085B38.s\"");
#else
#error "TODO: write sub_8085B38 to match asm/nonmatching/sub_8085B38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8085ED0.s\"");
#else
#error "TODO: write sub_8085ED0 to match asm/nonmatching/sub_8085ED0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086090.s\"");
#else
#error "TODO: write sub_8086090 to match asm/nonmatching/sub_8086090.s, then delete this #error"
#endif
