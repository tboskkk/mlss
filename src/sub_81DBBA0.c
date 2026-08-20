#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DBBA0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DBBA0.s\"");
#else
u32 sub_81DBBA0(u32* p0, u32* p1) {
    u32 r0 = *(u32*)((u8*)p0);
    u32 r1 = (r0 << 9) >> 9;
    u32 r2 = (r0 << 1) >> 24;
    u32 r3 = r0 >> 31;
    *(u32*)((u8*)p1 + 0x04) = r3;
    if (r1 != 0) {
        if (r1 == 0xFF) {
            if (r2 != 0) {
                u32 r0_1 = 0x80000000 & r2;
                *(u32*)((u8*)p1) = r0_1 ? 1 : 0;
            } else {
                *(u32*)((u8*)p1) = 4;
            }
        } else {
            u32 r0_2 = r1 - 0x7F;
            *(u32*)((u8*)p1 + 0x08) = r0_2;
            *(u32*)((u8*)p1) = 3;
            u32 r0_3 = r2 << 7;
            u32 r1_1 = 0x80000000;
            *(u32*)((u8*)p1 + 0x0C) = r0_3 | r1_1;
        }
    } else {
        if (r2 != 0) {
            u32 r4 = r2 - 0x7E;
            *(u32*)((u8*)p1 + 0x08) = r4;
            *(u32*)((u8*)p1) = 3;
            u32 r1_2 = 0x3FFFFFFF;
            if (r4 > r1_2) {
                goto _081DBC00;
            }
            u32 r0_4 = r4;
            do {
                r0_4--;
                r1_2 <<= 1;
            } while (r1_2 <= r1_2);
            *(u32*)((u8*)p1 + 0x08) = r0_4;
        } else {
            *(u32*)((u8*)p1) = 2;
        }
    }
_081DBC00:
    return *(u32*)((u8*)p1);
}
#endif
