#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801AA70 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AA70.s\"");
#else
void sub_801AA70(s32 r0, u32 r1, u32 r2, u32 r3)
{
    s32 r4;
    s32 r5;
    
    r4 = r0;
    r5 = r1;
    if ((r0 - 2) <= 4)
    {
        r0 = *(u32*)((r0 << 2) + 0x0801AA8C);
        (*(void(**)(void))r0)();
    }
    r0 = r3;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801ABE8.s\"");
#else
void sub_801ABE8(u16 arg0, u16 arg1, s32 arg2) {
    u16 temp_r4_9;
    u16 temp_r5_11;

    temp_r4_9 = arg0;
    temp_r5_11 = arg1;
    if ((6 & *(u8 *)0x03000BD4) == 2) {
        if (temp_r4_9 != 0) {
            (*(u8 *)((s8 *)((void *)0x03000D28) + (0))) = (u8) ((((-4 & (*(u8 *)((s8 *)((void *)0x03000D28) + (0)))) | 1) & ~4) | ((arg2 & 1) * 4));
            (*(u16 *)((s8 *)((void *)0x03000D28) + (2))) = temp_r5_11;
            (*(u16 *)((s8 *)((void *)0x03000D28) + (4))) = temp_r4_9;
            return;
        }
        if (1 & *(u8 *)0x03000BD7) {
            *(u8 *)0x03000D18 = (-0x31 & *(u8 *)0x03000D18) | 0x20;
        }
        (*(u8 *)((s8 *)((void *)0x03000D28) + (0))) = (u8) ((-4 & (*(u8 *)((s8 *)((void *)0x03000D28) + (0)))) | 2);
        (*(u16 *)((s8 *)((void *)0x03000D28) + (4))) = temp_r5_11;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AC7C.s\"");
#else
void sub_801AC7C(void) {
    u16 temp_r0_29;
    u16 temp_r0_62;
    u16 temp_r0_65;
    u32 temp_r1_18;
    u8 temp_r4_16;
    u8 var_r0_78;

    if ((6 & *(u8 *)0x03000BD4) == 2) {
        temp_r4_16 = (*(u8 *)((s8 *)((void *)0x03000D28) + (0)));
        temp_r1_18 = (u32) (temp_r4_16 << 0x1E) >> 0x1E;
        switch (temp_r1_18) {                       /* irregular */
        case 1:
            temp_r0_29 = (*(u16 *)((s8 *)((void *)0x03000D28) + (4))) - 1;
            (*(u16 *)((s8 *)((void *)0x03000D28) + (4))) = temp_r0_29;
            if ((temp_r0_29 << 0x10) == 0) {
                if (temp_r1_18 & *(u8 *)0x03000BD7) {
                    *(u32 *)0x03000D18 = (u8) ((-0x31 & *(u32 *)0x03000D18) | 0x20);
                }
                (*(u8 *)((s8 *)((void *)0x03000D28) + (0))) = (u8) ((-4 & (*(u8 *)((s8 *)((void *)0x03000D28) + (0)))) | 2);
                (*(u16 *)((s8 *)((void *)0x03000D28) + (4))) = (u16) (*(u16 *)((s8 *)((void *)0x03000D28) + (2)));
                return;
            }
            break;
        case 2:
            temp_r0_62 = (*(u16 *)((s8 *)((void *)0x03000D28) + (4)));
            if (temp_r0_62 != 0) {
                temp_r0_65 = temp_r0_62 - 1;
                (*(u16 *)((s8 *)((void *)0x03000D28) + (4))) = temp_r0_65;
                if ((temp_r0_65 << 0x10) == 0) {
                    if (!(4 & temp_r4_16)) {
                        var_r0_78 = -0x31 & *(u8 *)0x03000D18;
                    } else {
                        var_r0_78 = (-0x31 & *(u32 *)0x03000D18) | 0x10;
                    }
                    *(u8 *)0x03000D18 = var_r0_78;
                    (*(u8 *)((s8 *)((void *)0x03000D28) + (0))) = (u8) (-4 & temp_r4_16);
                }
            }
            break;
        }
    }
}
#endif
