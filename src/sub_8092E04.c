#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8092E04 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092E04.s\"");
#else
extern void sub_8092F68();
extern void sub_808DD2C();

void sub_8092E04(void* p0) {
    u8* r3 = (u8*)p0 + 0x77;
    u8 r2 = *(r3);
    u8 r1 = ~(r2 & 0x41);
    u8 r2_2 = ~(r2 & 0x21);
    *(r3) = r1 & r2_2;
    
    u32* r1_ptr = (u32*)((u8*)p0 + 0x28);
    u32 r1_val = *(r1_ptr);
    u32 r4 = r1_val + (0x8A << 1);
    
    u32* r2_ptr = (u32*)0x03000FF4;
    u32 r3_val = *(r2_ptr);
    u32 r1_val2 = r1_val + 0xEC;
    u16 r2_val = ~(u16)(r1_val2 + 0x114);
    u32 r1_val3 = (r2_val << 4) - r2_val;
    r1_val3 <<= 2;
    u32 r3_val2 = r3_val + r1_val3;
    
    u16 r1_val4 = *(u16*)((u8*)r3_val2 + 0x2C);
    *(u32*)((u8*)r4) = r1_val4;
    
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_8092F68;
    *(u32*)((u8*)p0 + 0x68) = (u32)sub_808DD2C;
}
#endif
