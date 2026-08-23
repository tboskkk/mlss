#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809D268 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

extern s32 sub_809D2A8;

s32 sub_809D268(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809D2A8;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D274.s\"");
#else
s32 sub_8087540(void *);                        /* extern */

void sub_809D274(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D2A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D300.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void *sub_807C0D0(void *, s32, s32);                /* extern */
void sub_809D358(void *arg0)
{
  void *temp_r0_10;
  int new_var3;
  s8 *new_var2;
  int new_var;
  new_var = 8;
  temp_r0_10 = sub_807C0D0(arg0, 0x4109, 0);
  *((u8 *) (((s8 *) temp_r0_10) + 0x79)) = (u8) (((*((u8 *) (((s8 *) temp_r0_10) + 0x79))) | 1) | new_var);
  new_var2 = (s8 *) (((s8 *) temp_r0_10) + 0x75);
  new_var3 = 0xFF;
  *new_var2 = new_var3;
  sub_8082E1C(arg0, 0, 0, 0);
  *((s32 *) (((s8 *) arg0) + 0x4C)) = (new_var = 0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D394.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D3F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D454.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D49C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_809D91C;

void sub_809D4E4(void *arg0) {
    s32 var_r1_57;
    s32 var_r1_66;
    s32 var_r2_32;
    s32 var_r2_51;
    void *temp_r0_12;
    void *temp_r4_13;
    void *temp_r5_17;
    void *temp_r7_19;
    void *temp_r8_16;

    temp_r0_12 = *(void **)0x03000FD8;
    temp_r4_13 = (*(void **)((s8 *)(temp_r0_12) + (0x70)));
    temp_r8_16 = temp_r4_13 + 8;
    temp_r5_17 = (*(void **)((s8 *)(temp_r0_12) + (0x74)));
    temp_r7_19 = temp_r5_17 + 8;
    sub_8082E1C(arg0, 8, 0, 0);
    if ((6 & (*(u8 *)((s8 *)(temp_r4_13) + (0x7E)))) != 2) {
        var_r2_32 = (*(s32 *)((s8 *)(temp_r7_19) + (0x3C)));
        goto block_4;
    }
    if ((6 & (*(u8 *)((s8 *)(temp_r5_17) + (0x7E)))) != 2) {
        var_r2_32 = (*(s32 *)((s8 *)(temp_r8_16) + (0x3C)));
block_4:
        if (var_r2_32 < 0) {
            var_r2_32 += 0xFF;
        }
        var_r2_51 = var_r2_32 >> 8;
    } else {
        var_r1_57 = (*(s32 *)((s8 *)(temp_r8_16) + (0x3C))) + (*(s32 *)((s8 *)(temp_r7_19) + (0x3C)));
        if (var_r1_57 < 0) {
            var_r1_57 += 0x1FF;
        }
        var_r2_51 = var_r1_57 >> 9;
    }
    var_r1_66 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x38)));
    if (var_r1_66 < 0) {
        var_r1_66 += 0xFF;
    }
    sub_808843C(arg0, (var_r1_66 >> 8) + 0x38, var_r2_51, 0, 0x100);
    sub_80880C4(arg0, 0x180);
    play_sfx_80195B4(0x99, -1);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809D91C;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D59C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D69C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D7B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D8CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D91C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D994.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
