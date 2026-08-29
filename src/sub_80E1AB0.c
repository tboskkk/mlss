#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E1AB0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_807FB34(void *);                        /* extern */
s32 sub_807FC54(void *, s16, s16, s16, s32);    /* extern */

void sub_80E1AB0(struct Entity *arg0) {
    u8 temp_r0_14;
    void *temp_r5_9;

    temp_r5_9 = arg0->unk08;
    temp_r0_14 = 8 & (*(u8 *)((s8 *)(temp_r5_9) + (0x12)));
    if (temp_r0_14 == 0) {
        sub_807FC54(temp_r5_9, (*(s16 *)((s8 *)(arg0) + (0x12))), (*(s16 *)((s8 *)(arg0) + (0x14))), (*(s16 *)((s8 *)(arg0) + (0x16))), (s32) temp_r0_14);
        return;
    }
    sub_807FB34(temp_r5_9);
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
}

s32 sub_80DF024(u16, s16, s16, s16, s32);       /* extern */
void sub_80E1AF0(void *arg0)
{
  u16 temp_r0_25;
  void *temp_r5_14;
  if ((*((s16 *) (((s8 *) arg0) + 0x10))) == 0)
  {
    do
    {
      temp_r5_14 = (void *) (*((void **) (((s8 *) arg0) + 0xC)));
      sub_80DF024(*((u16 *) (((s8 *) temp_r5_14) + 0)), *((s16 *) (((s8 *) arg0) + 0x12)), *((s16 *) (((s8 *) arg0) + 0x14)), *((s16 *) (((s8 *) arg0) + 0x16)), *((s32 *) (((s8 *) arg0) + 8)));
      temp_r0_25 = (*((s16 *) (((s8 *) arg0) + 0x10)) = *((u16 *) (((s8 *) temp_r5_14) + 2)));
      *((void **) (((s8 *) arg0) + 0xC)) = (void *) (temp_r5_14 + 4);
    }
    while (((temp_r0_25 << 1) << 15) == 0);
  }
  if (((s32) (*((s16 *) (0x10 + ((s8 *) arg0))))) < 0)
  {
    *((s32 *) (((s8 *) arg0) + 4)) = 0;
    return;
  }
  *((s16 *) (((s8 *) arg0) + 0x10)) = (s16) (((u16) (*((s16 *) (((s8 *) arg0) + 0x10)))) - 1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1B40.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E2A80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 process_remove(void *);                     /* extern */
void sub_80E2EDC(void *arg0)
{
  unsigned long long new_var;
  int new_var2;
  s32 *temp_r3_10;
  *((s32 *) (((s8 *) arg0) - -0x18)) = 0x08CDC2E8;
  temp_r3_10 = (s32 *) (*((s32 **) (((s8 *) arg0) + 0x1C)));
  new_var2 = 0;
  if (temp_r3_10 != ((void *) new_var2))
  {
    new_var = new_var2;
    *temp_r3_10 = new_var;
  }
  process_remove(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E2EFC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
