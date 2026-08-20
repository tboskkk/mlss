#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E184C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E184C.s\"");
#else
#error "TODO: write sub_80E184C to match asm/nonmatching/sub_80E184C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1880.s\"");
#else
void sub_80E1880(u32* p0, u16 p1, u16 p2)
{
    u32* r4;
    u32* r3;
    u16* r2;
    u16 r0;
    u16 r1;
    
    r4 = (u32*)((u8*)p0 + 0x08);
    r3 = *(u32**)r4;
    
    if (r3 == NULL)
        goto _080E18CE;
        
    if (p1 == 0)
        goto _080E18BC;
        
    r2 = (u16*)((u8*)p0 + 0x08);
    r0 = *(u16*)(r2 + 0x02);
    r1 = *(u16*)(r2 + 0x00);
    
    if ((*(u8*)((u8*)r3 + 0x11) & 0x40) != 0)
        r0 = *(u16*)(r3 + 0x00) - *(u16*)(r2 + 0x00);
    else
        r0 = *(u16*)(r2 + 0x00) + *(u16*)(r3 + 0x00);
        
    *(u16*)(r3 + 0x00) = r0;
    
    r0 = *(u16*)((u8*)r3 + 0x02) + *(u16*)(r2 + 0x02);
    *(u16*)((u8*)r3 + 0x02) = r0;
    
_080E18BC:
    if (p2 == 0)
        goto _080E18CE;
        
    r2 = (u16*)((u8*)p0 + 0x08);
    r0 = *(u16*)(r2 + 0x04);
    *(u16*)((u8*)r3 + 0x04) = r0;
    
    r0 = *(u16*)(r2 + 0x06);
    *(u16*)((u8*)r3 + 0x06) = r0;
    
_080E18CE:
    return;
}
#endif
