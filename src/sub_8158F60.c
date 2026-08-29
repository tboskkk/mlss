#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158F60 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8158F60(void *arg0)
{
  u16 temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0x1F2A)) = (*((u16 *) (((s8 *) arg0) + 0x1F2A))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) < 0)
  {
    *((s16 *) (((s8 *) arg0) + 0x1F28)) = 0;
  }
}

void play_sfx_80195B4(int, int);
void sub_8158F88(void *arg0, int arg1)
{
  int new_var2;
  int new_var;
  new_var = 0x5A;
  if ((*((s16 *) (((s8 *) arg0) + 0x1F28))) != arg1)
  {
    new_var2 = 0x1F28;
    *((s16 *) ((0, ((s8 *) arg0) + new_var2))) = arg1;
    *((s16 *) (((s8 *) arg0) + 0x1F2A)) = new_var;
    play_sfx_80195B4((s32) arg1, -1);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158FBC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159038.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159044.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81590D0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159130.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81591A8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815920C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8151650(void *, s32);                   /* extern */

void sub_8159258(void *arg0) {
    void *temp_r0_10;
    void *temp_r2_11;

    temp_r0_10 = (*(void **)((s8 *)(arg0) + (0x1CAC)));
    temp_r2_11 = (*(void **)((s8 *)(temp_r0_10) + (4)));
    if (((*(s32 (**)(void *, void *))((s8 *)(temp_r2_11) + (0x14)))(temp_r0_10 + (*(s16 *)((s8 *)(temp_r2_11) + (0x10))), arg0) == 0) && (arg0 != NULL)) {
        sub_8151650(arg0, 3);
    }
}
