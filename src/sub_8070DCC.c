#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070DCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070DCC.s\"");
#else
#error "TODO: write sub_8070DCC to match asm/nonmatching/sub_8070DCC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070E4C.s\"");
#else
#error "TODO: write sub_8070E4C to match asm/nonmatching/sub_8070E4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070EC0.s\"");
#else
#error "TODO: write sub_8070EC0 to match asm/nonmatching/sub_8070EC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070EDC.s\"");
#else
#error "TODO: write sub_8070EDC to match asm/nonmatching/sub_8070EDC.s, then delete this #error"
#endif
