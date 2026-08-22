#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806814C needs.

asm_unified(".include \"asm/macros.inc\"");




extern s32 sub_806829C;
int sub_8082B00();
int sub_8082E1C();

extern s32 sub_808750C;

int sub_807C298();

void sub_806814C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068168.s\"");
#else
extern s32 sub_8067DC8;

s32 sub_8068168(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 2;
        (*(s32 *)((s8 *)((arg0 + 0x9C)) + (4))) = 1;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8067DC8;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806819C.s\"");
#else
void sub_806819C(void *arg0)
{
  s32 temp_r1_8;
  s32 temp_r3_14;
  s32 temp_r4_12;
  s32 var_r0_10;
  s32 var_r0_26;
  temp_r1_8 = *((s32 *) (((s8 *) arg0) + 0x10));
  var_r0_10 = temp_r1_8 + 0xFFFFFECD;
  *((s32 *) (((s8 *) arg0) + 0x10)) = var_r0_10;
  temp_r4_12 = *((s32 *) (((s8 *) arg0) + 0x18));
  temp_r3_14 = temp_r4_12 + 0xFFFFFE00;
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r3_14;
  if (var_r0_10 < 0)
  {
    var_r0_10 = temp_r1_8 - 0x34;
  }
  temp_r1_8 = var_r0_10 >> 8;
  if (((s32) temp_r1_8) > (-0x20))
  {
    var_r0_26 = temp_r3_14;
    if (var_r0_26 < 0)
    {
      var_r0_26 = temp_r4_12 + 0xFFFFFEFF;
    }
    if (((s32) (var_r0_26 >> 8)) <= 0)
    {
      goto block_6;
    }
  }
  else
  {
    block_6:
    sub_807C298(arg0);

  }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80681EC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806822C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8068268(void) {
    sub_807C298();
}

void sub_8068274(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806829C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806829C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80682C8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80683C4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80684B0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806856C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068798.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80687EC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
