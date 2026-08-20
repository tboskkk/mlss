#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FC54 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FC54.s\"");
#else
void sub_807FC54(u32 a0, u32 a1, u32 a2, u32 a3)
{
    u32 *r4;
    u32 *r5;
    u32 *r6;
    u32 *r0;
    u32 *r1;
    u32 *r2;
    u32 *r3;
    
    r4 = (u32*)a0;
    r5 = (u32*)a1;
    r6 = (u32*)a2;
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)r0[0];
    r0 = (u32*)(r0 + 0x93 * 4);
    r0 = (u32*)r0[0];
    r1 = (u32*)r0;
    r2 = (u32*)r1;
    r3 = (u32*)r2;
    
    sub_8082CCC(r4, r5, r6);
}
#endif
