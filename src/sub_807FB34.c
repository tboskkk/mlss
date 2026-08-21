#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FB34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FB34.s\"");
#else
#error "TODO: write sub_807FB34 to match asm/nonmatching/sub_807FB34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FB64.s\"");
#else
#error "TODO: write sub_807FB64 to match asm/nonmatching/sub_807FB64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FB78.s\"");
#else
#error "TODO: write sub_807FB78 to match asm/nonmatching/sub_807FB78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FBD8.s\"");
#else
#error "TODO: write sub_807FBD8 to match asm/nonmatching/sub_807FBD8.s, then delete this #error"
#endif
