#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815F8BC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F8BC.s\"");
#else
void sub_815F8BC(void* p0, s32 p1)
{
    *(u32*)((u8*)p0 + 0x04) = 0x08CDCF50;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F8F4.s\"");
#else
void *sub_815F8F4(void *arg0, void *arg1) {
    s32 temp_r0_13;
    s32 temp_r0_19;
    void *temp_r2_33;
    void *temp_r2_47;

    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCF70;
    temp_r0_13 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r0_13;
    (*(s32 *)((s8 *)(arg0) + (4))) = temp_r0_13;
    temp_r0_19 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_19;
    (*(s32 *)((s8 *)(arg0) + (8))) = temp_r0_19;
    (*(s16 *)((s8 *)(arg0) + (0x14))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x1C))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x20))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    temp_r2_33 = arg0 + 0x25;
    (*(u8 *)((s8 *)(arg0) + (0x25))) = (u8) (*(u8 *)((s8 *)(arg1) + (0xC)));
    (*(u8 *)((s8 *)(temp_r2_33) + (1))) = (u8) (*(u8 *)((s8 *)(arg1) + (6)));
    (*(u8 *)((s8 *)((temp_r2_33 + 1)) + (1))) = (u8) (*(u8 *)((s8 *)(arg1) + (7)));
    (*(u8 *)((s8 *)(arg0) + (0x28))) = (u8) (*(u8 *)((s8 *)(arg1) + (4)));
    temp_r2_47 = arg0 + 0x29;
    (*(u8 *)((s8 *)(arg0) + (0x29))) = (u8) (*(u8 *)((s8 *)(arg1) + (5)));
    (*(u8 *)((s8 *)(temp_r2_47) + (1))) = (u8) (*(u8 *)((s8 *)(arg1) + (8)));
    (*(u8 *)((s8 *)((temp_r2_47 + 1)) + (1))) = (u8) (*(u8 *)((s8 *)(arg1) + (9)));
    (*(u8 *)((s8 *)(arg0) + (0x2C))) = (u8) (*(u8 *)((s8 *)(arg1) + (0xA)));
    (*(u8 *)((s8 *)(arg0) + (0x2D))) = (u8) (*(u8 *)((s8 *)(arg1) + (0xB)));
    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x2E))) = 0;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F97C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
