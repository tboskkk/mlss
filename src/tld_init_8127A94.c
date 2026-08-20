#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// tld_init_8127A94 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/tld_init_8127A94.s\"");
#else
void tld_init_8127A94(u32* p0, s16 p1)
{
    u32* r4 = p0;
    s16 r1 = p1;
    
    r1 <<= 24;
    r1 >>= 24;
    process_add(r1);
    
    *(u32*)((u8*)r4 + 0x18) = (u32)0x08CDC3C8;
}
#endif
