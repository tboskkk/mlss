#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8073E4C needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_807411C;
void sub_8073E4C(void *arg0)
{
  u16 temp_r0_34;
  void *new_var;
  void *temp_r1_9;
  void *new_var2;
  temp_r1_9 = *((void **) 0x03000FD8);
  new_var = *((void **) (((s8 *) temp_r1_9) + 0x70));
  new_var2 = *((void **) (temp_r1_9 + 0x74));
  if (((6 & (*((u8 *) (((s8 *) new_var) + 0x7E)))) != 2) && ((6 & (*((u8 *) (((s8 *) new_var2) + 0x7E)))) != 2))
  {
    *((u16 *) (((s8 *) arg0) + 0xAC)) = 0U;
  }
  temp_r0_34 = (*((u16 *) (0xAC + ((s8 *) arg0))) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_34 << 0x10)) <= 0)
  {
    new_var += 0;
    *((s32 *) (((s8 *) arg0) + 0xA8)) = 0;
    *((u16 *) (((s8 *) arg0) + 0xAC)) = 0x3CU;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_807411C;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8073EAC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8073F70.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8074034.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80740D4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
