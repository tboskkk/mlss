#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8162968 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8162968.s\"");
#else
#error "TODO: write sub_8162968 to match asm/nonmatching/sub_8162968.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8162A2C.s\"");
#else
#error "TODO: write sub_8162A2C to match asm/nonmatching/sub_8162A2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8162AD4.s\"");
#else
#error "TODO: write sub_8162AD4 to match asm/nonmatching/sub_8162AD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8162C00.s\"");
#else
#error "TODO: write sub_8162C00 to match asm/nonmatching/sub_8162C00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8162CC0.s\"");
#else
#error "TODO: write sub_8162CC0 to match asm/nonmatching/sub_8162CC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8162DFC.s\"");
#else
#error "TODO: write sub_8162DFC to match asm/nonmatching/sub_8162DFC.s, then delete this #error"
#endif
