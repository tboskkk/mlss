#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sprite_heap_free needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_heap_free.s\"");
#else
#error "TODO: write sprite_heap_free to match asm/nonmatching/sprite_heap_free.s, then delete this #error"
#endif
