#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8065E4C needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8082E1C();

extern s32 sub_8065ED4;

void sub_8065E4C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8065ED4;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065E68.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8065D10;

void sub_8065E68(void *arg0) {
    s32 temp_r0_17;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r0_17 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_17;
        if (temp_r0_17 <= 0) {
            sub_8082E1C(arg0, 8, 0, 0);
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8065D10;
        }
    }
}
#endif

s32 sub_807F47C(void *);                        /* extern */
extern s32 sub_808750C;
void sub_8065EA0(void *arg0)
{
  int temp_r0_11;
  temp_r0_11 = 1;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - temp_r0_11;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_11;
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    sub_807F47C(arg0);
    sub_8082E1C(arg0, 0xF, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_808750C;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065ED4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065F0C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_8066604;

void sub_8065F0C(void *arg0) {
    void *temp_r1_33;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
            sub_8082E1C(arg0, 3, 0, 0);
        } else {
            sub_8082E1C(arg0, 4, 0, 0);
        }
        temp_r1_33 = arg0 + 0x84;
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((*(s32 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)))) + (0xD8))) + 0x4000);
        (*(s32 *)((s8 *)(temp_r1_33) + (4))) = 0x6800;
        (*(s32 *)((s8 *)((temp_r1_33 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x40)));
        (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
        (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x14C;
        (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
        sub_8085B38(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8066604;
        if ((*(s32 *)((s8 *)(arg0) + (0xA0))) == 0) {
            play_sfx_80195B4(0x129, -1);
            return;
        }
        play_sfx_80195B4(0x12A, -1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065FBC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066298.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066334.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80663E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80664D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
