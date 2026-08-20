#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_17 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_17(void) {
    return;
}

void sub_8018A4C(s32 arg0)
{
  s8 *new_var;
  void *new_var2;
  new_var2 = (void *) 0x0300034C;
  *((s32 *) (((s8 *) new_var2) + 0x24)) = arg0;
  new_var = (s8 *) new_var2;
  *((u8 *) (new_var + 0x889)) = (u8) ((*((u8 *) (((s8 *) new_var2) + 0x889))) | 1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018A68.s\"");
#else
s32 sub_81DA6B0();                              /* extern */
s32 sub_81DA6B8();                              /* extern */
s32 sub_81DA6C0();                              /* extern */

void sub_8018A68(void) {
    u16 temp_r10_14;
    u16 temp_r4_30;

    temp_r10_14 = *(u16 *)0x02000000;
    *(u16 *)0x04000000 = 0x80;
    *(u16 *)0x02000000 = *(u16 *)0x04000000;
    *(s16 *)0x04000132 = 0x8304;
    *(s16 *)0x04000208 = 0;
    temp_r4_30 = *(u16 *)0x04000200;
    *(u16 *)0x04000200 = 0x3000;
    *(s16 *)0x04000202 = 0;
    *(s16 *)0x04000208 = 1;
    sub_81DA6B0();
    M2C_ERROR(/* unknown instruction: swi 0x3 */);
    sub_81DA6B8();
    *(s16 *)0x04000208 = 0;
    *(u16 *)0x04000200 = temp_r4_30;
    *(s16 *)0x04000208 = 1;
    *(u16 *)0x02000000 = temp_r10_14;
    sub_81DA6C0();
}
#endif
