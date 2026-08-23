#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DD69C needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_81DD69C(u32* param_1) {
    u32* puVar1;
    
    puVar1 = (u32*)0x08CDD0D0;
    param_1[0x0C/4] = (u32)puVar1;
    param_1[0x04/4] = 0;
    param_1[0x00/4] = 0;
    param_1[0x08/4] = 0;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD6B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void free_heap_8018DA8(void *ptr);
void sub_81DD710(void *arg0, s32 arg1)
{
  s8 *new_var;
  void *temp_r2_15;
  void *var_r4_11;
  void *new_var2;
  *((s32 *) (((s8 *) arg0) + 0xC)) = 0x08CDD0D0;
  var_r4_11 = *((void **) (((s8 *) arg0) + 0));
  if (var_r4_11 != ((void *) 0))
  {
    do
    {
      temp_r2_15 = *((void **) (((s8 *) var_r4_11) + 8));
      (*((s32 (**)(void *, s32)) (((s8 *) temp_r2_15) + 0xC)))((new_var2 = var_r4_11 + 8) + (*((s16 *) (((s8 *) temp_r2_15) + 8))), 2);
      if (var_r4_11 != ((void *) 0))
      {
        *((void **) (((s8 *) var_r4_11) + 8)) = (void *) 0x08CDD0B8;
        free_heap_8018DA8(var_r4_11);
      }
      var_r4_11 = *((void **) (((s8 *) var_r4_11) + 4));
    }
    while (var_r4_11 != ((void *) 0));
  }
  *((s32 *) (((s8 *) arg0) + 4)) = 0;
  new_var = (s8 *) arg0;
  *((void **) (new_var + 0)) = (void *) 0;
  *((s32 *) (((s8 *) arg0) + 8)) = 0;
  if (1 & arg1)
  {
    free_heap_8018DA8(arg0);
  }
}
