#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816B384 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B384.s\"");
#else
#error "TODO: write sub_816B384 to match asm/nonmatching/sub_816B384.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B3C4.s\"");
#else
void sub_816B3C4(u32* p0)
{
    *(u32*)((u8*)p0 + 0x18) = 0x08CDD1B0;
    process_remove();
    pop {r0};
    bx r0;
}
#endif
