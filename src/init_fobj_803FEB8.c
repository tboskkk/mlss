#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// init_fobj_803FEB8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fobj_803FEB8.s\"");
#else
s32 init_fobj_with_data_80FB128(u16, u8, void *); /* extern */
s32 sub_8047EFC(void *, s32, s32, s32, s32);    /* extern */

void *init_fobj_803FEB8(void *arg0, u16 arg1, u8 arg2) {
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDBDE8;
    (*(s8 *)((s8 *)(arg0) + (1))) = 0xFF;
    (*(s8 *)((s8 *)(arg0) + (0x29))) = -1;
    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20C))) | 1);
    (*(u8 *)((s8 *)(arg0) + (0x20E))) = (u8) ((-0x39 & (*(u8 *)((s8 *)(arg0) + (0x20E)))) | 8);
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20F))) | 2);
    (*(u8 *)((s8 *)(arg0) + (0x210))) = (u8) ((-2 & (*(u8 *)((s8 *)(arg0) + (0x210)))) | 2 | 4 | 8 | 0x40);
    (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (-8 & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
    (*(u8 *)((s8 *)(arg0) + (0x2B7))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x2B7))) | 0xF8);
    (*(u8 *)((s8 *)(arg0) + (0x2B8))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x2B8))) | 7);
    (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | 3);
    (*(u8 *)((s8 *)(arg0) + (0x214))) = (s32) (((s32) (*(u8 *)((s8 *)(arg0) + (0x214))) & 0xFFFE1FFF) | 0x1C000);
    (*(u8 *)((s8 *)(arg0) + (0x216))) = (u8) (((*(u8 *)((s8 *)(arg0) + (0x216))) | 2) & ~0xC);
    (*(s32 *)((s8 *)(arg0) + (0x230))) = -1;
    (*(s32 *)((s8 *)(arg0) + (0x234))) = -1;
    (*(s8 *)((s8 *)(arg0) + (0x238))) = -1;
    (*(s8 *)((s8 *)(arg0) + (0x239))) = 0x10;
    (*(s8 *)((s8 *)(arg0) + (0x23D))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x26C))) = 0xFFFF;
    (*(s8 *)((s8 *)(arg0) + (0x26E))) = -1;
    (*(s16 *)((s8 *)(arg0) + (0x268))) = -1;
    sub_8047EFC(arg0, 0x200, 0x200, 0x52C, 0x75);
    if (arg1 != -1U) {
        init_fobj_with_data_80FB128(arg1, arg2, arg0);
    }
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8040020.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80400B0.s\"");
#else
void sub_80400B0(void *arg0, s32 arg1, s32 arg2, u16 arg3) {
    s32 *var_r1_37;
    s32 *var_r2_34;
    s32 temp_r1_84;
    s32 temp_r4_72;
    s32 var_r0_41;
    s32 var_r0_96;
    s32 var_r1_74;
    s32 var_r3_113;
    s32 var_r6_73;

    if (arg2 == -1) {
        (*(s32 *)((s8 *)(arg0) + (0x248))) = (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    } else {
        (*(s32 *)((s8 *)(arg0) + (0x248))) = arg2;
    }
    switch (arg1) {                                 /* irregular */
    case -1:
        var_r2_34 = arg0 + 0x254;
        var_r1_37 = arg0 + 0x258;
        var_r0_41 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
block_9:
        *var_r1_37 = var_r0_41;
        *var_r2_34 = var_r0_41;
        break;
    case 0:
        (*(s32 *)((s8 *)(arg0) + (0x258))) = arg1;
        (*(s32 *)((s8 *)(arg0) + (0x254))) = arg1;
        break;
    case 30:
        var_r2_34 = arg0 + 0x254;
        var_r1_37 = arg0 + 0x258;
        var_r0_41 = 0x52C;
        goto block_9;
    default:
        temp_r4_72 = arg1 << 8;
        var_r6_73 = 0;
        var_r1_74 = 0;
        do {
            var_r6_73 += (*(s32 *)((s8 *)(arg0) + (0x248)));
            var_r1_74 += var_r6_73;
        } while (var_r1_74 < temp_r4_72);
        temp_r1_84 = var_r1_74 - temp_r4_72;
        if (temp_r1_84 > 0) {
            var_r0_96 = (*(s32 *)((s8 *)(arg0) + (0x248))) * ((s32) (temp_r1_84 << 8) / var_r6_73);
            if (var_r0_96 < 0) {
                var_r0_96 += 0xFF;
            }
            var_r6_73 -= var_r0_96 >> 8;
        }
        (*(s32 *)((s8 *)(arg0) + (0x254))) = var_r6_73;
        (*(s32 *)((s8 *)(arg0) + (0x258))) = var_r6_73;
        break;
    }
    var_r3_113 = 0;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x258))) > 0) {
        var_r3_113 = 1;
    }
    (*(u8 *)((s8 *)(arg0) + (0x213))) = (u8) ((-0x21 & (*(u8 *)((s8 *)(arg0) + (0x213)))) | (var_r3_113 << 5));
    (*(s32 *)((s8 *)(arg0) + (0x25C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x24C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0x18))));
    (*(s32 *)((s8 *)(arg0) + (0x250))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x18)));
    (*(u16 *)((s8 *)(arg0) + (0x240))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x23E)));
    if (arg3 == -1U) {
        (*(u16 *)((s8 *)(arg0) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x262)));
        return;
    }
    (*(u16 *)((s8 *)(arg0) + (0x23E))) = arg3;
}
#endif
