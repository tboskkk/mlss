#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064B88 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064B88.s\"");
#else
extern void sub_8064C00();

void sub_8064B88(void* p0) {
    u32* ptr0 = (u32*)p0;
    u32* ptr1 = (u32*)((u8*)p0 + 0x08);
    u16* ptr2 = (u16*)((u8*)(*ptr1) + 0x0C);
    u32 val0 = *(u32*)((u8*)p0 + 0x10);
    u32 val1 = *(u32*)((u8*)p0 + 0x14);
    u32 val2 = *(u32*)((u8*)p0 + 0x38);
    u32 val3 = *(u32*)((u8*)p0 + 0x3C);
    u32* ptr3 = (u32*)((u8*)p0 + 0x10);
    u32* ptr4 = (u32*)((u8*)p0 + 0x14);
    u32* ptr5 = (u32*)((u8*)p0 + 0x4C);
    
    u32 temp = *(u32*)((u8*)p0 + 0x08);
    u16 temp2 = *(u16*)((u8*)(*(u32**)((u8*)p0 + 0x08)) + 0x0C);
    u32 temp3 = (0x80 << 5) + temp2;
    *(u16*)((u8*)(*(u32**)((u8*)p0 + 0x08)) + 0x0C) = temp3;
    
    u32* ptr6 = (u32*)((u8*)p0 + 0x9C);
    u32 val4 = *(u32*)((u8*)p0 + 0x10);
    u32 val5 = *(u32*)((u8*)ptr6 + 0x00);
    *(u32*)((u8*)p0 + 0x10) = val4 - val5;
    
    *(u32*)((u8*)ptr6 + 0x00) = *(u32*)((u8*)ptr6 + 0x00) - 0x11;
    
    u32* ptr7 = (u32*)((u8*)p0 + 0xA0);
    u32 val6 = *(u32*)((u8*)p0 + 0x14);
    u32 val7 = *(u32*)((u8*)ptr7 + 0x00);
    *(u32*)((u8*)p0 + 0x14) = val6 + val7;
    
    u32 val8 = *(u32*)((u8*)p0 + 0x10);
    if (val8 <= (0x80 << 7)) {
        u32* ptr8 = (u32*)((u8*)p0 + 0x84);
        u32 val9 = *(u32*)((u8*)ptr8 + 0x00);
        s32 diff1 = val9 - val2;
        if (diff1 < 0) {
            diff1 += 0xFF;
        }
        u16 result1 = diff1 >> 8;
        u32* ptr9 = (u32*)((u8*)p0 + 0xAE);
        *(u16*)((u8*)ptr9 + 0x00) = result1;
        
        u32* ptr10 = (u32*)((u8*)p0 + 0x88);
        u32 val10 = *(u32*)((u8*)ptr10 + 0x00);
        s32 diff2 = val10 - val3;
        if (diff2 < 0) {
            diff2 += 0xFF;
        }
        u16 result2 = diff2 >> 8;
        u32* ptr11 = (u32*)((u8*)p0 + 0xB0);
        *(u16*)((u8*)ptr11 + 0x00) = result2;
    }
    
    *ptr5 = (u32)sub_8064C00;
}
#endif
