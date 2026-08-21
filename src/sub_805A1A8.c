#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805A1A8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A1A8.s\"");
#else
#error "TODO: write sub_805A1A8 to match asm/nonmatching/sub_805A1A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A230.s\"");
#else
#error "TODO: write sub_805A230 to match asm/nonmatching/sub_805A230.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A438.s\"");
#else
#error "TODO: write sub_805A438 to match asm/nonmatching/sub_805A438.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A618.s\"");
#else
#error "TODO: write sub_805A618 to match asm/nonmatching/sub_805A618.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A6EC.s\"");
#else
#error "TODO: write sub_805A6EC to match asm/nonmatching/sub_805A6EC.s, then delete this #error"
#endif
