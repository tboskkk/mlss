#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8152650 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152650.s\"");
#else
void sub_8152650(u32* param_1)
{
    u8* puVar1;
    u32 uVar2;
    
    puVar1 = (u8*)param_1 + 0xC;
    if (*(u8*)puVar1 <= 0x13) {
        uVar2 = *(u32*)((u32*)param_1 + 0x15266C + ((u32)*(u8*)puVar1 << 2));
        (*(code**)uVar2)();
    }
    return;
}
#endif

s32 sub_8158E10(s32);                           /* extern */
s32 sub_8158E18(s32);                           /* extern */
void sub_81528D0(void *arg0, s32 arg1)
{
  int new_var;
  s32 *new_var2;
  if (arg1)
  {
    if (arg1)
    {
    }
    *((u16 *) (((s8 *) arg0) + 0x1CC4)) = (u16) ((0xFFF6 & (*((u16 *) (((s8 *) arg0) + 0x1CC4)))) | 0x10);
    sub_8158E10(*((s32 *) (((s8 *) arg0) + 0x1C98)));
    new_var2 = &(*((s32 *) (((s8 *) arg0) + 0x1C9C)));
    sub_8158E10(*new_var2);
    return;
  }
  new_var = 9 | (*((u16 *) (((s8 *) arg0) + 0x1CC4)));
  new_var = new_var & 0xFFEF;
  *((u16 *) (((s8 *) arg0) + 0x1CC4)) = (u16) new_var;
  sub_8158E18(*((s32 *) (((s8 *) arg0) + 0x1C98)));
  sub_8158E18(*((s32 *) (((s8 *) arg0) + 0x1C9C)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815294C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152BF4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152CF0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152FE8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81531B0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153304.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153688.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
