#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815F2C4 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_8021308();
s32 sub_815FB14();
void *sub_815FA3C(void *);                          /* extern */
void sub_815F2C4(void *arg0, s32 arg1)
{
  s8 *new_var;
  unsigned char new_var2;
  new_var2 = 0;
  new_var = (s8 *) arg0;
  *((s16 *) (new_var + 0x18)) = 0x64;
  *((s16 *) (new_var + 0x20)) = (s16) (new_var2 - arg1);
  *((s16 *) (new_var + 0x38)) = 0;
  *((s16 *) (((s8 *) sub_815FA3C(arg0)) + 0xC)) = 0;
  *((s8 *) (new_var + 0x24)) = 3;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F2E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F340.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815F340(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCD90;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F354.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F380.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F3CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_815F3F0(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCDD0;
    if ((*(s32 *)((s8 *)(arg0) + (0x40))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (0x40))) = 0;
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x3C))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (0x3C))) = 0;
    }
    sub_815FB14(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F428.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F474.s\"");
#else
s32 sub_8021308();                              /* extern */
s32 sub_815FB14(void *, s32);                   /* extern */

void sub_815F474(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCE10;
    if ((*(s32 *)((s8 *)(arg0) + (0x40))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (0x40))) = 0;
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x3C))) != 0) {
        sub_8021308();
        (*(s32 *)((s8 *)(arg0) + (0x3C))) = 0;
    }
    sub_815FB14(arg0, arg1);
}
#endif

s32 get_surface_height_at_x(s32, s32);              /* extern */
s32 sub_815FACC(void *);                        /* extern */

void sub_815F530(void *arg0, s32 arg1) {
    s32 temp_r0_18;
    s32 temp_r2_12;

    temp_r2_12 = (s32) (get_surface_height_at_x(arg1, (*(s32 *)((s8 *)(arg0) + (4)))) << 0x10) >> 8;
    (*(s32 *)((s8 *)(arg0) + (0x44))) = temp_r2_12;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (8))) > temp_r2_12) {
        (*(s32 *)((s8 *)(arg0) + (8))) = temp_r2_12;
        temp_r0_18 = (*(s32 *)((s8 *)(arg0) + (4)));
        (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) (temp_r0_18 - (*(s32 *)((s8 *)(arg0) + (0xC))));
        (*(s16 *)((s8 *)(arg0) + (0x18))) = (s16) (temp_r2_12 - (*(s32 *)((s8 *)(arg0) + (0x10))));
        (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r0_18;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r2_12;
        return;
    }
    sub_815FACC(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F56C.s\"");
#else
s32 sub_815FAE4(s32, s32);                  /* extern */

void sub_815F56C(s32 arg0, s32 arg2) {
    sub_815FAE4(arg0, arg2);
}
#endif

s32 sub_815FAFC();                              /* extern */

void sub_815F58C(void *arg0, s32 arg1) {
    void *temp_r1_18;
    void *temp_r2_15;

    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCF10;
    if ((*(void **)((s8 *)(arg0) + (0x3C))) != NULL) {
        sub_815FAFC();
        temp_r2_15 = (*(void **)((s8 *)(arg0) + (0x3C)));
        if (temp_r2_15 != NULL) {
            temp_r1_18 = (*(void **)((s8 *)(temp_r2_15) + (0x30)));
            (*(s32 (**)(void *, s32))((s8 *)(temp_r1_18) + (0xC)))(temp_r2_15 + (*(s16 *)((s8 *)(temp_r1_18) + (8))), 3);
        }
    }
    sub_815FB14(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F5C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F780.s\"");
#else
s32 sub_815A288(void *, s32);                   /* extern */

void sub_815F780(void *arg0) {
    void *temp_r0_22;

    (*(s32 *)((s8 *)((void *)0x040000D4) + (0))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x1CBC)));
    (*(s32 *)((s8 *)((void *)0x040000D4) + (4))) = (s32) (*(s32 *)0x0300101C + 4);
    (*(s32 *)((s8 *)((void *)0x040000D4) + (8))) = 0x84000140;
    temp_r0_22 = (*(void **)((s8 *)(arg0) + (0x1E94)));
    if (((*(s32 (**)(void *, void *))((s8 *)((*(void **)((s8 *)(temp_r0_22) + (4)))) + (0x14)))(temp_r0_22 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), arg0) == 0) && (arg0 != NULL)) {
        sub_815A288(arg0, 3);
    }
}
#endif
