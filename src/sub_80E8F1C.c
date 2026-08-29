#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E8F1C needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80E8F1C(void *arg0, s32 arg1) {
    return (u32) ((arg1 - ((0xC & *(*(u16 **)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0x188)))) << 0xC)) << 0x10) >> 0x15;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8F38.s\"");
#else
s32 stop_sfx_80195A8(u16);                      /* extern */

void sub_80E8F38(s32 arg0, u16 arg1, u16 arg2) {
    u16 temp_r2_10;
    u16 temp_r5_8;

    temp_r5_8 = arg1;
    temp_r2_10 = arg2;
    switch (temp_r2_10) {                           /* irregular */
    case 0:
        if (temp_r5_8 != 0) {
            stop_sfx_80195A8(*(s32 *)(0x083B9512 + (temp_r5_8 * 2)));
            return;
        }
        return;
    case 1:
        if (temp_r5_8 != 0) {
            play_sfx_80195B4(*(s32 *)(0x083B9512 + (temp_r5_8 * 2)), -1);
            return;
        }
        break;
    case 2:
        if (temp_r5_8 != 0) {
            stop_sfx_80195A8(*(s32 *)(0x083B9512 + (temp_r5_8 * 2)));
            play_sfx_80195B4(*(s32 *)(0x083B9512 + ((temp_r5_8 + 7) * 2)), -1);
        }
        break;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8FB8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E906C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
