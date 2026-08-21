#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810CCB0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CCB0.s\"");
#else
void *sub_807D2D0(s32 *, s32, s32);             /* extern */
extern s32 sub_810B680;

void sub_810CCB0(void) {
    (*(s16 *)((s8 *)(sub_807D2D0(&sub_810B680, 0x86, 0)) + (0x14))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CCC8.s\"");
#else
void *sub_807D2D0(s32 *, s32, s32);             /* extern */
extern s32 sub_810D5F4;
extern s32 sub_810D624;

void sub_810CCC8(void) {
    void *temp_r0_10;

    temp_r0_10 = sub_807D2D0(&sub_810D624, 0, 0);
    (*(s16 *)((s8 *)(temp_r0_10) + (0x14))) = 0;
    (*(void **)((s8 *)(sub_807D2D0(&sub_810D5F4, 0x18, 0)) + (8))) = temp_r0_10;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CCF4.s\"");
#else
s32 sub_8085260(s32, s32);                      /* extern */

void sub_810CCF4(void) {
    void *temp_r1_12;
    void *temp_r3_8;

    temp_r3_8 = *(void **)0x03000FD8;
    temp_r1_12 = (*(void **)((s8 *)(temp_r3_8) + (0x28C)));
    if (temp_r1_12 != NULL) {
        (*(void **)((s8 *)(temp_r3_8) + (0x28C))) = NULL;
        (*(s32 *)((s8 *)(temp_r1_12) + (4))) = 0;
        sub_8085260((*(s32 *)((s8 *)(temp_r3_8) + (0x250))), 2);
        sub_8085260((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 3);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810CD30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8085260(s32, s32);                      /* extern */

void sub_810CDB4(void) {
    void *temp_r1_8;

    temp_r1_8 = *(void **)0x03000FD8;
    if ((*(void **)((s8 *)(temp_r1_8) + (0x290))) != NULL) {
        sub_8085260((*(s32 *)((s8 *)(temp_r1_8) + (0x250))), 4);
        sub_8085260((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x250))), 5);
        (*(s32 *)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x290)))) + (4))) = 0x0810CD99;
    }
}
