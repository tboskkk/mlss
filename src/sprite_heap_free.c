#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sprite_heap_free needs.

asm_unified(".include \"asm/macros.inc\"");

void sprite_heap_free(s32 arg0) {
    void **temp_r0_24;
    void **temp_r0_39;
    void **temp_r3_12;
    void *temp_r2_10;
    void *temp_r4_11;

    if (arg0 != 0) {
        temp_r2_10 = (void *)(*(s32 *)(arg0 - 0x10));
        temp_r4_11 = (*(void **)((s8 *)(temp_r2_10) + (0)));
        temp_r3_12 = (*(void ***)((s8 *)(temp_r2_10) + (4)));
        (*(s8 *)((s8 *)(temp_r2_10) + (0xC))) = 0;
        if ((temp_r3_12 != NULL) && ((*(u8 *)((s8 *)(temp_r3_12) + (0xC))) == 0)) {
            (*(s32 *)((s8 *)(temp_r2_10) + (8))) = (s32) ((*(s32 *)((s8 *)(temp_r2_10) + (8))) + (*(s32 *)((s8 *)(temp_r3_12) + (8))));
            temp_r0_24 = (*(void ***)((s8 *)(temp_r3_12) + (4)));
            (*(void ***)((s8 *)(temp_r2_10) + (4))) = temp_r0_24;
            if (temp_r0_24 != NULL) {
                *temp_r0_24 = temp_r2_10;
            }
        }
        if ((temp_r4_11 != NULL) && ((*(u8 *)((s8 *)(temp_r4_11) + (0xC))) == 0)) {
            (*(s32 *)((s8 *)(temp_r4_11) + (8))) = (s32) ((*(s32 *)((s8 *)(temp_r4_11) + (8))) + (*(s32 *)((s8 *)(temp_r2_10) + (8))));
            temp_r0_39 = (*(void ***)((s8 *)(temp_r2_10) + (4)));
            (*(void ***)((s8 *)(temp_r4_11) + (4))) = temp_r0_39;
            if (temp_r0_39 != NULL) {
                (*(void **)((s8 *)(temp_r0_39) + (0))) = temp_r4_11;
            }
        }
    }
}
