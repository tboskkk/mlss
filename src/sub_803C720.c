#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803C720 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C720.s\"");
#else
#error "TODO: write sub_803C720 to match asm/nonmatching/sub_803C720.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C788.s\"");
#else
#error "TODO: write sub_803C788 to match asm/nonmatching/sub_803C788.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C7D8.s\"");
#else
#error "TODO: write sub_803C7D8 to match asm/nonmatching/sub_803C7D8.s, then delete this #error"
#endif
