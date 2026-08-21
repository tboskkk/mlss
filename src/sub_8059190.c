#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059190 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059190.s\"");
#else
#error "TODO: write sub_8059190 to match asm/nonmatching/sub_8059190.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80592C8.s\"");
#else
#error "TODO: write sub_80592C8 to match asm/nonmatching/sub_80592C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805952C.s\"");
#else
#error "TODO: write sub_805952C to match asm/nonmatching/sub_805952C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059704.s\"");
#else
#error "TODO: write sub_8059704 to match asm/nonmatching/sub_8059704.s, then delete this #error"
#endif
