#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808761C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808761C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087650.s\"");
#else
void sub_8087650(u32 param_1) {
  u32 *puVar1;
  u32 *puVar2;
  u8 uVar3;
  
  puVar1 = (u32 *)0x3000FD8;
  puVar2 = puVar1 + 0x20;
  if (param_1 == *puVar2) {
    puVar2 = puVar1 + 0x21;
  }
  if (*puVar2 != 0) {
    puVar1 = puVar2;
    puVar2 = puVar1 + 0x1F;
    uVar3 = *(u8 *)puVar2;
    if ((uVar3 & 6) == 2) {
      puVar1 = puVar2;
    }
  }
  return;
}
#endif
