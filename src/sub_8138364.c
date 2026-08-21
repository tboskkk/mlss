#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8138364 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138364.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138494.s\"");
#else
void sub_8138494(void *arg0) {
    s32 temp_r3_107;
    s32 temp_r3_69;

    if (!(0x20 & (*(u8 *)((s8 *)(arg0) + (0x216))))) {
        (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xC))) + (*(s32 *)((s8 *)(arg0) + (0x2BC))));
        (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + (*(s32 *)((s8 *)(arg0) + (0x2C0))));
        (*(s16 *)((s8 *)(arg0) + (0x242))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x2BC)));
        (*(s16 *)((s8 *)(arg0) + (0x244))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x2C0)));
        (*(s32 *)((s8 *)(arg0) + (0x2BC))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x2BC))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        (*(s32 *)((s8 *)(arg0) + (0x2C0))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x2C0))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x2BC))) > 0x600) {
            (*(s32 *)((s8 *)(arg0) + (0x2BC))) = 0x600;
        }
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x2C0))) > 0x600) {
            (*(s32 *)((s8 *)(arg0) + (0x2C0))) = 0x600;
        }
        (*(u16 *)((s8 *)(arg0) + (0x2DE))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x2DE))) + 1);
        temp_r3_69 = (*(s32 *)((s8 *)(arg0) + (0x2BC)));
        if (((temp_r3_69 > 0) && ((s32) ((*(s32 *)((s8 *)(arg0) + (0xC))) + 0x100) > (s32) (*(s32 *)((s8 *)(arg0) + (0x2CC))))) || ((temp_r3_69 < 0) && ((s32) ((*(s32 *)((s8 *)(arg0) + (0xC))) + 0xFFFFFF00) < (s32) (*(s32 *)((s8 *)(arg0) + (0x2CC))))) || (temp_r3_69 == 0)) {
            (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x2CC)));
        }
        temp_r3_107 = (*(s32 *)((s8 *)(arg0) + (0x2C0)));
        if (((temp_r3_107 > 0) && ((s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0x100) > (s32) (*(s32 *)((s8 *)(arg0) + (0x2D0))))) || ((temp_r3_107 < 0) && ((s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + 0xFFFFFF00) < (s32) (*(s32 *)((s8 *)(arg0) + (0x2D0))))) || (temp_r3_107 == 0)) {
            (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x2D0)));
        }
    }
}
#endif
