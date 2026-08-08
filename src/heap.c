#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// init_heap needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_heap.s\"");
#else
#error "TODO: write init_heap to match asm/nonmatching/init_heap.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/free_heap_memory_8018C68.s\"");
#else
#error "TODO: write free_heap_memory_8018C68 to match asm/nonmatching/free_heap_memory_8018C68.s, then delete this #error"
#endif
