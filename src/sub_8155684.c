#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8155684 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8155684.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8161888(s32);                           /* extern */
void *sub_815731C(void *arg0, void *arg1)
{
  s32 var_r3_16;
  s32 var_r3_69;
  s32 new_var;
  void *temp_r6_18;
  void *var_r0_108;
  void *var_r0_57;
  void *var_r1_21;
  void *var_r1_72;
  void *var_r2_19;
  void *var_r2_70;
  *((s32 *) (((s8 *) arg0) + 0)) = 0;
  *((s32 *) (((s8 *) arg0) + 4)) = 0x08CDC510;
  *((s32 *) (((s8 *) arg0) + 0x10)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x14)) = 0;
  *((s32 *) (((s8 *) arg0) + 0x18)) = 0;
  var_r3_16 = 0;
  temp_r6_18 = arg1 + 0x1898;
  var_r2_19 = temp_r6_18;
  loop_1:
  var_r1_21 = *((void **) (((s8 *) var_r2_19) + 0));

  if (((((var_r1_21 != ((void *) 0)) && ((*((u8 *) (((s8 *) var_r1_21) + 0x25))) == 0xC)) || (((var_r1_21 = *((void **) (((s8 *) var_r2_19) + 4)), var_r1_21 != ((void *) 0))) && ((*((u8 *) (((s8 *) var_r1_21) + 0x25))) == 0xC))) || (((var_r1_21 = *((void **) (((s8 *) var_r2_19) + 8)), var_r1_21 != ((void *) 0))) && ((*((u8 *) (((s8 *) var_r1_21) + 0x25))) == 0xC))) || (((var_r1_21 = *((void **) (((s8 *) var_r2_19) + 0xC)), var_r1_21 != ((void *) 0))) && ((*((u8 *) (((s8 *) var_r1_21) + 0x25))) == 0xC)))
  {
    var_r0_57 = var_r1_21;
  }
  else
  {
    var_r2_19 = var_r2_19 + 0x10;
    var_r3_16 += 4;
    if (var_r3_16 > 0xFF)
    {
      var_r0_57 = (void *) 0;
    }
    else
    {
      goto loop_1;
    }
  }
  *((void **) (((s8 *) arg0) + 8)) = var_r0_57;
  var_r3_69 = 0;
  var_r2_70 = temp_r6_18;
  loop_13:
  var_r1_72 = *((void **) (((s8 *) var_r2_70) + 0));

  if (((((var_r1_72 != ((void *) 0)) && ((*((u8 *) (((s8 *) var_r1_72) + 0x25))) == 0xD)) || (((var_r1_72 = *((void **) (((s8 *) var_r2_70) + 4)), var_r1_72 != ((void *) 0))) && ((*((u8 *) (((s8 *) var_r1_72) + 0x25))) == 0xD))) || (((var_r1_72 = *((void **) (((s8 *) var_r2_70) + 8)), var_r1_72 != ((void *) 0))) && ((*((u8 *) (((s8 *) var_r1_72) + 0x25))) == 0xD))) || (((var_r1_72 = *((void **) (((s8 *) var_r2_70) + 0xC)), var_r1_72 != ((void *) 0))) && ((*((u8 *) (((s8 *) var_r1_72) + 0x25))) == 0xD)))
  {
    var_r0_108 = var_r1_72;
  }
  else
  {
    var_r2_70 += 0x10;
    var_r3_69 += 4;
    if (var_r3_69 > 0xFF)
    {
      var_r0_108 = (void *) 0;
    }
    else
    {
      goto loop_13;
    }
  }
  *((void **) (((s8 *) arg0) + 0xC)) = var_r0_108;
  sub_8161888(*((s32 *) (((s8 *) arg1) + 0x1CA4)));
  new_var = *((s32 *) (((s8 *) (*((void **) (((s8 *) arg1) + 0x1CB0)))) + 0x1C));
  *((s16 *) (((s8 *) arg1) + 0x1F2C)) = (s16) new_var;
  return arg0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8157410.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8157854.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8157C48.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_81617F4(s32, s32);                      /* extern */
s32 sub_8161C08(s32, s32);                      /* extern */

void sub_8158000(void *arg0, s32 arg1) {
    s32 temp_r0_11;
    s32 temp_r0_17;

    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDC4D0;
    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (8)));
    if (temp_r0_11 != 0) {
        sub_81617F4(temp_r0_11, 3);
    }
    temp_r0_17 = (*(s32 *)((s8 *)(arg0) + (0xC)));
    if (temp_r0_17 != 0) {
        sub_8161C08(temp_r0_17, 3);
    }
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCA30;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

s32 sub_8161698();                                  /* extern */
s32 sub_8161AAC();                                  /* extern */

void *sub_8158044(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDC4D0;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = 0;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    if ((s32) ((s32) (*(u8 *)0x03001010 << 0x1B) >> 0x1B) <= 5) {
        alloc_Zero(0x34U, 1U, (s8 *)0x082126E0, 0U);
        (*(s32 *)((s8 *)(arg0) + (0xC))) = sub_8161AAC();
    } else {
        alloc_Zero(0x34U, 1U, (s8 *)0x082126E0, 0U);
        (*(s32 *)((s8 *)(arg0) + (8))) = sub_8161698();
    }
    return arg0;
}

s32 sub_81649AC(s32, s32, s32, s32, s32);   /* extern */
void sub_81580A4(void *arg0, s32 arg1)
{
  s32 new_var3;
  s8 *new_var;
  void *new_var2;
  void *temp_r3_10;
  if (temp_r3_10)
  {
  }
  new_var2 = *((void **) (((s8 *) arg0) - -0x4C));
  temp_r3_10 = *((void **) 0x03001018);
  new_var3 = ((s32) ((*((s32 *) (((s8 *) new_var2) + 4))) - (*((s32 *) (((s8 *) temp_r3_10) + 0x1CB8))))) >> 8;
  new_var = ((s8 *) temp_r3_10) + 0x1CA8;
  sub_81649AC(*((s32 *) new_var), arg1, new_var3, 0x50, 1);
}

s32 sub_816504C(s32);                               /* extern */
s32 sub_81580E0(void *arg0)
{
  void *new_var2;
  int new_var;
 goto dummy_label_3245; dummy_label_3245: ; new_var2 = arg0; new_var = 0;
  if (0 == sub_816504C(*((s32 *) (((s8 *) arg0) + 0x30))))
  {
    if ((new_var2 && arg0) && arg0)
    {
    }
    return new_var;
  }
  return (short) 1;
}
