#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8034FE8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8034FE8.s\"");
#else
s32 sub_80400B0(void *, s32, s32, s32);     /* extern */
s32 sub_8045A94(void *, s32, s32, s32, s32); /* extern */

void sub_8034FE8(void *arg0) {
    s32 var_r0_45;
    void *temp_r1_66;

    sub_80400B0((*(void **)((s8 *)(arg0) + (0x204))), 4, 0xEE >> ((u32) ((*(u8 *)((s8 *)(arg0) + (0xFB))) << 0x1D) >> 0x1F), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */));
    M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (4 & (*(u8 *)((s8 *)(arg0) + (0xFB)))) {
        var_r0_45 = 0x10;
    } else {
        var_r0_45 = 0xA;
    }
    sub_8045A94((*(void **)((s8 *)(arg0) + (0x204))), 2, 1, M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), var_r0_45);
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x23B))) = 0;
    temp_r1_66 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r1_66) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(temp_r1_66) + (0x20F))) | 4);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0x56;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0x56;
    (*(s32 *)((s8 *)(arg0) + (0x208))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x208))) & 0xFFFE7FFF);
    (*(u8 *)((s8 *)(arg0) + (0x20B))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20B))) | 0x80);
    play_sfx_80195B4(0x2B, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80350B4.s\"");
#else
#error "TODO: write sub_80350B4 to match asm/nonmatching/sub_80350B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8035974.s\"");
#else
#error "TODO: write sub_8035974 to match asm/nonmatching/sub_8035974.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8035B98.s\"");
#else
#error "TODO: write sub_8035B98 to match asm/nonmatching/sub_8035B98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8035DB0.s\"");
#else
#error "TODO: write sub_8035DB0 to match asm/nonmatching/sub_8035DB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8036E14.s\"");
#else
#error "TODO: write sub_8036E14 to match asm/nonmatching/sub_8036E14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8036F84.s\"");
#else
#error "TODO: write sub_8036F84 to match asm/nonmatching/sub_8036F84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8038140.s\"");
#else
#error "TODO: write sub_8038140 to match asm/nonmatching/sub_8038140.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80382CC.s\"");
#else
#error "TODO: write sub_80382CC to match asm/nonmatching/sub_80382CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039078.s\"");
#else
#error "TODO: write sub_8039078 to match asm/nonmatching/sub_8039078.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039250.s\"");
#else
#error "TODO: write sub_8039250 to match asm/nonmatching/sub_8039250.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039A00.s\"");
#else
#error "TODO: write sub_8039A00 to match asm/nonmatching/sub_8039A00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039B5C.s\"");
#else
#error "TODO: write sub_8039B5C to match asm/nonmatching/sub_8039B5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8039C9C.s\"");
#else
#error "TODO: write sub_8039C9C to match asm/nonmatching/sub_8039C9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803A438.s\"");
#else
#error "TODO: write sub_803A438 to match asm/nonmatching/sub_803A438.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803A584.s\"");
#else
#error "TODO: write sub_803A584 to match asm/nonmatching/sub_803A584.s, then delete this #error"
#endif
