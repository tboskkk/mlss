#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809C954 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_809CA24;

void sub_809C954(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809CA24;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809C960.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_809C7DC;
void sub_809C980(void *arg0)
{
  s32 var_r0_16;
  s32 var_r2_24;
  int new_var;
  void *temp_r2_9;
  temp_r2_9 = *((void **) (((s8 *) arg0) + 0x2C));
  if ((*((s16 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xF6))) != 0)
  {
    var_r0_16 = *((s32 *) (((s8 *) temp_r2_9) + 0x38));
    if (var_r0_16 < 0)
    {
      var_r0_16 += 0xFF;
    }
    new_var = (var_r0_16 >> 8) + 0x48;
    var_r2_24 = *((s32 *) (((s8 *) temp_r2_9) + 0x3C));
    if (var_r2_24 < 0)
    {
      var_r2_24 += 0xFF;
    }
    sub_808843C(arg0, new_var, var_r2_24 >> 8, 0x14, -1);
    sub_80880C4(arg0, 0x200);
  }
  *((s32 *) (((s8 *) arg0) + 0xA8)) = 0;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_809C7DC;
}
