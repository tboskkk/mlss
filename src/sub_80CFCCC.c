#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80CFCCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CFCCC.s\"");
#else
#error "TODO: write sub_80CFCCC to match asm/nonmatching/sub_80CFCCC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CFDB8.s\"");
#else
#error "TODO: write sub_80CFDB8 to match asm/nonmatching/sub_80CFDB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80CFE80.s\"");
#else
#error "TODO: write sub_80CFE80 to match asm/nonmatching/sub_80CFE80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D003C.s\"");
#else
#error "TODO: write sub_80D003C to match asm/nonmatching/sub_80D003C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D0790.s\"");
#else
#error "TODO: write sub_80D0790 to match asm/nonmatching/sub_80D0790.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D086C.s\"");
#else
#error "TODO: write sub_80D086C to match asm/nonmatching/sub_80D086C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D08F8.s\"");
#else
#error "TODO: write sub_80D08F8 to match asm/nonmatching/sub_80D08F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D0AF8.s\"");
#else
#error "TODO: write sub_80D0AF8 to match asm/nonmatching/sub_80D0AF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D0BA0.s\"");
#else
#error "TODO: write sub_80D0BA0 to match asm/nonmatching/sub_80D0BA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D0C84.s\"");
#else
#error "TODO: write sub_80D0C84 to match asm/nonmatching/sub_80D0C84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D0D2C.s\"");
#else
#error "TODO: write sub_80D0D2C to match asm/nonmatching/sub_80D0D2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D0E84.s\"");
#else
#error "TODO: write sub_80D0E84 to match asm/nonmatching/sub_80D0E84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D15F4.s\"");
#else
#error "TODO: write sub_80D15F4 to match asm/nonmatching/sub_80D15F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D1758.s\"");
#else
#error "TODO: write sub_80D1758 to match asm/nonmatching/sub_80D1758.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D18AC.s\"");
#else
#error "TODO: write sub_80D18AC to match asm/nonmatching/sub_80D18AC.s, then delete this #error"
#endif
