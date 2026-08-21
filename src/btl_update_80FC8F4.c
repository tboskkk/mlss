#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// btl_update_80FC8F4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/btl_update_80FC8F4.s\"");
#else
#error "TODO: write btl_update_80FC8F4 to match asm/nonmatching/btl_update_80FC8F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FC91C.s\"");
#else
#error "TODO: write sub_80FC91C to match asm/nonmatching/sub_80FC91C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FC9A4.s\"");
#else
#error "TODO: write sub_80FC9A4 to match asm/nonmatching/sub_80FC9A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FCB9C.s\"");
#else
#error "TODO: write sub_80FCB9C to match asm/nonmatching/sub_80FCB9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FCC78.s\"");
#else
#error "TODO: write sub_80FCC78 to match asm/nonmatching/sub_80FCC78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FCD68.s\"");
#else
#error "TODO: write sub_80FCD68 to match asm/nonmatching/sub_80FCD68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FD09C.s\"");
#else
#error "TODO: write sub_80FD09C to match asm/nonmatching/sub_80FD09C.s, then delete this #error"
#endif
