#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7590 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80F7590(s32 arg0) {
    void *temp_r2_12;

    temp_r2_12 = (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) & ~arg0);
}

void sub_80F75B4(s32 arg0) {
    void *temp_r2_12;

    temp_r2_12 = (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) | arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F75D8.s\"");
#else
void sub_80F75D8(s32 arg0) {
    void *temp_r2_12;

    temp_r2_12 = (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) | arg0);
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1798))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1798))) | arg0);
}
#endif

s32 sub_810C950();                              /* extern */
s32 sub_810CA30();                              /* extern */
void sub_80F7608(u8 arg0)
{
  s8 *new_var4;
  u8 temp_r4_8;
  int new_var3;
  void *temp_r2_17;
  int new_var2;
  int new_var;
  new_var2 = (new_var3 = -2);
  temp_r4_8 = arg0;
  if (temp_r4_8 != 0)
  {
    sub_810CA30();
  }
  else
  {
    sub_810C950();
  }
  new_var4 = ((s8 *) (*((void **) 0x03000FD8))) + 0x2BF;
  new_var = 1;
  new_var = new_var & temp_r4_8;
  *((u8 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x2BF)) = (u8) ((new_var2 & (*((u8 *) new_var4))) | new_var);
  ;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7644.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F76B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
