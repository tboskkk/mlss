#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8072150 needs.

asm_unified(".include \"asm/macros.inc\"");



void sub_80722F8(void *arg0);

s32 sub_807C298();
s32 sub_807F47C();
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8072150.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_807223C(void *arg0) {
    s32 temp_r2_12;
    s32 var_r0_20;
    s32 var_r0_36;

    temp_r2_12 = (*(s32 *)((s8 *)(arg0) + (0xA0))) + 0x14;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r2_12;
    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
        var_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x10))) - temp_r2_12;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_20;
        if (var_r0_20 < 0) {
            var_r0_20 += 0xFF;
        }
        if ((s32) (var_r0_20 >> 8) <= -0x20) {
            sub_807F47C(arg0);
            goto block_8;
        }
    } else {
        var_r0_36 = (*(s32 *)((s8 *)(arg0) + (0x10))) + temp_r2_12;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_36;
        if (var_r0_36 < 0) {
            var_r0_36 += 0xFF;
        }
        if ((s32) (var_r0_36 >> 8) > 0xFF) {
block_8:
            sub_807C298(arg0);
        }
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_810835C(void *, s32);                   /* extern */
u32 sub_8199F30();                                  /* extern */
short sub_8072294(void *arg0, void *arg1)
{
  void *temp_r2_17;
  if (0x32U >= ((u32) ((u8) (sub_8199F30() % 100U))))
  {
    temp_r2_17 = *((void **) (((s8 *) arg1) + 0x28));
    if ((*((s16 *) (((s8 *) temp_r2_17) + 0xF6))) != 0)
    {
      sub_810835C(temp_r2_17, 0xC8);
      sub_8082E1C(arg1, 0, 0, 0);
    }
  }
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_807223C);
}

s32 sub_810DD7C(void *, s32, s32);          /* extern */
volatile int sub_80722E0(void *arg0, s32 arg1)
{
  s32 *new_var2;
  s32 **new_var;
  int new_var4;
  int new_var3;
  sub_810DD7C(arg0, arg1, 0xFF);
 new_var4 = (new_var3 = 0x4C); do { new_var = (s32 **) (((s8 *) arg0) + new_var4); new_var2 = (s32 *) &sub_80722F8; *new_var = new_var2; } while (0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80722F8.s\"");
#else
s32 sub_807C298(void *);                        /* extern */
s32 sub_807F47C(void *);                        /* extern */

void sub_80722F8(void *arg0) {
    s32 temp_r2_12;
    s32 var_r0_20;
    s32 var_r0_34;

    temp_r2_12 = (*(s32 *)((s8 *)(arg0) + (0xA0))) + 0x14;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r2_12;
    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
        var_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x10))) - temp_r2_12;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_20;
        if (var_r0_20 < 0) {
            var_r0_20 += 0xFF;
        }
        if ((s32) (var_r0_20 >> 8) <= -0x20) {
            goto block_8;
        }
    } else {
        var_r0_34 = (*(s32 *)((s8 *)(arg0) + (0x10))) + temp_r2_12;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_34;
        if (var_r0_34 < 0) {
            var_r0_34 += 0xFF;
        }
        if ((s32) (var_r0_34 >> 8) > 0xFF) {
block_8:
            sub_807F47C(arg0);
            sub_807C298(arg0);
        }
    }
}
#endif
