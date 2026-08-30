#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807411C needs.

asm_unified(".include \"asm/macros.inc\"");




void sub_80745A8(void *arg0);

extern s32 sub_80744B4;

s32 sub_807C298();
void sub_807411C(void *arg0)
{
  s8 *new_var2;
  u16 *new_var;
  unsigned long temp_r0_11;
  new_var2 = (s8 *) arg0;
  new_var = &(*((u16 *) (0xAC + new_var2)));
  temp_r0_11 = (*new_var) - 1;
  *((u16 *) (new_var2 + 0xAC)) = temp_r0_11;
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    *((s32 **) (new_var2 + 0x4C)) = &sub_80744B4;
  }
}

void sub_8074508(void *arg0);
void sub_807413C(void *arg0)
{
  s32 temp_r0_11;
  int new_var;
  temp_r0_11 = (*((s32 *) (((s8 *) arg0) + 0xA8))) + 1;
  *((s32 *) (((s8 *) arg0) + 0xA8)) = temp_r0_11;
  new_var = 0x12C;
  if (temp_r0_11 > 0x71)
  {
    *((s32 *) (((s8 *) arg0) + 0xA8)) = 0x72;
    *((s16 *) (((s8 *) (arg0 + 0xA8)) + 4)) = new_var;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8074508;
  }
}

s32 sub_8072FDC();                              /* extern */
s32 sub_80730C8(s32);                           /* extern */
void sub_8074164(void *arg0)
{
  s32 temp_r4_9;
  s32 var_r4_14;
  u8 var_r1_13;
  void *var_r2_16;
  s32 *new_var;
  void *var_r3_15;
  temp_r4_9 = *((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x30)))) + 0x30));
  sub_8072FDC();
  sub_80730C8(temp_r4_9);
  var_r1_13 = 0;
  var_r4_14 = 0;
  var_r3_15 = (void *) 0x03000E80;
  var_r2_16 = (void *) 0x03000E98;
  do
  {
    if ((*((u16 *) (((s8 *) var_r3_15) + 0))) != 0)
    {
      var_r1_13 += 1;
    }
    if ((*((u16 *) (((s8 *) var_r2_16) + 0))) != 0)
    {
      var_r1_13 += 1;
    }
    if ((*((u16 *) (((s8 *) var_r3_15) + 2))) != 0)
    {
      var_r1_13 += 1;
    }
    if ((*((u16 *) (((s8 *) var_r2_16) + 2))) != 0)
    {
      var_r1_13 += 1;
    }
    if ((*((u16 *) (((s8 *) var_r3_15) + 4))) != 0)
    {
      var_r1_13 += 1;
    }
    if ((*((u16 *) (((s8 *) var_r2_16) + 4))) != 0)
    {
      var_r1_13 += 1;
    }
    var_r3_15 += 6;
    var_r2_16 += 6;
    var_r4_14 += 3;
  }
  while ((*(new_var = &var_r4_14)) <= 0xB);
  if (var_r1_13 == 0)
  {
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80745A8);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80741EC.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_810D738(void *, void *, s32, s32, s32); /* extern */
extern s32 sub_807462C;

void sub_80741EC(void *arg0) {
    s32 temp_r1_10;
    s32 var_r0_36;
    s32 var_r2_16;
    s32 var_r3_22;

    temp_r1_10 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r1_10 == 0) {
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xC))) = (s16) temp_r1_10;
        var_r2_16 = (*(s32 *)((s8 *)(arg0) + (0x10)));
        if (var_r2_16 < 0) {
            var_r2_16 += 0xFF;
        }
        var_r3_22 = (*(s32 *)((s8 *)(arg0) + (0x18)));
        if (var_r3_22 < 0) {
            var_r3_22 += 0xFF;
        }
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) != -1) {
            var_r0_36 = 0x13;
        } else {
            var_r0_36 = 0x12;
        }
        sub_810D738((*(void **)((s8 *)(arg0) + (0x2C))), arg0, var_r2_16 >> 8, var_r3_22 >> 8, var_r0_36);
        (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xE0)));
        sub_8082E1C(arg0, 1, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_807462C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074260.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8072BE8;

void sub_80742D4(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        play_sfx_80195B4(0x10E, -1);
        arg0->handler = &sub_8072BE8;
    }
}

s32 sub_8086D80();                                  /* extern */
extern s32 sub_8072944;
s32 sub_80742FC(void *arg0)
{
  s32 var_r0_8;
  var_r0_8 = sub_8086D80();
  if (var_r0_8 == 0)
  {
    var_r0_8 = 0xAD;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8072944;
    play_sfx_80195B4(var_r0_8, -1);
    var_r0_8 = 0;
  }
  return var_r0_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074324.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
s32 sub_810DD7C(void *, void *, s32);           /* extern */

s32 sub_8074324(void *arg0) {
    s32 var_r0_17;
    s32 var_r0_25;
    s32 var_r0_33;
    void *temp_r3_14;

    play_sfx_80195B4(0xAD, -1);
    temp_r3_14 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
    var_r0_17 = (*(s32 *)((s8 *)(temp_r3_14) + (0xD8)));
    if (var_r0_17 < 0) {
        var_r0_17 += 0xFF;
    }
    var_r0_25 = (*(s32 *)((s8 *)(temp_r3_14) + (0xDC)));
    if (var_r0_25 < 0) {
        var_r0_25 += 0xFF;
    }
    var_r0_33 = (*(s32 *)((s8 *)(temp_r3_14) + (0xE0)));
    if (var_r0_33 < 0) {
        var_r0_33 += 0xFF;
    }
    sub_80DF024(0x226E, var_r0_17 >> 8, var_r0_25 >> 8, var_r0_33 >> 8, arg0);
    sub_810DD7C(arg0, (*(void **)((s8 *)(arg0) + (0x2C))), 0xFF);
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    sub_807C298(arg0);
    return 0;
}
#endif

void sub_807438C(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk84 - 1;
    arg0->unk84 = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
        sub_807C298(arg0);
    }
}

