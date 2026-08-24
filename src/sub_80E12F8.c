#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E12F8 needs.

asm_unified(".include \"asm/macros.inc\"");

void *sub_807FFB8(s32 *);                       /* extern */
extern s32 sub_80E19EC;
void sub_80E12F8(unsigned int arg0, int arg1)
{
  s8 *new_var;
  void *var_r1_14;
  var_r1_14 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x274));
  if (var_r1_14 == ((void *) 0))
  {
    var_r1_14 = sub_807FFB8(&sub_80E19EC);
  }
  *((s16 *) (((s8 *) var_r1_14) + 0x12)) = arg0;
  *((s16 *) (((s8 *) var_r1_14) + 0x14)) = arg1;
  *((s16 *) (((s8 *) var_r1_14) + 0x10)) = (s16) ((*((u16 *) 0x02000018)) << 8);
  *((s16 *) (((s8 *) var_r1_14) + 0x18)) = (s16) ((*((u16 *) 0x0200001A)) << 8);
  new_var = ((s8 *) (*((void **) 0x03000FD8))) + 0x274;
  *((void **) new_var) = var_r1_14;
}

ASM_FUNC("asm/nonmatching/sub_80E1348.s", void sub_80E1348(void *arg0));