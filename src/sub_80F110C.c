#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F110C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F110C.s\"");
#else
s32 sub_80F110C(s32 arg0, void *arg1, s32 *arg2, void *arg3) {
    if (((u32) ~(*(u32 *)((s8 *)(arg1) + (0x25C))) >> 0x1F) == (*(s32 *)((s8 *)(arg3) + (0)))) {
        *arg2 = (*(s32 *)((s8 *)(arg3) + (4)));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F112C.s\"");
#else
s32 sub_8046A10(s32);                           /* extern */
s32 sub_8047B08(s32, s32, s32);                 /* extern */
s32 sub_8047B5C(s32, s32);                  /* extern */

s32 sub_80F112C(s32 arg0, s32 arg1, void *arg2, void *arg3) {
    s32 temp_r1_9;

    temp_r1_9 = (*(s32 *)((s8 *)(arg3) + (0)));
    if (!(2 & temp_r1_9)) {
        sub_8047B08(arg1, temp_r1_9, (*(s32 *)((s8 *)(arg3) + (4))));
        (*(u16 *)((s8 *)(arg2) + (0xA0))) = (u16) (0x42 | (*(u16 *)((s8 *)(arg2) + (0xA0))));
    } else if (temp_r1_9 == 2) {
        sub_8047B5C(arg1, M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    } else {
        sub_8046A10(arg1);
    }
    return 1;
}
#endif

s32 script_enable_flag_2(void *, s32, s32, s32);
s32 sub_8045A94(s32, s32, s32, s32, s32, s32, s32);
s32 sub_80F1170(void *arg0, s32 arg1, s32 arg2, void *arg3)
{
  s8 *new_var;
  void *temp_r2_16;
  int new_var2;
  new_var = (s8 *) arg3;
  temp_r2_16 = *((void **) (((s8 *) (((*((s32 *) (new_var + 0))) * 4) + (*((s32 *) (((s8 *) arg0) + 0x14))))) + 0x28));
  new_var2 = 4;
  new_var = new_var;
  if ((sub_8045A94(arg1, 2, 0, (((s32) (*((s32 *) (((s8 *) temp_r2_16) + 0xC)))) >> 8) + (*((s32 *) (new_var + new_var2))), (((s32) (*((s32 *) (((s8 *) temp_r2_16) + 0x10)))) >> 8) + (*((s32 *) (new_var + 8))), (((s32) (*((s32 *) (((s8 *) temp_r2_16) + 0x14)))) >> 8) + (*((s32 *) (new_var + 0xC))), 1) << 0x18) == 0)
  {
    return 1;
 dummy_label_808729: ;
    goto dummy_label_808729;
  }
  script_enable_flag_2(arg0, arg1, arg2, 0);
  return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F11D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1230.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80F12C8(void *arg0, s32 arg1, s32 arg2, s32 *arg3)
{
  void *temp_r1_15;
  int new_var;
  temp_r1_15 = (void *) (*((void **) (((s8 *) (((*arg3) * 4) + (*((s32 *) (((s8 *) arg0) + 0x14))))) + 0x28)));
  if ((sub_8045A94(arg1, 1, 0, ((s32) (*((s32 *) (((s8 *) temp_r1_15) + 0xC)))) >> 8, ((s32) (*((s32 *) (((s8 *) temp_r1_15) + 0x10)))) >> 8, ((s32) (*((s32 *) (((s8 *) temp_r1_15) + 0x14)))) >> 8, 0) << 0x18) == 0)
  {
    return 1;
  }
  new_var = 0;
  script_enable_flag_2(arg0, arg1, arg2, new_var);
  return new_var;
 do { } while (new_var);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F131C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F13A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F143C.s\"");
#else
s32 sub_8047D44();                              /* extern */
s32 sub_8047D64();                              /* extern */
s32 sub_8047D84(s32, s32);                      /* extern */

s32 sub_80F143C(void *arg0, void *arg2) {
    s32 temp_r2_12;

    temp_r2_12 = (*(s32 *)((s8 *)(arg2) + (4)));
    switch (temp_r2_12) {                           /* irregular */
    case 0:
        sub_8047D84((*(s32 *)((s8 *)((((*(s32 *)((s8 *)(arg2) + (0))) * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28))), 1);
        break;
    case 1:
        sub_8047D64();
        break;
    case 2:
        sub_8047D44();
        break;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1478.s\"");
#else
s32 sub_8047E50(s32, u16);                      /* extern */

s32 sub_80F1478(void *arg0, void *arg2) {
    sub_8047E50((*(s32 *)((s8 *)((((*(s32 *)((s8 *)(arg2) + (0))) * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28))), (*(u16 *)((s8 *)(arg2) + (4))));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1490.s\"");
#else
s32 sub_8047D44();                              /* extern */
s32 sub_8047D64();                              /* extern */
s32 sub_8047D84(s32, s32);                      /* extern */

s32 sub_80F1490(s32 arg0, s32 arg1, s32 *arg3) {
    s32 temp_r3_8;

    temp_r3_8 = *arg3;
    switch (temp_r3_8) {                            /* irregular */
    case 0:
        sub_8047D84(arg1, 1);
        break;
    case 1:
        sub_8047D64();
        break;
    case 2:
        sub_8047D44();
        break;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F14C4.s\"");
#else
s32 sub_8047E50(s32, u16);                      /* extern */

s32 sub_80F14C4(s32 arg0, s32 arg1, u16 *arg3) {
    sub_8047E50(arg1, *arg3);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F14D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F155C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F15DC.s\"");
#else
s32 sub_8047154(void *, s32, s32);              /* extern */
s32 sub_8047258(void *, s32);                   /* extern */
s32 sub_8047364(void *, s32);                   /* extern */

s32 sub_80F15DC(void *arg0, void *arg2) {
    u8 temp_r2_40;
    void *temp_r2_33;
    void *temp_r3_39;
    void *temp_r4_12;

    temp_r4_12 = (*(void **)((s8 *)((((*(s32 *)((s8 *)(arg2) + (0))) * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28)));
    sub_8047364(temp_r4_12, 0);
    sub_8047258(temp_r4_12, 0);
    sub_8047154(temp_r4_12, (*(s32 *)((s8 *)(arg2) + (4))), (*(s32 *)((s8 *)(arg2) + (8))));
    (*(u8 *)((s8 *)(temp_r4_12) + (0x214))) = (u8) (0x7F & (*(u8 *)((s8 *)(temp_r4_12) + (0x214))));
    temp_r2_33 = (*(void **)((s8 *)(temp_r4_12) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_33) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_33) + (0x12))));
    temp_r3_39 = (*(void **)((s8 *)(temp_r4_12) + (0x294)));
    temp_r2_40 = (*(u8 *)((s8 *)(temp_r3_39) + (0x11)));
    (*(u8 *)((s8 *)(temp_r3_39) + (0x11))) = (u8) ((-0x41 & temp_r2_40) | (((((u32) (temp_r2_40 << 0x19) >> 0x1F) ^ (*(s32 *)((s8 *)(arg2) + (0xC)))) & 1) << 6));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1648.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F16C0.s\"");
#else
s32 sub_8047154(void *, s32, s32);              /* extern */
s32 sub_8047258(void *, s32);                   /* extern */
s32 sub_8047364(void *, s32);                   /* extern */

s32 sub_80F16C0(void *arg0, void *arg2) {
    u8 temp_r2_44;
    void *temp_r2_37;
    void *temp_r3_43;
    void *temp_r4_12;

    temp_r4_12 = (*(void **)((s8 *)((((*(s32 *)((s8 *)(arg2) + (0))) * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28)));
    sub_8047364(temp_r4_12, 0);
    sub_8047258(temp_r4_12, 0);
    (*(s32 (**)(void *, u8))((s8 *)(((*(s32 *)((s8 *)(temp_r4_12) + (0x338))) + 0x90)) + (4)))(temp_r4_12 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), (*(u8 *)((s8 *)(arg2) + (4))));
    sub_8047154(temp_r4_12, (*(s32 *)((s8 *)(arg2) + (8))), (*(s32 *)((s8 *)(arg2) + (0xC))));
    temp_r2_37 = (*(void **)((s8 *)(temp_r4_12) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_37) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_37) + (0x12))));
    temp_r3_43 = (*(void **)((s8 *)(temp_r4_12) + (0x294)));
    temp_r2_44 = (*(u8 *)((s8 *)(temp_r3_43) + (0x11)));
    (*(u8 *)((s8 *)(temp_r3_43) + (0x11))) = (u8) ((-0x41 & temp_r2_44) | (((((u32) (temp_r2_44 << 0x19) >> 0x1F) ^ (*(s32 *)((s8 *)(arg2) + (0x10)))) & 1) << 6));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1738.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_80F17C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F17DC.s\"");
#else
s32 sub_80473DC(s32);                           /* extern */

s32 sub_80F17DC(void *arg0, s32 *arg2) {
    sub_80473DC((*(s32 *)((s8 *)(((*arg2 * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28))));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F17F4.s\"");
#else
s32 sub_8029804(void *);                        /* extern */
s32 sub_8029830(void *);                        /* extern */
s32 sub_802E854(void *, s32);                   /* extern */
s32 sub_802EC64(void *, s32);                   /* extern */

s32 sub_80F17F4(void *arg0, void *arg2) {
    s32 temp_r3_9;
    s32 var_r4_34;
    u8 temp_r1_16;
    void *temp_r2_12;

    temp_r3_9 = (*(s32 *)((s8 *)(arg2) + (0)));
    if (temp_r3_9 != 0xFF) {
        temp_r2_12 = (*(void **)((s8 *)(arg0) + (0x14)));
        temp_r1_16 = (*(u8 *)((s8 *)(temp_r2_12) + (0x208)));
        if (((u32) (temp_r1_16 << 0x1D) >> 0x1F) != temp_r3_9) {
            if (0x10 & temp_r1_16) {
                sub_802E854(temp_r2_12, (*(s32 *)((s8 *)(arg2) + (4))));
            } else {
                sub_802EC64(temp_r2_12, (*(s32 *)((s8 *)(arg2) + (4))));
            }
        }
        var_r4_34 = (*(s32 *)((s8 *)(arg2) + (0)));
        sub_8029830((*(void **)((s8 *)(arg0) + (0x14))));
    } else {
        var_r4_34 = 0xFF;
        sub_8029804((*(void **)((s8 *)(arg0) + (0x14))));
    }
    (*(s32 *)((s8 *)(*(void **)0x03000FD0) + (0x528))) = var_r4_34;
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1858.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F18C4.s\"");
#else
s32 sub_8047154(void *, s32, s32);              /* extern */
s32 sub_8047258(void *, s32);                   /* extern */
s32 sub_8047364(void *, s32);                   /* extern */
u8 sub_80EA60C(s32, s32, s32, u8, s32);             /* extern */

u8 sub_80F18C4(s32 arg0, void *arg1, s32 arg2, void *arg3) {
    s32 var_r0_29;
    s8 *var_r2_26;
    u8 var_r1_27;

    sub_8047364(arg1, 1);
    sub_8047258(arg1, (*(s32 *)((s8 *)(arg3) + (8))));
    sub_8047154(arg1, (*(s32 *)((s8 *)(arg3) + (0))), 0);
    if ((*(s32 *)((s8 *)(arg3) + (8))) != 0) {
        var_r2_26 = arg1 + 0x215;
        var_r1_27 = (*(u8 *)((s8 *)(arg1) + (0x215)));
        var_r0_29 = -2;
    } else {
        var_r2_26 = arg1 + 0x214;
        var_r1_27 = (*(u8 *)((s8 *)(arg1) + (0x214)));
        var_r0_29 = 0x7F;
    }
    *var_r2_26 = var_r0_29 & var_r1_27;
    return sub_80EA60C(arg0 + 0x1C, arg2, (*(s32 *)((s8 *)(arg1) + (0x294))), (u8) (*(s32 *)((s8 *)(arg3) + (8))), (s32) (*(u8 *)((s8 *)(arg3) + (4))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1934.s\"");
#else
s32 sub_8047154(void *, s32, s32);              /* extern */
s32 sub_8047258(void *, s32);                   /* extern */
s32 sub_8047364(void *, s32);                   /* extern */

s32 sub_80F1934(s32 arg0, void *arg1, void *arg3) {
    u8 temp_r2_34;
    void *temp_r3_33;

    sub_8047364(arg1, 0);
    sub_8047258(arg1, 0);
    (*(s32 (**)(void *, u8))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x90)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), (*(u8 *)((s8 *)(arg3) + (0))));
    sub_8047154(arg1, (*(s32 *)((s8 *)(arg3) + (4))), (*(s32 *)((s8 *)(arg3) + (8))));
    temp_r3_33 = (*(void **)((s8 *)(arg1) + (0x294)));
    temp_r2_34 = (*(u8 *)((s8 *)(temp_r3_33) + (0x11)));
    (*(u8 *)((s8 *)(temp_r3_33) + (0x11))) = (u8) ((-0x41 & temp_r2_34) | (((((u32) (temp_r2_34 << 0x19) >> 0x1F) ^ (*(s32 *)((s8 *)(arg3) + (0xC)))) & 1) << 6));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1998.s\"");
#else
s32 sub_8047154(void *, s32, s32);              /* extern */
s32 sub_8047258(void *, s32);                   /* extern */
s32 sub_8047364(void *, s32);                   /* extern */
u8 sub_80EA60C(s32, s32, s32, u8, s32);             /* extern */

u8 sub_80F1998(s32 arg0, void *arg1, s32 arg2, void *arg3) {
    sub_8047364(arg1, 1);
    sub_8047258(arg1, (*(s32 *)((s8 *)(arg3) + (0xC))));
    if ((*(s32 *)((s8 *)(arg3) + (0xC))) != 0) {
        (*(s32 (**)(void *, u8))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x98)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), (*(u8 *)((s8 *)(arg3) + (0))));
    } else {
        (*(s32 (**)(void *, u8))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x90)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), (*(u8 *)((s8 *)(arg3) + (0))));
    }
    sub_8047154(arg1, (*(s32 *)((s8 *)(arg3) + (4))), 0);
    return sub_80EA60C(arg0 + 0x1C, arg2, (*(s32 *)((s8 *)(arg1) + (0x294))), (u8) (*(s32 *)((s8 *)(arg3) + (0xC))), (s32) (*(u8 *)((s8 *)(arg3) + (8))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1A1C.s\"");
#else
s32 sub_8050FD0();                              /* extern */
s32 sub_805113C();                              /* extern */

s32 sub_80F1A1C(s32 arg0, s32 arg1, s32 *arg3) {
    s32 temp_r3_8;

    temp_r3_8 = *arg3;
    switch (temp_r3_8) {                            /* irregular */
    case 0:
        sub_805113C();
        break;
    case 1:
        sub_8050FD0();
        break;
    }
    return 1;
}
#endif
