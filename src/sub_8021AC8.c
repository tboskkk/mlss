#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8021AC8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021AC8.s\"");
#else
s8 *sprite_heap_alloc(u8, s32, u8, u16);        /* extern */
s32 sub_80208E0(void *);                        /* extern */
void *sub_8021A18(void *, s32);                     /* extern */

void sub_8021AC8(void *arg0, void *arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_r1_100;
    u16 temp_r0_164;
    u16 temp_r2_106;
    u16 temp_r2_20;
    u8 temp_r0_103;
    u8 temp_r0_17;
    void *temp_r0_160;
    void *temp_r0_49;
    void *var_r1_108;
    void *var_r1_22;
    void *var_r1_39;
    void *var_r2_85;

    if (arg6 == 0) {
        temp_r0_17 = (*(u8 *)((s8 *)(arg0) + (0x1E)));
        temp_r2_20 = (*(u16 *)((s8 *)(arg0) + (0x18)));
        var_r1_22 = (*(void **)((s8 *)((void *)0x0203FFB8) + (0x2C)));
loop_2:
        if (((*(u8 *)((s8 *)(var_r1_22) + (0xC))) != 2) || ((*(u8 *)((s8 *)(var_r1_22) + (0xD))) != ((u32) (temp_r0_17 << 0x1C) >> 0x1C)) || ((*(u16 *)((s8 *)(var_r1_22) + (0xE))) != temp_r2_20)) {
            var_r1_22 = (*(void **)((s8 *)(var_r1_22) + (4)));
            if (var_r1_22 == NULL) {
                var_r1_39 = NULL;
            } else {
                goto loop_2;
            }
        } else {
            var_r1_39 = var_r1_22 - ((*(s32 *)((s8 *)(var_r1_22) + (8))) - 0x10);
        }
        if (var_r1_39 == NULL) {
            temp_r0_49 = sprite_heap_alloc(2, arg4 + 0x10, (u32) (temp_r0_17 << 0x1C) >> 0x1C, temp_r2_20);
            (*(void **)((s8 *)(arg0) + (0x48))) = temp_r0_49;
            (*(void **)((s8 *)(arg0) + (0x50))) = arg1;
            (*(void **)((s8 *)(arg0) + (0x4C))) = (void *) (temp_r0_49 + 0x10);
            sub_80208E0(arg0);
            (*(u8 *)((s8 *)(arg0) + (0x13))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x13))) | 4);
        } else {
            (*(void **)((s8 *)(arg0) + (0x48))) = var_r1_39;
            (*(void **)((s8 *)(arg0) + (0x50))) = (void *) (*(void **)((s8 *)(var_r1_39) + (4)));
            (*(void **)((s8 *)(arg0) + (0x4C))) = (void *) (var_r1_39 + 0x10);
            (*(u8 *)((s8 *)(arg0) + (0x13))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x13))));
        }
    } else {
        (*(void **)((s8 *)(arg0) + (0x4C))) = arg1;
        (*(void **)((s8 *)(arg0) + (0x48))) = NULL;
        (*(void **)((s8 *)(arg0) + (0x50))) = NULL;
    }
    if (arg5 != 0) {
        temp_r1_100 = (*(u8 *)((s8 *)(arg2) + (2))) | ((*(u8 *)((s8 *)(arg2) + (3))) << 8);
        if (temp_r1_100 == 0) {
            temp_r0_103 = (*(u8 *)((s8 *)(arg0) + (0x1E)));
            temp_r2_106 = (*(u16 *)((s8 *)(arg0) + (0x1A)));
            var_r1_108 = (*(void **)((s8 *)((void *)0x0203FFB8) + (0x2C)));
loop_16:
            if (((*(u8 *)((s8 *)(var_r1_108) + (0xC))) != 3) || ((*(u8 *)((s8 *)(var_r1_108) + (0xD))) != ((u32) (temp_r0_103 << 0x1C) >> 0x1C)) || ((*(u16 *)((s8 *)(var_r1_108) + (0xE))) != temp_r2_106)) {
                var_r1_108 = (*(void **)((s8 *)(var_r1_108) + (4)));
                if (var_r1_108 == NULL) {
                    var_r2_85 = NULL;
                } else {
                    goto loop_16;
                }
            } else {
                var_r2_85 = var_r1_108 - ((*(s32 *)((s8 *)(var_r1_108) + (8))) - 0x10);
            }
            if (var_r2_85 == NULL) {
                var_r2_85 = sprite_heap_alloc(3, arg5, (u32) (temp_r0_103 << 0x1C) >> 0x1C, temp_r2_106);
                (*(u8 *)((s8 *)(arg0) + (0x13))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x13))) | 8);
            } else {
                (*(u8 *)((s8 *)(arg0) + (0x13))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x13))));
            }
        } else {
            var_r2_85 = arg2 - temp_r1_100;
        }
        (*(void **)((s8 *)(arg0) + (0x44))) = var_r2_85;
    } else if (arg7 == 0) {
        temp_r0_160 = sub_8021A18(arg0, 4);
        if (temp_r0_160 == NULL) {
            temp_r0_164 = *(u16 *)0x0203FFC0;
            (*(u16 *)((s8 *)(arg0) + (0x2E))) = temp_r0_164;
            *(u16 *)0x0203FFC0 = temp_r0_164 + arg4;
        } else {
            (*(u16 *)((s8 *)(arg0) + (0x2E))) = (u16) (*(u16 *)((s8 *)(temp_r0_160) + (0x2E)));
        }
        (*(void **)((s8 *)(arg0) + (0x44))) = NULL;
    }
    (*(void **)((s8 *)(arg0) + (0x38))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (0x54))) = arg3;
    (*(s32 *)((s8 *)(arg0) + (0x58))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021C24.s\"");
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
asm_unified(".include \"asm/nonmatching/sprite_heap_alloc.s\"");
#else
/* Draft quarantined: it did not compile, and under agbcc a single bad
   draft fails the WHOLE translation unit -- taking every sibling's compile
   verdict, asm-differ score and permuter promotion down with it. Emptied by
   tools/factory/quarantine_broken_drafts.py. The guard is intact, so the
   real ROM still gets the verbatim retail bytes and progress.py still counts
   this as unmatched; the candidate body is still in the state DB and m2c can
   regenerate the seed. Write real C here to replace this comment. */
#endif
