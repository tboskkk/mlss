#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_812A7A0 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_812A7A0.s", void sub_812A7A0(void *arg0));
u8 sub_8116620(s32);                                /* extern */
s32 sub_812A888(void *arg0)
{
  u8 temp_r1_11;
  temp_r1_11 = sub_8116620(*((s32 *) (((s8 *) arg0) + 0x20)));
  if (temp_r1_11 != 0)
  {
    return 1;
  }
  *((u8 *) (((s8 *) arg0) + 0x69)) = (double) temp_r1_11;
  return 0;
}

s32 sub_81151E4(s32, s32, u16, s32, s32, s32, s32, s32); /* extern */

void sub_812A8AC(void *arg0, u16 arg1) {
    sub_81151E4((*(s32 *)((s8 *)(arg0) + (0x20))), 4, arg1, 8, 0xFFFF, 0xFFFF, 0, 0);
    (*(s8 *)((s8 *)(arg0) + (0x69))) = 1;
}

ASM_FUNC("asm/nonmatching/sub_812A8E0.s", void sub_812A8E0(void *arg0));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812A930.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_812A9A0.s", void * sub_812A9A0(void *arg0, u8 arg1, s8 arg3, s32 arg4));
s32 process_remove(void *, s32);                /* extern */
s32 sub_80184F4(s32);                           /* extern */
s32 sub_80FAFD8(s32, s32);                      /* extern */
s32 sub_81166AC(s32, s32);                      /* extern */
void sub_812AA78(void *arg0, s32 arg1)
{
  unsigned long temp_r0_24;
  s32 temp_r0_98;
  void *temp_r0_105;
  void *temp_r0_15;
  void *temp_r0_30;
  void *temp_r0_40;
  void *temp_r0_45;
  void *temp_r0_62;
  void *temp_r0_67;
  void *temp_r0_72;
  void *temp_r0_84;
  void *temp_r0_89;
  void *var_r0_50;
  *((s32 *) (((s8 *) arg0) + 0x18)) = 0x08CDC3F8;
  *((s16 *) (((s8 *) ((void *) 0x02000000)) + 0)) = 0;
  ;
  *((s16 *) (((s8 *) ((void *) 0x02000000)) + 0x48)) = 0;
  *((s16 *) (((s8 *) (((void *) 0x02000000) + 0x48)) + 2)) = 0;
  *((s16 *) (((s8 *) ((((void *) 0x02000000) + 0x48) + 2)) + 6)) = 0;
  sub_80184F4(0x0600D000);
  sub_8021FD4();
  temp_r0_24 = *((s32 *) (((s8 *) arg0) + 0x24));
  if (temp_r0_24 != 0)
  {
    sub_80FAFD8(temp_r0_24, 3);
  }
  temp_r0_30 = *((void **) (((s8 *) arg0) + 0x38));
  if (temp_r0_30 != ((void *) 0))
  {
    free_heap_8018D9C(temp_r0_30);
  }
  if ((*((u8 *) (((s8 *) arg0) + 0xBD))) == 0)
  {
    temp_r0_40 = *((void **) (((s8 *) arg0) + 0x58));
    if (temp_r0_40 != ((void *) 0))
    {
      free_heap_8018D9C(temp_r0_40);
    }
    temp_r0_45 = *((void **) (((s8 *) arg0) + 0x54));
    if (temp_r0_45 != ((void *) 0))
    {
      free_heap_8018D9C(temp_r0_45);
    }
    var_r0_50 = *((void **) (((s8 *) arg0) + 0x40));
    goto block_18;
  }
  if (1 & (*((u8 *) (((s8 *) arg0) + 0xBE))))
  {
 do { temp_r0_62 = *((void **) (((s8 *) arg0) + 0x50)); if (temp_r0_62 != ((void *) 0)) { free_heap_8018D9C(temp_r0_62); } temp_r0_67 = *((void **) (((s8 *) arg0) + 0x4C)); if (temp_r0_67 != ((void *) 0)) { free_heap_8018D9C(temp_r0_67); } temp_r0_72 = *((void **) (((s8 *) arg0) + 0x48)); if (temp_r0_72 != ((void *) 0)) { free_heap_8018D9C(temp_r0_72); } } while (0);
    var_r0_50 = *((void **) (((s8 *) arg0) + 0x44));
    block_18:
    if (var_r0_50 != ((void *) 0))
    {
      free_heap_8018D9C(var_r0_50);
    }

  }
  else
  {
    temp_r0_84 = *((void **) (((s8 *) arg0) + 0x58));
    if (temp_r0_84 != ((void *) 0))
    {
      free_heap_8018D9C(temp_r0_84);
    }
    temp_r0_89 = *((void **) (((s8 *) arg0) + 0x40));
    if (temp_r0_89 != ((void *) 0))
    {
      free_heap_8018D9C(temp_r0_89);
    }
  }
  free_heap_8018DA8(*((void **) (((s8 *) arg0) + 0x28)));
  *((void **) (((s8 *) arg0) + 0x28)) = (void *) 0;
  temp_r0_15 = ((s8 *) arg0) + 0x20;
  temp_r0_98 = *((s32 *) temp_r0_15);
  if (temp_r0_98 != 0)
  {
    sub_81166AC(temp_r0_98, 3);
  }
  *((s32 *) (((s8 *) arg0) + 0x20)) = 0;
  temp_r0_105 = *((void **) (((s8 *) arg0) + 0x1C));
  if (temp_r0_105 != ((void *) 0))
  {
    process_remove(temp_r0_105, 3);
  }
  *((void **) (((s8 *) arg0) + 0x1C)) = (void *) 0;
  process_remove(arg0, arg1);
}

ASM_FUNC("asm/nonmatching/sub_812AB60.s", void sub_812AB60());
ASM_FUNC("asm/nonmatching/sub_812B9A0.s", s32 sub_812B9A0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_812BFB4.s", s32 sub_812BFB4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_812C350.s", s32 sub_812C350(void *arg0));
ASM_FUNC("asm/nonmatching/sub_812CDA0.s", void sub_812CDA0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_812CF54.s", s32 sub_812CF54(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_812E0D0.s", void sub_812E0D0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_812EF44.s", u8 sub_812EF44(s32 arg0, u16 arg1, u8 arg2, u8 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_812F1E4.s", void sub_812F1E4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_812F2F8.s", void sub_812F2F8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_812F4A0.s", void sub_812F4A0(void *arg0));