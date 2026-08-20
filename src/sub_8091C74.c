#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8091C74 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091C74.s\"");
#else
extern void sub_8091DD8();
extern void sub_808DD2C();

void sub_8091C74(void* p0)
{
    u8* r3 = (u8*)p0 + 0x77;
    u8 r2 = *(r3);
    u8 r1 = -0x41 & r2;
    u8 r2_2 = -0x21 & r1;
    *(r3) = r2_2;
    u32* r1_ptr = (u32*)((u8*)p0 + 0x28);
    u32 r1_val = *(r1_ptr);
    u32 r2_val = 0x8A << 1;
    u32 r4 = r1_val + r2_val;
    u32* r2_ptr = (u32*)0x03000FF4;
    u32 r3_val = *(r2_ptr);
    u32 r1_val_2 = r1_val + 0xEC;
    u16 r2_val_2 = *(u16*)((u8*)r1_val_2 + 0x0);
    u16 r2_val_3 = ~r2_val_2;
    u32 r1_val_3 = (r2_val_3 << 4) - r2_val_3;
    u32 r1_val_4 = r1_val_3 << 2;
    u32 r3_val_2 = r3_val + r1_val_4;
    u16 r1_val_5 = *(u16*)((u8*)r3_val_2 + 0x2C);
    *(u32*)((u8*)r4 + 0x0) = r1_val_5;
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_8091DD8;
    *(u32*)((u8*)p0 + 0x68) = (u32)sub_808DD2C;
}
#endif
