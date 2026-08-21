#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8824 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8824.s\"");
#else
void sub_80F8824(u32* p0, u32* p1, u32** p2)
{
    u32 r3 = (u32)p0;
    u32 r5 = (u32)p1;
    u32 r0;
    u32 r1;
    u32 r4 = 0;
    
    r0 = *(u32*)((u8*)p2);
    r0 += 1;
    r0 <<= 24;
    r1 = r0 >> 24;
    
    r0 = *(u32*)((u8*)p2);
    if (r0 != 0)
        goto _080F8856;
        
    r0 = *(u32*)(r3 + 0x2C);
    r1 <<= 8;
    r0 += r1;
    r0 += 0xA0;
    r0 = *(u16*)r0;
    
    r1 = 0x00000FF7;
    r1 &= r0;
    r0 = r1;
    r0 |= r1;
    r4 = r0 >> 31;
    
_080F8856:
    r0 = *(u32*)((u8*)p2 + 0x00);
    if (r4 == r0)
    {
        r0 = *(u32*)((u8*)p2 + 0x04);
        *(u32*)(r5) = r0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_btl_return.s\"");
#else
#error "TODO: write script_cmd_btl_return to match asm/nonmatching/script_cmd_btl_return.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F889C.s\"");
#else
#error "TODO: write sub_80F889C to match asm/nonmatching/sub_80F889C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8900.s\"");
#else
#error "TODO: write sub_80F8900 to match asm/nonmatching/sub_80F8900.s, then delete this #error"
#endif
