#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029804 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029804.s\"");
#else
void sub_8029804(void *arg0) {
    void *temp_r1_18;

    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-3 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    temp_r1_18 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_18) + (0x351))) = (u8) ((*(u8 *)((s8 *)(temp_r1_18) + (0x351))) | 0x40);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029830.s\"");
#else
void sub_8029830(void *arg0) {
    void *temp_r1_26;

    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x208))) | 2);
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x100)));
    temp_r1_26 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_26) + (0x351))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r1_26) + (0x351))));
}
#endif

void sub_8029878(void) {
    play_sfx_80195B4(0x50, -1);
}
