#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81396A8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81396A8.s\"");
#else
#error "TODO: write sub_81396A8 to match asm/nonmatching/sub_81396A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81396D8.s\"");
#else
#error "TODO: write sub_81396D8 to match asm/nonmatching/sub_81396D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139708.s\"");
#else
#error "TODO: write sub_8139708 to match asm/nonmatching/sub_8139708.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139758.s\"");
#else
#error "TODO: write sub_8139758 to match asm/nonmatching/sub_8139758.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81397CC.s\"");
#else
#error "TODO: write sub_81397CC to match asm/nonmatching/sub_81397CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813980C.s\"");
#else
#error "TODO: write sub_813980C to match asm/nonmatching/sub_813980C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139880.s\"");
#else
#error "TODO: write sub_8139880 to match asm/nonmatching/sub_8139880.s, then delete this #error"
#endif
