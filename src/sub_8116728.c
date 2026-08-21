#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8116728 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116728.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116868.s\"");
#else
s32 process_remove(void *, s32);                /* extern */
s32 sub_8114C1C(s32, s32, u8, s32, s32, s32);   /* extern */
s32 sub_8115048(s32, s32, s32);                 /* extern */
s32 sub_81151E4(s32, s32, s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_81166AC(s32, s32);                      /* extern */
s32 sub_81169C8(void *);                        /* extern */

void sub_8116868(void *arg0) {
    s32 temp_r0_114;
    s8 *var_r1_17;
    s8 var_r0_21;
    u16 temp_r2_10;
    u8 temp_r0_18;
    u8 temp_r0_32;
    void *temp_r0_120;

    temp_r2_10 = (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)));
    if (0x40 & temp_r2_10) {
        var_r1_17 = arg0 + 0x46;
        temp_r0_18 = (*(u8 *)((s8 *)(arg0) + (0x46)));
        if (temp_r0_18 != 7) {
            var_r0_21 = temp_r0_18 + 1;
            goto block_6;
        }
    } else if (0x80 & temp_r2_10) {
        var_r1_17 = arg0 + 0x46;
        temp_r0_32 = (*(u8 *)((s8 *)(arg0) + (0x46)));
        if (temp_r0_32 != 0) {
            var_r0_21 = temp_r0_32 - 1;
block_6:
            *var_r1_17 = var_r0_21;
        }
    }
    if (1 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
        if ((*(u16 *)((s8 *)(arg0) + (0x20))) == 0) {
            sub_8114C1C((*(s32 *)((s8 *)(arg0) + (0x50))), 0, (*(u8 *)((s8 *)(arg0) + (0x46))), 0xFF, 0xFFFF, 0xFFFF);
            (*(u8 *)((s8 *)(arg0) + (0x47))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x46)));
        } else {
            sub_8115048((*(s32 *)((s8 *)(arg0) + (0x50))), 0, 1);
        }
        (*(u16 *)((s8 *)(arg0) + (0x20))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x20))) ^ 1);
    }
    if (0x100 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
        sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x50))), 4, 0, 8, 0x7FFF, 0xFFFF, 0, 0);
    }
    if (2 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
        sub_81169C8((*(void **)((s8 *)(arg0) + (0x4C))));
    }
    if ((8 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) && (arg0 != NULL)) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC378;
        sub_8021FD4();
        temp_r0_114 = (*(s32 *)((s8 *)(arg0) + (0x50)));
        if (temp_r0_114 != 0) {
            sub_81166AC(temp_r0_114, 3);
        }
        temp_r0_120 = (*(void **)((s8 *)(arg0) + (0x4C)));
        if (temp_r0_120 != NULL) {
            process_remove(temp_r0_120, 3);
        }
        process_remove(arg0, 3);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116978.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
