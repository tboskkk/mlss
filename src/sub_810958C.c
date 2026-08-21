#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810958C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810958C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8109600.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_810971C(void *);                        /* extern */

void sub_8109600(void *arg0) {
    u16 temp_r0_30;
    void *temp_r0_123;
    void *temp_r1_110;
    void *temp_r1_41;
    void *temp_r1_59;
    void *temp_r1_76;
    void *temp_r1_93;
    void *temp_r2_23;

    if (arg0 == NULL) {
        do {

        } while (arg0 == NULL);
    }
    sub_810971C(arg0);
    (*(void (**)(void *))((s8 *)(arg0) + (4))) = sub_8109600;
    temp_r2_23 = *(void **)0x03000FD8;
    temp_r0_30 = (*(u16 *)((s8 *)(temp_r2_23) + (0x314))) + 0xFFFFFC00;
    (*(u16 *)((s8 *)(temp_r2_23) + (0x314))) = temp_r0_30;
    if ((s32) (temp_r0_30 << 0x10) <= 0) {
        temp_r1_41 = (*(void **)((s8 *)(temp_r2_23) + (0x2FC)));
        if (temp_r1_41 != NULL) {
            (*(s32 *)((s8 *)((*(void **)((s8 *)(temp_r1_41) + (0x4C)))) + (4))) = 0;
            sub_807C298(temp_r1_41);
            (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x2FC))) = NULL;
        }
        temp_r1_59 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x300)));
        if (temp_r1_59 != NULL) {
            (*(s32 *)((s8 *)((*(void **)((s8 *)(temp_r1_59) + (0x4C)))) + (4))) = 0;
            sub_807C298(temp_r1_59);
            (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x300))) = NULL;
        }
        temp_r1_76 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x304)));
        if (temp_r1_76 != NULL) {
            (*(s32 *)((s8 *)((*(void **)((s8 *)(temp_r1_76) + (0x4C)))) + (4))) = 0;
            sub_807C298(temp_r1_76);
            (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x304))) = NULL;
        }
        temp_r1_93 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x308)));
        if (temp_r1_93 != NULL) {
            (*(s32 *)((s8 *)((*(void **)((s8 *)(temp_r1_93) + (0x4C)))) + (4))) = 0;
            sub_807C298(temp_r1_93);
            (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x308))) = NULL;
        }
        temp_r1_110 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x30C)));
        if (temp_r1_110 != NULL) {
            (*(s32 *)((s8 *)((*(void **)((s8 *)(temp_r1_110) + (0x4C)))) + (4))) = 0;
            sub_807C298(temp_r1_110);
            (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x30C))) = NULL;
        }
        temp_r0_123 = *(void **)0x03000FD8;
        if ((*(s32 *)((s8 *)(temp_r0_123) + (0x310))) != 0) {
            (*(void (**)(void *))((s8 *)(arg0) + (4))) = NULL;
            (*(s32 *)((s8 *)(temp_r0_123) + (0x310))) = 0;
        }
        *(s8 *)0x03000391 = 4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810971C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8109C08.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
