#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8086960 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086960.s\"");
#else
#error "TODO: write sub_8086960 to match asm/nonmatching/sub_8086960.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086A18.s\"");
#else
#error "TODO: write sub_8086A18 to match asm/nonmatching/sub_8086A18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086AF4.s\"");
#else
#error "TODO: write sub_8086AF4 to match asm/nonmatching/sub_8086AF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086BC4.s\"");
#else
#error "TODO: write sub_8086BC4 to match asm/nonmatching/sub_8086BC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086C64.s\"");
#else
#error "TODO: write sub_8086C64 to match asm/nonmatching/sub_8086C64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086D80.s\"");
#else
#error "TODO: write sub_8086D80 to match asm/nonmatching/sub_8086D80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8086E8C.s\"");
#else
#error "TODO: write sub_8086E8C to match asm/nonmatching/sub_8086E8C.s, then delete this #error"
#endif
