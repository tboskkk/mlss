#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_coldef_ptr_by_idx needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/get_coldef_ptr_by_idx.s\"");
#else
u32* get_coldef_ptr_by_idx(u32 idx) {
    u32* ptr = (u32*)((u32)idx << 24);
    ptr += 0xA0;
    return ptr + (ptr[0] >> 16);
}
#endif
