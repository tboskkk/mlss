#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA6D4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA6D4.s\"");
#else
void sub_80EA6D4(u32* p0, u32* p1, u32* p2, u32* p3)
{
    u32* var1;
    u32* var2;
    u32* var3;
    u32 temp;
    
    var1 = p1;
    var2 = (u32*)((u8*)p0 + 0xC);
    var3 = *(u32**)var2;
    
    *(u32*)((u8*)var3) = 0;
    *(u32*)((u8*)p3) = 0;
    *(u32*)((u8*)p2) = 0;
    
    temp = *(u32*)((u8*)var1);
    if (temp > 9)
        goto loc_080EA75A;
    
    temp <<= 2;
    switch (temp)
    {
        case 0x0:
            *(u32*)((u8*)var3) = 0x080EA6F8;
            break;
        case 0x4:
            *(u32*)((u8*)var3) = 0x080EA70C;
            break;
        case 0x8:
            *(u32*)((u8*)var3) = 0x080EA710;
            break;
        case 0xC:
            *(u32*)((u8*)var3) = 0x080EA714;
            break;
        case 0x10:
            *(u32*)((u8*)var3) = 0x080EA71C;
            break;
        case 0x14:
            *(u32*)((u8*)var3) = 0x080EA718;
            break;
        case 0x18:
            *(u32*)((u8*)var3) = 0x080EA720;
            break;
        case 0x1C:
            *(u32*)((u8*)var3) = 0x080EA724;
            break;
        case 0x20:
            *(u32*)((u8*)var3) = 0x080EA72C;
            break;
        case 0x24:
            *(u32*)((u8*)var3) = 0x080EA730;
            break;
        case 0x28:
            *(u32*)((u8*)var3) = 0x080EA734;
            break;
        case 0x2C:
            *(u32*)((u8*)var3) = 0x080EA738;
            break;
        case 0x30:
            *(u32*)((u8*)var3) = 0x080EA73C;
            break;
        case 0x34:
            *(u32*)((u8*)var3) = 0x080EA740;
            break;
        case 0x38:
            *(u32*)((u8*)var3) = 0x080EA744;
            break;
        case 0x3C:
            *(u32*)((u8*)var3) = 0x080EA748;
            break;
        case 0x40:
            *(u32*)((u8*)var3) = 0x080EA74C;
            break;
        case 0x44:
            *(u32*)((u8*)var3) = 0x080EA750;
            break;
    }
    
    return;
    
loc_080EA75A:
    temp = *(u32*)((u8*)var1 + 0x04);
    if (temp == 0)
        goto loc_080EA772;
    
    temp = *(u32*)((u8*)p2);
    temp <<= 4;
    *(u32*)((u8*)p2) = temp;
    
    temp = *(u32*)((u8*)p3);
    temp <<= 4;
    *(u32*)((u8*)p3) = temp;
    
    temp = *(u32*)((u8*)var3);
    temp <<= 4;
    *(u32*)((u8*)var3) = temp;
    
loc_080EA772:
    return;
}
#endif
