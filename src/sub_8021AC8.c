#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8021AC8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021AC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021C24.s\"");
#else
s32 sprite_heap_free(u32);                      /* extern */
void *sub_8021A18(void *, s32);                     /* extern */

void sub_8021C24(void *arg0) {
    u32 temp_r1_31;
    void *temp_r0_18;
    void *temp_r0_44;

    if (((*(u32 *)((s8 *)(arg0) + (0x48))) != 0) && (4 & (*(u8 *)((s8 *)(arg0) + (0x13))))) {
        temp_r0_18 = sub_8021A18(arg0, 0);
        if (temp_r0_18 == NULL) {
            sprite_heap_free((*(u32 *)((s8 *)(arg0) + (0x48))));
        } else {
            (*(u8 *)((s8 *)(temp_r0_18) + (0x13))) = (u8) ((*(u8 *)((s8 *)(temp_r0_18) + (0x13))) | 4);
        }
    }
    temp_r1_31 = (*(u32 *)((s8 *)(arg0) + (0x44)));
    if (temp_r1_31 != 0) {
        if ((temp_r1_31 <= 0x07FFFFFFU) && (8 & (*(u8 *)((s8 *)(arg0) + (0x13))))) {
            temp_r0_44 = sub_8021A18(arg0, 1);
            if (temp_r0_44 == NULL) {
                sprite_heap_free((*(u32 *)((s8 *)(arg0) + (0x44))));
                return;
            }
            (*(u8 *)((s8 *)(temp_r0_44) + (0x13))) = (u8) ((*(u8 *)((s8 *)(temp_r0_44) + (0x13))) | 8);
        }
    } else if ((((*(u16 *)((s8 *)(arg0) + (0x2E))) + (*(u16 *)((s8 *)(arg0) + (0x30)))) == (*(u16 *)((s8 *)((void *)0x0203FFB8) + (8)))) && (sub_8021A18(arg0, 3) == NULL)) {
        (*(u16 *)((s8 *)((void *)0x0203FFB8) + (8))) = (u16) ((*(u16 *)((s8 *)((void *)0x0203FFB8) + (8))) - (*(u16 *)((s8 *)(arg0) + (0x30))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_heap_alloc.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
