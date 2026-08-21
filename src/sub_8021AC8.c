#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8021AC8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021AC8.s\"");
#else
#error "TODO: write sub_8021AC8 to match asm/nonmatching/sub_8021AC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021C24.s\"");
#else
#error "TODO: write sub_8021C24 to match asm/nonmatching/sub_8021C24.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_heap_alloc.s\"");
#else
#error "TODO: write sprite_heap_alloc to match asm/nonmatching/sprite_heap_alloc.s, then delete this #error"
#endif
