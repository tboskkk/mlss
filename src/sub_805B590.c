#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805B590 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805B590.s\"");
#else
#error "TODO: write sub_805B590 to match asm/nonmatching/sub_805B590.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805B618.s\"");
#else
#error "TODO: write sub_805B618 to match asm/nonmatching/sub_805B618.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805B6C4.s\"");
#else
#error "TODO: write sub_805B6C4 to match asm/nonmatching/sub_805B6C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805B7F0.s\"");
#else
#error "TODO: write sub_805B7F0 to match asm/nonmatching/sub_805B7F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805B8BC.s\"");
#else
#error "TODO: write sub_805B8BC to match asm/nonmatching/sub_805B8BC.s, then delete this #error"
#endif
