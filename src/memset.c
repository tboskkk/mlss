#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// memset needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/memset.s\"");
#else
void memset(void* dest, u8 value, size_t count) {
    u8* p0 = (u8*)dest;
    u8* p1 = p0;
    u32 p2 = count;
    u32 p3;
    u32 p4 = value;
    u32 p5 = (u32)p0;
    
    if (p2 <= 3) {
        goto _081DCDDE;
    }
    
    p0 = (u8*)(p5 & 3);
    if (p0 != 0) {
        goto _081DCDDE;
    }
    
    p1 = (u8*)p5;
    p4 = p4 & 0xFF;
    p3 = (p4 << 8) | p4;
    p3 = (p3 << 16) | p3;
    
    if (p2 <= 0x0F) {
        goto _081DCDD2;
    }
    
_081DCDBE:
    *(u32*)p1 = p3;
    p1 += 4;
    *(u32*)p1 = p3;
    p1 += 4;
    *(u32*)p1 = p3;
    p1 += 4;
    *(u32*)p1 = p3;
    p1 += 4;
    p2 -= 0x10;
    if (p2 <= 0x0F) {
        goto _081DCDD2;
    }
    goto _081DCDBE;
    
_081DCDCE:
    *(u32*)p1 = p3;
    p1 += 4;
    p2 -= 4;
    
_081DCDD2:
    if (p2 > 3) {
        goto _081DCDCE;
    }
    
    p0 = p1;
    
_081DCDDE:
    p3 = p2;
    p2--;
    if (p3 != 0) {
        *(u8*)p0 = p4;
        p0++;
        goto _081DCDDE;
    }
}
#endif
