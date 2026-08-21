#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161A38 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161A38.s\"");
#else
#error "TODO: write sub_8161A38 to match asm/nonmatching/sub_8161A38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161A58.s\"");
#else
#error "TODO: write sub_8161A58 to match asm/nonmatching/sub_8161A58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161AAC.s\"");
#else
#error "TODO: write sub_8161AAC to match asm/nonmatching/sub_8161AAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161B94.s\"");
#else
#error "TODO: write sub_8161B94 to match asm/nonmatching/sub_8161B94.s, then delete this #error"
#endif
