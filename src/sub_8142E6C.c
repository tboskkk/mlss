#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8142E6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142E6C.s\"");
#else
#error "TODO: write sub_8142E6C to match asm/nonmatching/sub_8142E6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142EFC.s\"");
#else
#error "TODO: write sub_8142EFC to match asm/nonmatching/sub_8142EFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142F74.s\"");
#else
#error "TODO: write sub_8142F74 to match asm/nonmatching/sub_8142F74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142FC8.s\"");
#else
#error "TODO: write sub_8142FC8 to match asm/nonmatching/sub_8142FC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8143058.s\"");
#else
#error "TODO: write sub_8143058 to match asm/nonmatching/sub_8143058.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81430CC.s\"");
#else
#error "TODO: write sub_81430CC to match asm/nonmatching/sub_81430CC.s, then delete this #error"
#endif
