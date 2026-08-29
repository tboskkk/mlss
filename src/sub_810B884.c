#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810B884 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B884.s\"");
#else
void sub_810B884(void *arg0) {
    s32 temp_r3_41;
    s32 temp_r3_46;
    s32 temp_r5_43;
    u16 temp_r0_9;
    u16 temp_r1_8;

    temp_r1_8 = (*(u16 *)((s8 *)(arg0) + (0x14)));
    temp_r0_9 = temp_r1_8 - 3;
    (*(u16 *)((s8 *)(arg0) + (0x14))) = temp_r0_9;
    if ((s32) (temp_r0_9 << 0x10) <= 0) {
        (*(s32 *)((s8 *)(arg0) + (4))) = 0;
        return;
    }
    (*(s16 *)((s8 *)((void *)0x0400001A) + (0))) = (s16) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - (temp_r1_8 + 3));
    (*(s16 *)((s8 *)((void *)0x0400001A) + (4))) = (s16) (*(u16 *)0x0200001E - (*(u16 *)((s8 *)(arg0) + (0x14))));
    temp_r3_41 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */);
    temp_r5_43 = temp_r3_41 - 0x99;
    temp_r3_46 = temp_r3_41 - 0x8E;
    *(s32 *)0x04000044 = (*(u16 *)0x0200001A - temp_r5_43) | ((*(u16 *)0x0200001A - temp_r3_46) << 8) | (((*(u16 *)0x0200001A - temp_r5_43) | ((*(u16 *)0x0200001A - temp_r3_46) << 8)) << 0x10);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B908.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B99C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810BD88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_810B99C(void *);                        /* extern */

void sub_810BFFC(struct Entity *arg0) {
    u16 temp_r3_17;
    void *temp_r2_24;

    if ((u32) ((u32) ((*(u8 *)((s8 *)(*(void **)0x03000FD8) + (0xA))) << 0x1E) >> 0x1E) > 1U) {
        sub_810B99C(arg0);
        temp_r3_17 = (*(u16 *)((s8 *)(arg0) + (0x14)));
        if ((s32) (s16) (*(u16 *)((s8 *)(arg0) + (0x14))) > 0x88) {
            (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) (temp_r3_17 - 4);
            temp_r2_24 = arg0->unk08;
            if ((temp_r2_24 != NULL) && ((6 & (*(u8 *)((s8 *)(temp_r2_24) + (0x7E)))) != 2)) {
                (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r2_24) + (0x10)))) + (2))) = (s16) (temp_r3_17 + 0x14);
            }
            if ((s32) (s16) (*(u16 *)((s8 *)(arg0) + (0x14))) <= 0x88) {
                goto block_6;
            }
        } else {
block_6:
            (*(u16 *)((s8 *)(arg0) + (0x14))) = 0x88U;
            (*(s32 (**)(void *))((s8 *)(arg0) + (4))) = sub_810B99C;
        }
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810C05C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810C0C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810C2B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810C398.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810C414.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807FB34(s32);                           /* extern */

void sub_810C950(void) {
    void *temp_r4_12;
    void *temp_r4_29;

    temp_r4_12 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x284)));
    if (temp_r4_12 != NULL) {
        sub_807FB34((*(s32 *)((s8 *)(temp_r4_12) + (8))));
        (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x284))) = NULL;
        (*(s32 *)((s8 *)(temp_r4_12) + (4))) = 0;
    }
    temp_r4_29 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x288)));
    if (temp_r4_29 != NULL) {
        sub_807FB34((*(s32 *)((s8 *)(temp_r4_29) + (8))));
        (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x288))) = NULL;
        (*(s32 *)((s8 *)(temp_r4_29) + (4))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810C9A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810C9DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_810C0C8(s32);                           /* extern */
s32 sub_810C9A4(s32);                           /* extern */

void sub_810CA30(void) {
    void *temp_r0_29;

    if ((6 & (*(u8 *)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x80)))) + (0x7E)))) == 2) {
        sub_810C0C8(0);
    } else {
        sub_810C9A4(0);
    }
    temp_r0_29 = (*(void **)((s8 *)(*(u32 *)0x03000FD8) + (0x84)));
    if (temp_r0_29 != NULL) {
        if ((6 & (*(u8 *)((s8 *)(temp_r0_29) + (0x7E)))) == 2) {
            sub_810C0C8(1);
            return;
        }
        sub_810C9A4(1);
    }
}

void sub_810CA8C(s8 arg0) {
    (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0x2F9))) = arg0;
    sub_810CA30();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CAA8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
