#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810B318 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B318.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B680.s\"");
#else
s32 sub_8085260(s32, s32);                      /* extern */

void sub_810B680(void *arg0) {
    s16 temp_r0_12;
    s32 temp_r3_78;
    s32 temp_r3_83;
    s32 temp_r5_80;
    u16 temp_r0_9;
    void *temp_r1_24;

    temp_r0_9 = (*(u16 *)((s8 *)(arg0) + (0x14))) + 3;
    (*(u16 *)((s8 *)(arg0) + (0x14))) = temp_r0_9;
    temp_r0_12 = (s16) temp_r0_9;
    if ((s32) temp_r0_12 > 0x20) {
        (*(u16 *)((s8 *)(arg0) + (0x14))) = 0x18U;
    } else if ((s32) temp_r0_12 > 0x18) {
        (*(u16 *)((s8 *)(arg0) + (0x14))) = 0x20U;
        temp_r1_24 = *(void **)0x03000FD8;
        if ((*(void **)((s8 *)(temp_r1_24) + (0x290))) != NULL) {
            sub_8085260((*(s32 *)((s8 *)(temp_r1_24) + (0x250))), 4);
            sub_8085260((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 5);
            (*(s32 *)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x290)))) + (4))) = 0x0810CD99;
        }
        (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x0810CC8D;
    }
    (*(s16 *)((s8 *)((void *)0x0400001A) + (0))) = (s16) (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) - ((*(u16 *)((s8 *)(arg0) + (0x14))) + 6));
    (*(s16 *)((s8 *)((void *)0x0400001A) + (4))) = (s16) (*(u16 *)0x0200001E - (*(u16 *)((s8 *)(arg0) + (0x14))));
    temp_r3_78 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */);
    temp_r5_80 = temp_r3_78 - 0x99;
    temp_r3_83 = temp_r3_78 - 0x8E;
    *(s32 *)0x04000044 = (*(u16 *)0x0200001A - temp_r5_80) | ((*(u16 *)0x0200001A - temp_r3_83) << 8) | (((*(u16 *)0x0200001A - temp_r5_80) | ((*(u16 *)0x0200001A - temp_r3_83) << 8)) << 0x10);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B754.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B7EC.s\"");
#else
void *sub_807D2D0(s32 *, s32, s32 *);       /* extern */
void *sub_807FF48(s32 *, s32);                  /* extern */
void sub_810AB34(void *arg0);                       /* extern */
extern s32 sub_810B884;
extern s32 sub_810CDFC;
extern s32 sub_810CEC0;

void sub_810B7EC(void) {
    void *temp_r0_34;
    void *temp_r1_8;
    void *temp_r2_22;

    temp_r1_8 = *(void **)0x03000FD8;
    if ((*(void **)((s8 *)(temp_r1_8) + (0x290))) == NULL) {
        if ((*(void **)((s8 *)(temp_r1_8) + (0x290))) == NULL) {
            temp_r2_22 = *(void **)0x03000FD8;
            (*(void **)((s8 *)(temp_r2_22) + (0x290))) = sub_807FF48(&sub_810CEC0, 0);
            (*(u8 *)((s8 *)(temp_r2_22) + (0xB))) = (u8) ((*(u8 *)((s8 *)(temp_r2_22) + (0xB))) | 0x40);
            temp_r0_34 = sub_807D2D0(&sub_810CDFC, 0x86, (s32 *) &sub_810AB34);
            (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x290)))) + (0xC))) = temp_r0_34;
            (*(u16 *)((s8 *)(temp_r0_34) + (0x16))) = (u16) *(u16 *)0x0200001A;
            (*(s16 *)((s8 *)((void *)0x02000048) + (0))) = 0x3F3F;
            (*(s16 *)((s8 *)((void *)0x02000048) + (2))) = 0x3F3B;
        }
        (*(s16 *)((s8 *)(sub_807D2D0(&sub_810B884, 0x88, NULL)) + (0x14))) = 0x18;
    }
}
#endif
