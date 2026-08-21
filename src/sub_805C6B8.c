#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805C6B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C6B8.s\"");
#else
#error "TODO: write sub_805C6B8 to match asm/nonmatching/sub_805C6B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C73C.s\"");
#else
#error "TODO: write sub_805C73C to match asm/nonmatching/sub_805C73C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C78C.s\"");
#else
#error "TODO: write sub_805C78C to match asm/nonmatching/sub_805C78C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C7B4.s\"");
#else
#error "TODO: write sub_805C7B4 to match asm/nonmatching/sub_805C7B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C824.s\"");
#else
#error "TODO: write sub_805C824 to match asm/nonmatching/sub_805C824.s, then delete this #error"
#endif
