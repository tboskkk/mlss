#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B650 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B650.s\"");
#else
void sub_813B650(u32* p0)
{
    u32* r2;
    u32* r3;
    u16 r0;
    u32* r1;
    s16 r4;
    s16 r1_2;
    
    r2 = p0;
    r3 = (u32*)((u8*)r2 + 0x2DE);
    r0 = *(u16*)((u8*)r3 + 0x00);
    if (r0 == 0)
        goto _0813B698;
    
    r1 = (u32*)((u8*)r2 + 0x242);
    r4 = *(s16*)((u8*)r1 + 0x00);
    *(u32*)((u8*)r2 + 0x0C) += r4;
    r1_2 = *(s16*)((u8*)r2 + 0x244);
    *(u32*)((u8*)r2 + 0x10) += r1_2;
    r0 = *(u16*)((u8*)r3 + 0x00);
    r0--;
    *(u16*)((u8*)r3 + 0x00) = r0;
    r0 = (r0 << 16) >> 16;
    r0 = (r0 ^ (r0 >> 31)) - (r0 >> 31);
    r0 >>= 31;
_0813B698:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B6A0.s\"");
#else
u32 sub_813B6A0(void *arg0) {
    u16 temp_r1_22;
    u16 temp_r1_25;

    if ((*(u16 *)((s8 *)(arg0) + (0x2DE))) != 0) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        temp_r1_22 = (*(u16 *)((s8 *)(arg0) + (0x2DE))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0x2DE))) = temp_r1_22;
        temp_r1_25 = temp_r1_22;
        return (u32) ((0 - temp_r1_25) | temp_r1_25) >> 0x1F;
    }
    return 0U;
}
#endif
