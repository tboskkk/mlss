#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EFD8 needs.

asm_unified(".include \"asm/macros.inc\"");




s32 sub_815F97C();

s32 sub_815FB14();

int sub_815FAA4();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EFD8.s\"");
#else
s32 sub_815EFD8(void *arg0) {
    s32 var_r4_19;
    u8 temp_r0_10;
    void *temp_r2_24;
    void *temp_r2_39;

    temp_r0_10 = (*(u8 *)((s8 *)(arg0) + (0x24)));
    switch (temp_r0_10) {                           /* irregular */
    case 1:
        var_r4_19 = 0;
        temp_r2_24 = (*(void **)((s8 *)(*(void **)0x03001020) + (0x1C98)));
        if ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) - (*(s32 *)((s8 *)(temp_r2_24) + (4)))) < 0) {
            var_r4_19 = 1;
            (*(s8 *)((s8 *)(temp_r2_24) + (0x24))) = 6;
        }
        temp_r2_39 = (*(void **)((s8 *)(*(void **)0x03001020) + (0x1C9C)));
        if ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) - (*(s32 *)((s8 *)(temp_r2_39) + (4)))) < 0) {
            var_r4_19 += 1;
            (*(s8 *)((s8 *)(temp_r2_39) + (0x24))) = 6;
        }
        if (var_r4_19 > 1) {
            (*(u8 *)((s8 *)(arg0) + (0x24))) = 2U;
        }
    default:
        return 0;
    case 2:
        return 1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F050.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815F050(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCC90;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F064.s\"");
#else
s32 sub_815F8F4();                              /* extern */

void *sub_815F064(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCC90;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 1;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F08C.s\"");
#else
s32 sub_8199F30();                                  /* extern */

s32 sub_815F08C(void *arg0, s32 *arg3) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (4))) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    (*(s32 *)((s8 *)(arg0) + (4))) = temp_r0_11;
    if ((s32) (temp_r0_11 - *arg3) < 0xFFFFE000) {
        (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + (((0x1FF & sub_8199F30()) + 0x200) << 8));
    }
    return 0;
}
#endif

void *sub_815FA3C(void *);                          /* extern */
void sub_815F0CC(void *arg0)
{
  int new_var;
  void *temp_r1_27;
  sub_815F97C(arg0, 0);
  if ((*((u8 *) (((s8 *) arg0) + 0x26))) == 1)
  {
    *((s16 *) (((s8 *) sub_815FA3C(arg0)) + 4)) = (new_var = 0x140);
    *((s16 *) (((s8 *) sub_815FA3C(arg0)) + 6)) = new_var;
  }
  *((s32 *) (((s8 *) arg0) + 8)) = 0xA000;
  temp_r1_27 = *((void **) (((s8 *) arg0) + 0x30));
  (*((s32 (**)(void *)) (((s8 *) temp_r1_27) + 0x34)))(arg0 + (*((s16 *) (((s8 *) temp_r1_27) + 0x30))));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F110.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815F110(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCE50;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F124.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_8199F30();                                  /* extern */

void *sub_815F124(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCE50;
    (*(u16 *)((s8 *)(arg0) + (0x3C))) = arg2;
    (*(s16 *)((s8 *)(arg0) + (0x34))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x38))) = 0;
    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + (((0x1FF & sub_8199F30()) + 0x200) << 8));
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F168.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815F168(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCE90;
    sub_815FB14();
}
#endif

void sub_815F19C(void *arg0, s32 arg1) {
    void *temp_r1_14;
    void *temp_r2_11;

    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCED0;
    temp_r2_11 = (*(void **)((s8 *)(arg0) + (0x34)));
    if (temp_r2_11 != NULL) {
        temp_r1_14 = (*(void **)((s8 *)(temp_r2_11) + (0x30)));
        (*(s32 (**)(void *, s32))((s8 *)(temp_r1_14) + (0xC)))(temp_r2_11 + (*(s16 *)((s8 *)(temp_r1_14) + (8))), 3);
    }
    sub_815FB14(arg0, arg1);
}

void sub_815F1D0(void) {
    sub_815FAA4();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F1DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F1F0.s\"");
#else
s32 sub_815F8F4();                              /* extern */

void *sub_815F1F0(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCCD0;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    return arg0;
}
#endif

void sub_815F218(void) {
    sub_815FAA4();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F224.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F238.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815F238(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCD10;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 0;
    sub_815F97C(arg0, 0);
    if ((*(u8 *)((s8 *)(arg0) + (0x26))) == 0) {
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (4))) = 0x120;
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (6))) = 0x120;
    }
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F27C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F290.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815F290(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCD50;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s16 *)((s8 *)(arg0) + (0x36))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x38))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x24))) = 2;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif
