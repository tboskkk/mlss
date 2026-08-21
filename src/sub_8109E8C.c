#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8109E8C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8109E8C.s\"");
#else
#error "TODO: write sub_8109E8C to match asm/nonmatching/sub_8109E8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8109F4C.s\"");
#else
#error "TODO: write sub_8109F4C to match asm/nonmatching/sub_8109F4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8109FEC.s\"");
#else
#error "TODO: write sub_8109FEC to match asm/nonmatching/sub_8109FEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810A240.s\"");
#else
#error "TODO: write sub_810A240 to match asm/nonmatching/sub_810A240.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810A648.s\"");
#else
#error "TODO: write sub_810A648 to match asm/nonmatching/sub_810A648.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810A78C.s\"");
#else
#error "TODO: write sub_810A78C to match asm/nonmatching/sub_810A78C.s, then delete this #error"
#endif
