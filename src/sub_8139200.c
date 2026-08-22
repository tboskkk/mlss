#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139200 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139200.s\"");
#else
void sub_8139200(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x25C))) != -1) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + (*(s32 *)((s8 *)(arg0) + (0x258))));
        (*(s32 *)((s8 *)(arg0) + (0x258))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x258))) - (*(s32 *)((s8 *)(arg0) + (0x248))));
        (*(s32 *)((s8 *)(arg0) + (0x25C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x25C))) + 1);
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0) {
            (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x25C))) = -1;
            (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139260.s\"");
#else
s32 sub_8047154(void *, s32, s32);              /* extern */
s32 sub_8047258(void *, s32);                   /* extern */
s32 sub_8047364(void *, s32);                   /* extern */
s32 sub_804790C(void *, s32);                   /* extern */
s32 sub_8138F64(s32, u16);                  /* extern */
extern s32 sub_8136FB4;

void sub_8139260(s32 arg0, void *arg1) {
    sub_8138F64(arg0, (*(u16 *)((s8 *)(arg1) + (0x134))));
    sub_8047364(arg1, 1);
    sub_8047258(arg1, 0);
    sub_8047154(arg1, ((u32) ((*(u8 *)((s8 *)(arg1) + (0x24))) << 0x1D) >> 0x1E) + 4, 0);
    sub_804790C(arg1, 0x10);
    (*(s32 **)((s8 *)(arg1) + (0x198))) = &sub_8136FB4;
}
#endif

s32 sub_80473DC(void *);                        /* extern */

void sub_81392CC(s32 arg0, void *arg1, void *arg2) {
    if (0x40 & (*(u8 *)((s8 *)(arg1) + (0x214)))) {
        sub_80473DC(arg1);
    }
    (*(s32 *)((s8 *)(arg2) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (4)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81392F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139364.s\"");
#else
void sub_8139364(s32 arg0, void *arg1, void *arg2)
{
  int new_var;
  new_var = -3;
  if (sub_8138C8C() == 1)
  {
    sub_81382A8(arg1);
    return;
  }
  *((u8 *) (((s8 *) arg1) + 0x1D6)) = (u8) ((new_var & (*((u8 *) (((s8 *) arg1) + 0x1D6)))) | 1);
  *((s32 *) (((s8 *) arg2) + 0)) = (s32) (*((s32 *) (((s8 *) arg2) + 4)));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813939C.s\"");
#else
void sub_813939C(s32 arg0, void *arg1) {
    u8 temp_r1_17;

    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x1A0)))(arg0, arg1);
    temp_r1_17 = (*(u8 *)((s8 *)(arg1) + (0x1D6)));
    if (!(2 & temp_r1_17) && ((temp_r1_17 << 0x1F) != 0)) {
        (*(s32 *)((s8 *)(arg1) + (0x198))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x19C)));
    }
}
#endif
