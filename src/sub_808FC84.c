#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808FC84 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FC84.s\"");
#else
extern void sub_808FD14();
extern void sub_808DD2C();

void sub_808FC84(void* p0)
{
    u8* r3 = (u8*)p0 + 0x77;
    u8 r2 = *(r3);
    u8 r1 = -(0x41 & r2);
    u8 r0 = -(0x21 & r1);
    *(r3) = r0;
    u32* r1_ptr = (u32*)((u8*)p0 + 0x28);
    u32 r4 = *(r1_ptr) + (0x8A << 1);
    u32* r2_ptr = (u32*)0x03000FF4;
    u32 r3_val = *(r2_ptr);
    u32 r1_val = *(u32*)((u8*)p0 + 0xEC);
    s16 r2_sh = *(s16*)((u8*)r1_val + 0x00);
    u32 r1_calc = ((~r2_sh) << 4) - (~r2_sh);
    r1_calc <<= 2;
    u32* r3_ptr = (u32*)(r3_val + r1_calc);
    u16 r1_val_2 = *(u16*)((u8*)r3_ptr + 0x2C);
    *(u32*)((u8*)r4 + 0x00) = r1_val_2;
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_808FD14;
    *(u32*)((u8*)p0 + 0x68) = (u32)sub_808DD2C;
}
#endif
