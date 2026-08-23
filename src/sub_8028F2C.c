#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8028F2C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8028F2C(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x12D))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x12D))) | 0x20);
}

void sub_8028F40(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x12D))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x12D))) | 0x10);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/make_btl_8028F54.s\"");
#else
s32 init_btl_process_80FC25C(void *, s32, s32, void *); /* extern */
s32 process_disable(void *);                    /* extern */

void make_btl_8028F54(void *arg0) {
    (*(u16 *)((s8 *)(arg0) + (0x2AC))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x2B4)));
    (*(u16 *)((s8 *)(arg0) + (0x2B4))) = 0xFFFFU;
    process_disable(arg0);
    (*(s8 *)((s8 *)(arg0) + (0))) = 2;
    *(s8 *)0x03000C24 = 1;
    if (*(s32 *)0x03000C78 == 0) {
        *(s32 *)0x03000C78 = 0x0800063C;
    }
    init_btl_process_80FC25C(alloc_Zero(0x1CU, 0U, (s8 *)0x081E267C, 0U), 8, 0x081E267C, arg0 + 0x2AC);
}
#endif

s32 sub_8019628(s32);                           /* extern */
s32 sub_80273E4(void *);                        /* extern */
s32 sub_8057B58(s32, s32);                      /* extern */
s32 sub_80E8DC0();                              /* extern */
s32 sub_815085C(s8);                            /* extern */
void sub_8028FBC(void *arg0)
{
  s32 temp_r0_17;
  s8 new_var;
  sub_801A6B0();
  sub_8019628(0);
  sub_80273E4(arg0);
  sub_80E8DC0();
  temp_r0_17 = *((s32 *) (((s8 *) arg0) + 0x304));
  if (temp_r0_17 != 0)
  {
    sub_8057B58(temp_r0_17, 3);
    *((s32 *) (((s8 *) arg0) + 0x304)) = 0;
  }
  sub_8018B78(2, (void *) 0);
  *((s8 *) (((s8 *) arg0) + 0)) = 1;
  if ((unsigned int) ((*((s32 *) 0x03000C78)) == 0))
  {
    *((s32 *) 0x03000C78) = 0x0800063C;
  }
  new_var = *((s8 *) (((s8 *) arg0) + 0x12B));
  sub_815085C(new_var);
  new_var = -1;
  *((s8 *) (((s8 *) arg0) + 0x12B)) = new_var;
}
