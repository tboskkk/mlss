#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7ADC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7ADC.s\"");
#else
void sub_80F7ADC(s16 arg0, s16 arg1, s16 arg2)
{
    s32 var0;
    s32 var1;
    u8* ptr0;
    u8* ptr1;
    
    var0 = arg2;
    var0 <<= 24;
    var0 >>= 24;
    var1 = arg1;
    var1 <<= 16;
    var1 >>= 16;
    if (var1 > 7)
    {
        ptr1 = (u8*)0x03000FDC;
        var0 *= 0xD0;
        ptr1 = *(u8**)ptr1;
        var0 += *(s32*)(ptr1 + 0x00);
        var1 = 0xC0;
        var1 <<= 2;
        var0 += var1;
    }
    else
    {
        ptr0 = (u8*)0x03000FD8;
        ptr0 = *(u8**)ptr0;
        var1 <<= 2;
        ptr0 += 0x58;
        ptr0 += var1;
        ptr0 = *(u8**)ptr0;
        ptr0 += 0x08;
    }
    *ptr0 = (u8)var0 + 0xC5;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7B1C.s\"");
#else
#error "TODO: write sub_80F7B1C to match asm/nonmatching/sub_80F7B1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7BB4.s\"");
#else
#error "TODO: write sub_80F7BB4 to match asm/nonmatching/sub_80F7BB4.s, then delete this #error"
#endif
