#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029804 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8029804(void *arg0)
{
  void *temp_r1_18;
  int new_var;
  s8 *new_var2;
  new_var = 0x200;
  *((u8 *) (((s8 *) arg0) + 0x208)) = (u8) ((-3) & (*(new_var2 = (u8 *) (((s8 *) arg0) + 0x208))));
  new_var2 = ((s8 *) arg0) + new_var;
  temp_r1_18 = *((void **) new_var2);
  *((u8 *) (((s8 *) temp_r1_18) + 0x351)) = (u8) ((*((u8 *) (((s8 *) temp_r1_18) + 0x351))) | 0x40);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029830.s\"");
#else
void sub_8029830(void *arg0) {
    void *temp_r1_26;

    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x208))) | 2);
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x100)));
    temp_r1_26 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_26) + (0x351))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r1_26) + (0x351))));
}
#endif

void sub_8029878(void) {
    play_sfx_80195B4(0x50, -1);
}
