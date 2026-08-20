#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199D48 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199D48.s\"");
#else
u32 sub_8199D48(u32 arg0, u32 arg1) {
    u32 *ptr = (u32 *)0x03001070;
    ptr = (u32 *)((u8 *)ptr + arg1 * 4);
    arg0 = *ptr;
    *(u32 *)(arg0 + 4) = arg0;
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199D5C.s\"");
#else
#error "TODO: write sub_8199D5C to match asm/nonmatching/sub_8199D5C.s, then delete this #error"
#endif
