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
u8 script_cmd_return(s32, s32);                     /* extern */

u8 script_cmd_btl_return(s32 arg0, s32 arg1, s32 *arg2) {
    void *temp_r1_13;

    if (*arg2 != 0) {
        temp_r1_13 = *(void **)0x03000FD8;
        (*(u8 *)((s8 *)(temp_r1_13) + (0x2BF))) = (u8) ((*(u8 *)((s8 *)(temp_r1_13) + (0x2BF))) | 2);
    }
    return script_cmd_return(arg0 + 0x1C, arg1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F889C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8900.s\"");
#else
s32 sub_80F8900(void *arg0, s32 *arg1, void *arg2, void *arg3) {
    s32 temp_r0_9;
    void *var_r3_0;

    var_r3_0 = arg3;
    temp_r0_9 = (*(s32 *)((s8 *)(arg2) + (0)));
    switch (temp_r0_9) {                            /* irregular */
    case 0:
        var_r3_0 = (*(void **)((s8 *)(arg0) + (0x2C)));
        break;
    case 1:
        var_r3_0 = (*(void **)((s8 *)(arg0) + (0x2C))) + (((*(s32 *)((s8 *)((arg2 + 4)) + (4))) << 8) + 0x100);
        break;
    }
    if (1 & (*(u16 *)((s8 *)(var_r3_0) + (0xA0)))) {
        *arg1 = (*(s32 *)((s8 *)(arg2) + (4)));
    }
    return 1;
}
#endif
