#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E1908 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_80DF5EC();                              /* extern */
void sub_80E1908(void *arg0)
{
  s8 *new_var2;
  s8 *new_var3;
  void *new_var;
  u16 *temp_r1_7;
  new_var = arg0;
  temp_r1_7 = *((u16 **) (((s8 *) arg0) + 0xC));
  new_var2 = (s8 *) arg0;
  new_var3 = ((s8 *) new_var) + 0xC;
  *((u16 *) (arg0 + 0x10)) = (u16) (*temp_r1_7);
  new_var = temp_r1_7;
  *((u16 **) new_var3) = (u16 *) (new_var + 2);
  *((s32 (**)()) (new_var2 + 4)) = sub_80DF5EC;
  sub_80DF5EC();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1924.s\"");
#else
extern void sub_80E1AF0();

void sub_80E1924(void* p0) {
    u32* r1 = *(u32**)((u8*)p0 + 0x0C);
    u16 r2 = *(u16*)(r1);
    *(u16*)((u8*)p0 + 0x10) = r2;
    r1 += 1;
    *(u32*)((u8*)p0 + 0x0C) = r1;
    *(u32*)((u8*)p0 + 0x04) = (u32)sub_80E1AF0;
    ((void(*)(void))(*(u32*)((u8*)p0 + 0x04)))();
    p0 = *(void**)((u8*)p0 + 0x00);
    ((void(*)())(p0))();
}
#endif

s32 sub_80DF2B0();                              /* extern */
void sub_80E1940(void *arg0)
{
  u16 *temp_r1_7;
  u16 *new_var;
  void *new_var2;
  temp_r1_7 = *((u16 **) (0xC + ((s8 *) arg0)));
  new_var2 = arg0;
  *(new_var = (u16 *) (((s8 *) new_var2) + 0x10)) = (u16) (*temp_r1_7);
  new_var2 = temp_r1_7;
  *((u16 **) (((s8 *) arg0) + 0xC)) = (u16 *) (new_var2 + 2);
  *((s32 (**)()) (((s8 *) arg0) + 4)) = sub_80DF2B0;
  sub_80DF2B0();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E195C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_807F6D0();                              /* extern */

void sub_80E19A8(void *arg0) {
    if ((s32) (s16) (*(u16 *)((s8 *)(arg0) + (0x10))) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    sub_807F6D0();
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
}
