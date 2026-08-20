#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804034C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804034C.s\"");
#else
void sub_804034C(u8* p0)
{
    u8 r1;
    u32 r0;
    u32 r2;
    u32 r3;
    
    r3 = (u32)p0;
    r1 = *(u8*)(r3 + 0x20C);
    r0 = r1 & 1;
    if (r0 == 0)
    {
        r0 = *(u32*)(r3 + 0x25C);
        r0 = *(u8*)(r3 + r0 + 0x216) & 0x20;
        if (r0 != 0)
            goto _080403BE;
        
        r0 = *(u32*)(r3 + 0x242);
        r0 = *(s16*)(r3 + r0);
        if (r0 == 0)
        {
            r0 = *(u32*)(r3 + 0x242);
            r0 = *(s16*)(r3 + r0);
            if (r0 == 0)
                goto _080403BC;
        }
        
        *(u16*)(r3 + 0x04) = *(u16*)(r3 + 0x04);
        goto _080403BE;
    }
    
_080403BC:
    *(u16*)(r3 + 0x04) = (u16)r0;
    
_080403BE:
    r0 = *(u32*)r3;
    r0 = *(u16*)(r3 + 0x04);
    return;
}
#endif
