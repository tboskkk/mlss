#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808FC84 needs.

asm_unified(".include \"asm/macros.inc\"");




s32 sub_8082E1C();
void sub_80900A8(struct Entity *arg0);

s32 sub_80903DC(void *arg0);
s32 sub_8090420(void *arg0);

extern s32 sub_8087540;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FC84.s\"");
#else
extern s32 sub_808DD2C;
void sub_808FD14(void *arg0);
s32 sub_808FC84(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_808FD14;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;
    return 1;
}
#endif

s32 sub_808FD3C(void *);                        /* extern */
s32 sub_808FDA4(void *);                        /* extern */

s32 sub_808FCD8(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_808FDA4(arg0);
    } else if (temp_r1_11 == -2) {
        sub_808FD3C(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

s32 sub_808F100(void *);                        /* extern */
s32 sub_808F658(void *);                        /* extern */

void sub_808FD14(void *arg0) {
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC))) == -1) {
        sub_808F100(arg0);
        return;
    }
    sub_808F658(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FD3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FDA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_808FE50(void *);                        /* extern */

void sub_808FE08(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    arg0->unk9C = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_808FE50(arg0);
    }
}

s32 sub_808FEB4(void *);                        /* extern */

void sub_808FE2C(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    arg0->unk9C = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_808FEB4(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FE50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FEB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FF18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808FF88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_808FFF8(void *arg0)
{
  int new_var;
  s32 temp_r1_18;
  u8 *temp_r2_25;
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  temp_r1_18 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_18;
  new_var = -8;
  if (temp_r1_18 <= ((s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)))))
  {
    temp_r2_25 = (arg0 + 0xB2) - 0x3B;
    *temp_r2_25 &= new_var;
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)));
    sub_8082E1C(arg0, 8, 0x204D, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80900A8);
  }
}

extern s32 sub_80900D4;
void sub_8090050(void *arg0)
{
  int new_var;
  s32 temp_r1_18;
  u8 *temp_r2_25;
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  new_var = -8;
  temp_r1_18 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_18;
  if (temp_r1_18 <= ((s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)))))
  {
    temp_r2_25 = (arg0 + 0xB2) - 0x3B;
    *temp_r2_25 &= new_var;
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)));
    sub_8082E1C(arg0, 8, 0x2000, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80900D4;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_80900A8(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80900D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80900FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090194.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090220.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80902BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_809034C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

void sub_8090378(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_80903A0(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_8090420(arg0);
    } else if (temp_r1_11 == -2) {
        sub_80903DC(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80903DC.s\"");
#else
void sub_8090460(void *arg0);                       /* extern */

s32 sub_80903DC(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0x084FE9A4;
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + 0x3C)) + (0x2A)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8090460;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090420.s\"");
#else
void sub_80904C4(void *arg0);                       /* extern */

s32 sub_8090420(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0x084FE8A8;
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)(*(void **)0x03000FF4) + (0x2A)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80904C4;
    return 1;
}
#endif
