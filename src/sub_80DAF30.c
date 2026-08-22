#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DAF30 needs.

asm_unified(".include \"asm/macros.inc\"");


int sub_8087540();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAF30.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_80DAF30(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAF48.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAF6C.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_80DAF6C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAF84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DAFA8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB014.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DB080.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_80DB12C;

void sub_80DB080(void *arg0) {
    s32 temp_r5_9;
    void *temp_r1_17;
    void *temp_r2_19;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_9 == 0) {
        play_sfx_80195B4(0x8D, -1);
        temp_r1_17 = arg0 + 0x84;
        temp_r2_19 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((*(s32 *)((s8 *)(temp_r2_19) + (0xD8))) + 0x2800);
        (*(s32 *)((s8 *)(temp_r1_17) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_19) + (0xDC)));
        (*(s32 *)((s8 *)((temp_r1_17 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_19) + (0xE0)));
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
        (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x500;
        (*(s16 *)((s8 *)(arg0) + (0x7A))) = (s16) temp_r5_9;
        sub_8085B38(arg0);
        sub_8082E1C(arg0, 6, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DB12C;
    }
}
#endif
