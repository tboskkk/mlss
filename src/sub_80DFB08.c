#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DFB08 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DFB08.s\"");
#else
#error "TODO: write sub_80DFB08 to match asm/nonmatching/sub_80DFB08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DFBEC.s\"");
#else
#error "TODO: write sub_80DFBEC to match asm/nonmatching/sub_80DFBEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E01C4.s\"");
#else
#error "TODO: write sub_80E01C4 to match asm/nonmatching/sub_80E01C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E02C0.s\"");
#else
#error "TODO: write sub_80E02C0 to match asm/nonmatching/sub_80E02C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E0354.s\"");
#else
#error "TODO: write sub_80E0354 to match asm/nonmatching/sub_80E0354.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E045C.s\"");
#else
#error "TODO: write sub_80E045C to match asm/nonmatching/sub_80E045C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E05B0.s\"");
#else
#error "TODO: write sub_80E05B0 to match asm/nonmatching/sub_80E05B0.s, then delete this #error"
#endif
