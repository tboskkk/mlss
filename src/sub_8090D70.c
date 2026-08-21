#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8090D70 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090D70.s\"");
#else
#error "TODO: write sub_8090D70 to match asm/nonmatching/sub_8090D70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090DC8.s\"");
#else
#error "TODO: write sub_8090DC8 to match asm/nonmatching/sub_8090DC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090E20.s\"");
#else
#error "TODO: write sub_8090E20 to match asm/nonmatching/sub_8090E20.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090E4C.s\"");
#else
#error "TODO: write sub_8090E4C to match asm/nonmatching/sub_8090E4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090E74.s\"");
#else
#error "TODO: write sub_8090E74 to match asm/nonmatching/sub_8090E74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090F14.s\"");
#else
#error "TODO: write sub_8090F14 to match asm/nonmatching/sub_8090F14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090FB8.s\"");
#else
#error "TODO: write sub_8090FB8 to match asm/nonmatching/sub_8090FB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091090.s\"");
#else
#error "TODO: write sub_8091090 to match asm/nonmatching/sub_8091090.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091174.s\"");
#else
#error "TODO: write sub_8091174 to match asm/nonmatching/sub_8091174.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091274.s\"");
#else
#error "TODO: write sub_8091274 to match asm/nonmatching/sub_8091274.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80913A4.s\"");
#else
#error "TODO: write sub_80913A4 to match asm/nonmatching/sub_80913A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091548.s\"");
#else
#error "TODO: write sub_8091548 to match asm/nonmatching/sub_8091548.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091620.s\"");
#else
#error "TODO: write sub_8091620 to match asm/nonmatching/sub_8091620.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091708.s\"");
#else
#error "TODO: write sub_8091708 to match asm/nonmatching/sub_8091708.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091808.s\"");
#else
#error "TODO: write sub_8091808 to match asm/nonmatching/sub_8091808.s, then delete this #error"
#endif
