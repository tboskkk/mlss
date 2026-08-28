#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159974 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8159974(void *arg0)
{
  u16 new_var;
  new_var = (u16) (1 | (*((u16 *) (((s8 *) arg0) + 0x528))));
  *((u16 *) (((s8 *) arg0) + 0x528)) = new_var;
}

void sub_8159984(void *arg0, s16 arg1) {
    (*(s16 *)((s8 *)(arg0) + (0x518))) = 1;
    (*(s16 *)((s8 *)(arg0) + (0x514))) = arg1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815999C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
