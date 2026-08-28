#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8108C38 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8108C38(void *arg0)
{
  u16 temp_r1_11;
  temp_r1_11 = 0x100;
  ;
  if (0x80 & (*((u16 *) (((s8 *) arg0) + ((unsigned long) 0x11E)))))
  {
    *((u16 *) (((s8 *) arg0) + 0x11E)) = (u16) (0xFF7F & (*((u16 *) (((s8 *) arg0) + ((unsigned long) 0x11E)))));
    *((s16 *) (((s8 *) arg0) + 0x11C)) = temp_r1_11;
  }
}

void sub_8108C64(void *arg0)
{
  u16 *new_var;
  u16 temp_r1_11;
  int new_var2;
  new_var2 = 0x100;
  new_var = &(*((u16 *) (((s8 *) arg0) + 0x11E)));
  ;
  if (0x20 & (*new_var))
  {
    *((u16 *) (((s8 *) arg0) + 0x11E)) = (u16) (0xFFDF & (*new_var));
    *((s16 *) (((s8 *) arg0) + 0x10C)) = new_var2;
  }
}

void sub_8108C90(void *arg0)
{
  u16 temp_r1_11;
  s8 *new_var2;
  unsigned int new_var3;
  int new_var;
  temp_r1_11 = *((u16 *) (((s8 *) arg0) + 0x11E));
  new_var3 = 0x100;
  if (8 & temp_r1_11)
  {
    new_var = 0xFFF7;
    new_var = new_var & temp_r1_11;
    *((u16 *) (((s8 *) arg0) + 0x11E)) = (u16) new_var;
    *((s16 *) ((new_var2 = (s8 *) arg0) + 0x10A)) = new_var3;
  }
}
