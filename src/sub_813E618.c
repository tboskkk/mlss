#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813E618 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E618.s\"");
#else
#error "TODO: write sub_813E618 to match asm/nonmatching/sub_813E618.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E738.s\"");
#else
#error "TODO: write sub_813E738 to match asm/nonmatching/sub_813E738.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E7CC.s\"");
#else
#error "TODO: write sub_813E7CC to match asm/nonmatching/sub_813E7CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813E974.s\"");
#else
#error "TODO: write sub_813E974 to match asm/nonmatching/sub_813E974.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813EBA8.s\"");
#else
#error "TODO: write sub_813EBA8 to match asm/nonmatching/sub_813EBA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813F6CC.s\"");
#else
#error "TODO: write sub_813F6CC to match asm/nonmatching/sub_813F6CC.s, then delete this #error"
#endif
