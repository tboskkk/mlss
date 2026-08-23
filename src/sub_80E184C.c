#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E184C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E184C.s\"");
#else
void sub_80E184C(void *arg0, s32 arg1) {
    s32 temp_r0_10;
    s32 temp_r1_12;

    temp_r0_10 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    temp_r1_12 = (*(s32 *)((s8 *)(arg0) + (0xC))) + temp_r0_10;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r1_12;
    if (temp_r0_10 < 0) {
        if (temp_r1_12 < 0xFFFF8000) {
            goto block_4;
        }
    } else if ((s32) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8) < temp_r1_12) {
block_4:
        (*(s16 *)((s8 *)(arg0) + (0x16))) = 0;
    }
}
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

s32 sub_807BC90();                              /* extern */
s32 sub_8084338(u16, s16, s32, s32);                /* extern */
s32 sub_80E1AB0(void *);                        /* extern */

void sub_80E18D8(void *arg0) {
    s32 temp_r4_15;
    void *temp_r1_8;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (0xC)));
    temp_r4_15 = sub_8084338((*(u16 *)((s8 *)(temp_r1_8) + (0))), (*(s16 *)((s8 *)(temp_r1_8) + (2))), 2, 1);
    sub_807BC90();
    (*(s32 *)((s8 *)(arg0) + (8))) = temp_r4_15;
    (*(s32 (**)(void *))((s8 *)(arg0) + (4))) = sub_80E1AB0;
    sub_80E1AB0(arg0);
}
