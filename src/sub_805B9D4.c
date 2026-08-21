#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805B9D4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805B9D4.s\"");
#else
#error "TODO: write sub_805B9D4 to match asm/nonmatching/sub_805B9D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805BED8.s\"");
#else
#error "TODO: write sub_805BED8 to match asm/nonmatching/sub_805BED8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805BFF0.s\"");
#else
#error "TODO: write sub_805BFF0 to match asm/nonmatching/sub_805BFF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C14C.s\"");
#else
#error "TODO: write sub_805C14C to match asm/nonmatching/sub_805C14C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C5F4.s\"");
#else
#error "TODO: write sub_805C5F4 to match asm/nonmatching/sub_805C5F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C644.s\"");
#else
#error "TODO: write sub_805C644 to match asm/nonmatching/sub_805C644.s, then delete this #error"
#endif
