#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801AA0C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AA0C.s\"");
#else
s32 sub_801AEDC();                                  /* extern */

s32 sub_801AA0C(u8 arg0) {
    u32 temp_r5_12;
    u8 temp_r4_8;

    temp_r4_8 = arg0;
    temp_r5_12 = (u32) (*(u32 *)((s8 *)((void *)0x03000D18) + (8))) >> 0x1C;
    if ((sub_801AEDC() << 0x18) == 0) {
        switch (temp_r4_8) {                        /* irregular */
        case 2:
            (*(s32 *)((s8 *)((void *)0x03000D18) + (0xC))) = (s32) (((u32) ((*(u32 *)((s8 *)((void *)0x03000D18) + (8))) * 0x10) >> 8) & 1);
            if (temp_r5_12 != 1) {
                goto block_8;
            }
block_13:
            return 0;
        case 3:
            if (temp_r5_12 == 2) {
                if ((*(s32 *)((s8 *)((void *)0x03000D18) + (0xC))) != ((u32) ((*(u32 *)((s8 *)((void *)0x03000D18) + (8))) * 0x10) >> 8)) {
                    goto block_8;
                }
                goto block_13;
            }
            goto block_8;
        case 4:
            if (temp_r5_12 == 3) {
                goto block_13;
            }
            goto block_8;
        }
    } else {
block_8:
        return 1;
    }
}
#endif
