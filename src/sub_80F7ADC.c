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
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7BB4.s\"");
#else
s32 sub_80F7BB4(void *arg0, void *arg1, s32 *arg2) {
    s32 temp_r3_17;
    u32 temp_r0_31;
    u32 var_r2_9;
    void *var_r1_11;

    var_r2_9 = 0;
    var_r1_11 = *(*(void ***)((s8 *)(arg0) + (0x28)));
loop_1:
    if (((*(u8 *)((s8 *)(var_r1_11) + (0xF))) != 0) && ((temp_r3_17 = *arg2, ((*(u8 *)((s8 *)(var_r1_11) + (0xC))) == temp_r3_17)) || (temp_r3_17 == 0x3F))) {
        (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
        return 0;
    }
    temp_r0_31 = (var_r2_9 << 0x10) + 0x10000;
    var_r1_11 += 0x10;
    var_r2_9 = temp_r0_31 >> 0x10;
    if ((s32) ((s32) temp_r0_31 >> 0x10) > 3) {
        return 1;
    }
    goto loop_1;
}
#endif
