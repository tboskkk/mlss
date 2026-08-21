#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8066540 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8066540(void *arg0, s32 arg1, s32 arg2, s32 arg3)
{
  void *new_var;
  int new_var2;
  void *temp_r0_7;
  temp_r0_7 = arg0 + 0x84;
  new_var = arg0;
  *((s32 *) (((s8 *) new_var) + 0x84)) = arg1;
  new_var2 = 4;
  *((s32 *) (((s8 *) temp_r0_7) + new_var2)) = arg2;
  *((s32 *) (((s8 *) (temp_r0_7 + new_var2)) + new_var2)) = arg3;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066550.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8066540(void *arg0, s32 arg1, s32 arg2, s32 arg3);
extern s32 sub_8066334;

void sub_806657C(void *arg0) {
    sub_8066540((*(void **)((s8 *)(arg0) + (0x30))), (*(s32 *)((s8 *)(arg0) + (0x10))), (*(s32 *)((s8 *)(arg0) + (0x14))), (*(s32 *)((s8 *)(arg0) + (0x18))));
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8066334;
    }
}
