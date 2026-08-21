#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E19CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E19CC.s\"");
#else
s32 sub_80E19CC(s32 *arg0, s32 arg1) {
    *arg0 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
    return (arg1 * 2) + 0x0838F8B2;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E19EC.s\"");
#else
void sub_80E19EC(u32* p0)
{
    u16 temp1;
    u16 temp2;
    s16 temp3;
    s16 temp4;
    
    temp1 = *(u16*)((u8*)p0 + 0x12);
    temp2 = *(u16*)((u8*)p0 + 0x10);
    temp1 += temp2;
    *(u16*)((u8*)p0 + 0x10) = temp1;
    
    temp1 = *(u16*)((u8*)p0 + 0x14);
    temp2 = *(u16*)((u8*)p0 + 0x18);
    temp1 += temp2;
    *(u16*)((u8*)p0 + 0x18) = temp1;
    
    temp3 = *(s16*)((u8*)p0 + 0x10);
    if (temp3 < 0)
        temp3 += 0xFF;
    temp3 >>= 8;
    *(u16*)0x02000018 = temp3;
    
    temp4 = *(s16*)((u8*)p0 + 0x18);
    if (temp4 < 0)
        temp4 += 0xFF;
    temp4 >>= 8;
    *(u16*)0x0200001A = temp4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1A2C.s\"");
#else
void sub_80E1A2C(void) {
    s32 temp_r3_34;
    void *temp_r5_25;

    (*(s32 (**)())((s8 *)(*(void **)0x03000FD8) + (0x260)))();
    (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))) = (u16) (0xC5FF & (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))));
    (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))) = (u16) (0x7FFF & (*(u16 *)((s8 *)((void *)0x040000B0) + (0xA))));
    temp_r5_25 = *(void **)0x03000FD8;
    temp_r3_34 = *(s32 *)0x03000FDC;
    (*(s32 *)((s8 *)((void *)0x040000B0) + (0))) = (s32) (temp_r3_34 + ((((u32) ((*(u8 *)((s8 *)(temp_r5_25) + (0xB))) << 0x1A) >> 0x1F) * 0x280) + 0x3EF0));
    (*(s32 *)((s8 *)((void *)0x040000B0) + (4))) = 0x04000040;
    (*(s32 *)((s8 *)((void *)0x040000B0) + (8))) = 0xA6600001;
    *(s32 *)0x04000040 = (*(s32 *)((s8 *)(((((u32) ((*(u8 *)((s8 *)(temp_r5_25) + (0xB))) << 0x1A) >> 0x1F) * 0x280) + temp_r3_34)) + (0x3EF0)));
}
#endif
