#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// tld_init_8127A94 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_81151E4();
s32 process_add(void *, u8);                    /* extern */

void *tld_init_8127A94(struct Entity *arg0, u8 arg1) {
    process_add(arg0, arg1);
    arg0->unk18 = 0x08CDC3C8;
    return arg0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127AB0.s\"");
#else
u8 sub_8116620(s32);                                /* extern */

s32 sub_8127AB0(void *arg0) {
    u8 temp_r1_14;

    temp_r1_14 = sub_8116620((*(s32 *)((s8 *)(arg0) + (0x15C))));
    if (temp_r1_14 != 0) {
        return 1;
    }
    (*(u8 *)((s8 *)(arg0) + (0xEF))) = temp_r1_14;
    return 0;
}
#endif

void sub_8127ADC(void *arg0, u16 arg1) {
    sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x15C))), 4, arg1, 0x10, 0xFFFF, 0xFFFF, 0, 0);
    sub_80193B4(0, 0, 0x10);
    (*(s8 *)((s8 *)(arg0) + (0xEF))) = 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127B20.s\"");
#else
s32 sub_81151E4(s32, s32, u16, s32, s32, s32, s32, s32); /* extern */

void sub_8127B20(void *arg0) {
    *(s32 *)0x03000BD0 = -1;
    sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x15C))), 0, (*(u16 *)((s8 *)(arg0) + (0xE4))), 0x10, 0xFFFF, 0xFFFF, 0, 0);
    sub_8019308(0, 0x1E, 0);
    sub_80193B4(0, 0xFF, 0x10);
    *(u16 *)0x02000000 = (*(u16 *)((s8 *)(arg0) + (0xE6)));
    (*(s8 *)((s8 *)(arg0) + (0xEF))) = 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127B90.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127BC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127CDC.s\"");
#else
s32 **sub_81980C8(s32);                             /* extern */
s32 sub_8199E48(s32, s32, u16, u32, s32 *, s32, s32, s32); /* extern */

void sub_8127CDC(s32 arg0, u8 arg1, u16 arg2, u16 arg3, u8 *arg4, s32 arg5) {
    s32 sp10;
    s32 sp14;
    s32 **temp_r0_27;
    s32 **temp_r6_61;
    s32 **temp_r8_28;
    s32 var_r1_48;
    u16 var_r7_19;
    u32 temp_r10_40;
    u8 *var_r5_13;
    u8 var_r4_56;

    sp10 = arg0;
    var_r5_13 = arg4;
    sp14 = (s32) arg1;
    var_r7_19 = arg2;
    temp_r0_27 = sub_81980C8(1);
    temp_r8_28 = temp_r0_27;
    temp_r10_40 = (u32) (((((**temp_r0_27 & 0xF) * 4) + arg3) << 0x10) + 0x10000) >> 0x10;
loop_6:
    if ((*var_r5_13 != 0) && ((s32) (var_r7_19 + 8) <= (s32) (sp14 * 8))) {
        do {
            var_r4_56 = *var_r5_13;
            var_r5_13 += 1;
        } while (var_r4_56 == 0xFF);
        var_r1_48 = 0xFF - var_r4_56;
        if (var_r1_48 != 0xFF) {
            if (var_r1_48 > 1) {
                var_r1_48 = 0;
                goto block_5;
            }
            if (temp_r8_28[var_r1_48] != NULL) {
                var_r4_56 = *var_r5_13;
                var_r5_13 += 1;
block_5:
                temp_r6_61 = &temp_r8_28[var_r1_48];
                sub_8199E48(sp10, sp14, var_r7_19, temp_r10_40, *temp_r6_61, (s32) var_r4_56, (u8) arg5 & 0xF, 0);
                var_r7_19 = var_r7_19 + 1 + (((u32) (*(u32 *)((s8 *)(&(*temp_r6_61)[(s32) var_r4_56 >> 3]) + (4))) >> ((var_r4_56 & 7) * 4)) & 0xF);
            }
            goto loop_6;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127DB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