void sub_80743AC(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_807C298(arg0);
    }
}

s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_8074688;
void sub_80743C4(void *arg0)
{
  int new_var3;
  void **new_var2;
  int temp_r3_9;
  int new_var;
  void *temp_r1_13;
  void *temp_r2_15;
  new_var = 0x300;
  new_var3 = 4;
  temp_r3_9 = *((s32 *) (((s8 *) arg0) + 0x80));
  if (temp_r3_9 == 0)
  {
    temp_r1_13 = arg0 + 0x84;
    temp_r2_15 = *((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x2C)))) + 0x28));
    *((s32 *) (((s8 *) arg0) + 0x84)) = (s32) (*((s32 *) (((s8 *) temp_r2_15) + 0xD8)));
    *((s32 *) (((s8 *) temp_r1_13) + new_var3)) = (s32) (*((s32 *) (((s8 *) temp_r2_15) + 0xDC)));
    *((s32 *) (((s8 *) (temp_r1_13 + new_var3)) + new_var3)) = (s32) ((*((s32 *) (((s8 *) temp_r2_15) + 0xE0))) + 0x8000);
    *((u8 *) (((s8 *) arg0) + 0x79)) = (u8) ((*((u8 *) (((s8 *) arg0) + 0x79))) | 0x20);
    new_var2 = &arg0;
    *((s16 *) (((s8 *) (*new_var2)) + 0x7C)) = new_var;
    *((s16 *) (((s8 *) arg0) + 0x7A)) = (s16) temp_r3_9;
    sub_8085B38(arg0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8074688;
    new_var += 0;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_807442C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074452.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074460.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074488.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80744A8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80744B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_810CA8C(s32);                           /* extern */
extern s32 sub_80746EC;
void sub_8074508(void *arg0)
{
  s32 *var_r0_13;
  unsigned int temp_r0_20;
  if ((*((s32 *) (((s8 *) arg0) + 0x30))) == 0)
  {
    stop_sfx_80195A8(0xD5);
    var_r0_13 = &sub_80744B4;
    goto block_4;
  }
  temp_r0_20 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_20;
  if (((s32) (temp_r0_20 << 0x10)) <= 0)
  {
    sub_810CA8C(1);
    *((s32 *) (((s8 *) arg0) + 0xA0)) = 1;
 do { *((u16 *) (((s8 *) arg0) + 0xAC)) = 0xB4U; var_r0_13 = &sub_80746EC; } while (0);
    block_4:
    *((s32 **) (((s8 *) arg0) + 0x4C)) = var_r0_13;

  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074550.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8073C18;

void sub_8074550(void *arg0) {
    s32 var_r0_16;
    s32 var_r0_24;
    s32 var_r0_32;
    void *temp_r3_13;

    sub_8082E1C(arg0, 4, 0, 0);
    temp_r3_13 = (*(void **)((s8 *)(arg0) + (0x28)));
    var_r0_16 = (*(s32 *)((s8 *)(temp_r3_13) + (0xD8)));
    if (var_r0_16 < 0) {
        var_r0_16 += 0xFF;
    }
    var_r0_24 = (*(s32 *)((s8 *)(temp_r3_13) + (0xDC)));
    if (var_r0_24 < 0) {
        var_r0_24 += 0xFF;
    }
    var_r0_32 = (*(s32 *)((s8 *)(temp_r3_13) + (0xE0)));
    if (var_r0_32 < 0) {
        var_r0_32 += 0xFF;
    }
    sub_80DF024(0x22DC, var_r0_16 >> 8, var_r0_24 >> 8, var_r0_32 >> 8, arg0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8073C18;
}
#endif

void sub_80745A8(void *arg0) {
    void *temp_r4_12;
    void *temp_r5_11;
    void *temp_r6_10;

    temp_r6_10 = (*(void **)((s8 *)(arg0) + (0x30)));
    temp_r5_11 = (*(void **)((s8 *)(temp_r6_10) + (0x30)));
    temp_r4_12 = (*(void **)((s8 *)(temp_r5_11) + (0x30)));
    sub_807C298((*(void **)((s8 *)(temp_r4_12) + (0x30))));
    sub_807C298(temp_r4_12);
    sub_807C298(temp_r5_11);
    sub_807C298(temp_r6_10);
    stop_sfx_80195A8(0x5E);
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80745E4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_80731B4;

void sub_80745E4(void *arg0) {
    s32 var_r1_13;
    s32 var_r2_19;
    s32 var_r3_25;

    sub_8082E1C(arg0, 2, 0, 0);
    var_r1_13 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r1_13 < 0) {
        var_r1_13 += 0xFF;
    }
    var_r2_19 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_19 < 0) {
        var_r2_19 += 0xFF;
    }
    var_r3_25 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_25 < 0) {
        var_r3_25 += 0xFF;
    }
    sub_80DF024(0x22C0, var_r1_13 >> 8, var_r2_19 >> 8, var_r3_25 >> 8, arg0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80731B4;
}
#endif
