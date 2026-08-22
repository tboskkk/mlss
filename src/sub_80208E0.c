#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80208E0 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80208E0(void *arg0) {
    void *temp_r2_6;

    temp_r2_6 = (*(void **)((s8 *)(arg0) + (0x48)));
    (*(s32 *)((s8 *)(temp_r2_6) + (0))) = 1;
    (*(s32 *)((s8 *)(temp_r2_6) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x50)));
    (*(s32 *)((s8 *)(temp_r2_6) + (8))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x4C)));
    (*(s32 *)((s8 *)(temp_r2_6) + (0xC))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80208F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020994.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020A78.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_show_8020CBC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020D40.s\"");
#else
void *sub_8021A18(void *, s32);                       /* extern */

void sub_8020D40(void *arg0) {
    u16 *var_r3_21;
    u16 var_r2_22;
    u8 temp_r1_8;
    void *temp_r1_48;
    void *temp_r1_61;

    temp_r1_8 = (*(u8 *)((s8 *)(arg0) + (0x12)));
    if (!(0x20 & temp_r1_8)) {
        (*(u8 *)((s8 *)(arg0) + (0x12))) = (u8) (0x20 | temp_r1_8);
        if (sub_8021A18(arg0, 2) == 0) {
            var_r3_21 = (u16 *)0x0203FFC4;
            var_r2_22 = (*(u16 *)((s8 *)(arg0) + (0x14)));
            if (var_r2_22 != 0) {
                do {
                    if ((0x4000 & *var_r3_21) && (var_r2_22 & 1)) {
                        *var_r3_21 = 0xFFFF;
                    }
                    var_r3_21 += 2;
                    var_r2_22 = (u16) ((s32) var_r2_22 >> 1);
                } while (var_r2_22 != 0);
            }
        }
        temp_r1_48 = (*(void **)((s8 *)(arg0) + (0x64)));
        if (temp_r1_48 != NULL) {
            (*(void **)((s8 *)(temp_r1_48) + (0x68))) = (void *) (*(void **)((s8 *)(arg0) + (0x68)));
        } else {
            (*(void **)((s8 *)((void *)0x0203FFB8) + (0x30))) = (void *) (*(void **)((s8 *)(arg0) + (0x68)));
        }
        temp_r1_61 = (*(void **)((s8 *)(arg0) + (0x68)));
        if (temp_r1_61 != NULL) {
            (*(void **)((s8 *)(temp_r1_61) + (0x64))) = (void *) (*(void **)((s8 *)(arg0) + (0x64)));
        } else {
            (*(void **)((s8 *)((void *)0x0203FFB8) + (0x34))) = (void *) (*(void **)((s8 *)(arg0) + (0x64)));
        }
        (*(void **)((s8 *)(arg0) + (0x68))) = NULL;
        (*(void **)((s8 *)(arg0) + (0x64))) = NULL;
        (*(u8 *)((s8 *)((void *)0x0203FFB8) + (1))) = (u8) ((*(u8 *)((s8 *)((void *)0x0203FFB8) + (1))) - 1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020DD0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80210A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021308.s\"");
#else
s32 sprite_heap_free(void *);                   /* extern */
void *sub_8021A18(void *, s32);                       /* extern */
s32 sub_8021C24(void *);                        /* extern */

void sub_8021308(void *arg0) {
    u16 *var_r3_21;
    u16 var_r2_22;
    u8 temp_r1_8;
    void *temp_r1_50;
    void *temp_r1_64;

    temp_r1_8 = (*(u8 *)((s8 *)(arg0) + (0x12)));
    if (!(0x20 & temp_r1_8)) {
        (*(u8 *)((s8 *)(arg0) + (0x12))) = (u8) (0x20 | temp_r1_8);
        if (sub_8021A18(arg0, 2) == 0) {
            var_r3_21 = (u16 *)0x0203FFC4;
            var_r2_22 = (*(u16 *)((s8 *)(arg0) + (0x14)));
            if (var_r2_22 != 0) {
                do {
                    if ((0x4000 & *var_r3_21) && (var_r2_22 & 1)) {
                        *var_r3_21 = 0xFFFF;
                    }
                    var_r3_21 += 2;
                    var_r2_22 = (u16) ((s32) var_r2_22 >> 1);
                } while (var_r2_22 != 0);
            }
        }
    }
    sub_8021C24(arg0);
    temp_r1_50 = (*(void **)((s8 *)(arg0) + (0x64)));
    if (temp_r1_50 != NULL) {
        (*(void **)((s8 *)(temp_r1_50) + (0x68))) = (void *) (*(void **)((s8 *)(arg0) + (0x68)));
    } else {
        (*(void **)((s8 *)((void *)0x0203FFB8) + (0x30))) = (void *) (*(void **)((s8 *)(arg0) + (0x68)));
    }
    temp_r1_64 = (*(void **)((s8 *)(arg0) + (0x68)));
    if (temp_r1_64 != NULL) {
        (*(void **)((s8 *)(temp_r1_64) + (0x64))) = (void *) (*(void **)((s8 *)(arg0) + (0x64)));
    } else {
        (*(void **)((s8 *)((void *)0x0203FFB8) + (0x34))) = (void *) (*(void **)((s8 *)(arg0) + (0x64)));
    }
    sprite_heap_free(arg0);
    (*(u8 *)((s8 *)((void *)0x0203FFB8) + (1))) = (u8) ((*(u8 *)((s8 *)((void *)0x0203FFB8) + (1))) - 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80213A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80214A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021574.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802191C.s\"");
#else
/* Draft quarantined: it did not compile, and under agbcc a single bad
   draft fails the WHOLE translation unit -- taking every sibling's compile
   verdict, asm-differ score and permuter promotion down with it. Emptied by
   tools/factory/quarantine_broken_drafts.py. The guard is intact, so the
   real ROM still gets the verbatim retail bytes and progress.py still counts
   this as unmatched; the candidate body is still in the state DB and m2c can
   regenerate the seed. Write real C here to replace this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021A18.s\"");
#else
void *sub_8021A18(void *arg0, s32 arg1) {
    void *var_r3_10;

    var_r3_10 = (*(void **)((s8 *)((void *)0x0203FFB8) + (0x30)));
    if (var_r3_10 != NULL) {
        if (arg1 == 2) {
loop_3:
            if ((var_r3_10 == arg0) || (0x20 & (*(u8 *)((s8 *)(var_r3_10) + (0x12)))) || (0x10 & (*(u8 *)((s8 *)(var_r3_10) + (0x29)))) || (((*(s32 *)((s8 *)(var_r3_10) + (0x1C))) & 0xF0FFFF) != ((*(s32 *)((s8 *)(arg0) + (0x1C))) & 0xF0FFFF))) {
                var_r3_10 = (*(void **)((s8 *)(var_r3_10) + (0x68)));
                if (var_r3_10 == NULL) {
                    goto block_23;
                }
                goto loop_3;
            }
            goto block_21;
        }
loop_10:
        if ((var_r3_10 != arg0) && ((0xF & (*(u8 *)((s8 *)(var_r3_10) + (0x1E)))) == (0xF & (*(u8 *)((s8 *)(arg0) + (0x1E))))) && (((arg1 == 0) && ((*(u16 *)((s8 *)(var_r3_10) + (0x18))) == (*(u16 *)((s8 *)(arg0) + (0x18))))) || ((arg1 == 1) && ((*(u16 *)((s8 *)(var_r3_10) + (0x1A))) == (*(u16 *)((s8 *)(arg0) + (0x1A))))) || ((arg1 == 3) && ((*(u16 *)((s8 *)(var_r3_10) + (0x2E))) == (*(u16 *)((s8 *)(arg0) + (0x2E))))) || ((arg1 == 4) && ((*(u16 *)((s8 *)(var_r3_10) + (0x18))) == (*(u16 *)((s8 *)(arg0) + (0x18)))) && ((*(s32 *)((s8 *)(var_r3_10) + (0x44))) == 0)))) {
block_21:
            return var_r3_10;
        }
        var_r3_10 = (*(void **)((s8 *)(var_r3_10) + (0x68)));
        if (var_r3_10 == NULL) {
            goto block_23;
        }
        goto loop_10;
    }
block_23:
    return NULL;
}
#endif
