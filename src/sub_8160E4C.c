#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160E4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160E4C.s\"");
#else
s32 sub_8160E4C(void *arg0) {
    (*(void **)((s8 *)((void *)0x040000D4) + (0))) = arg0;
    (*(s32 *)((s8 *)((void *)0x040000D4) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x810)));
    (*(s32 *)((s8 *)((void *)0x040000D4) + (8))) = 0x84000200;
    return (*(s32 *)((s8 *)((void *)0x040000D4) + (8)));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160E6C.s\"");
#else
void sub_8160E6C(u32* param_1)
{
  u32* puVar1;
  
  puVar1 = param_1 + 0x201;
  if (*puVar1 != 0) {
    free_heap_8018D9C(*puVar1);
    *puVar1 = 0;
  }
  puVar1 = param_1 + 0x203;
  if (*puVar1 != 0) {
    free_heap_8018D9C(*puVar1);
    *puVar1 = 0;
  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160EA4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
