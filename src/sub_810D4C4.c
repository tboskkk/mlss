#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D4C4 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_810D4C4(void)
{
  int new_var3;
  void *new_var4;
  void **new_var;
  void *new_var2;
  new_var = (void **) 0x03000FD8;
  new_var4 = *((void **) (((s8 *) (new_var2 = *new_var)) + 0x310));
  new_var3 = 0x241;
  *((s16 *) (((s8 *) new_var4) + 0x18)) = new_var3;
}

s32 sub_810971C();                              /* extern */
void sub_810D4E0(void *arg0)
{
  void *new_var;
  void *temp_r2_10;
  int new_var2;
  sub_810971C();
  temp_r2_10 = *((void **) 0x03000FD8);
  new_var2 = (*((s16 *) (((s8 *) (*((void **) (((s8 *) temp_r2_10) + 0x310)))) + 0x10))) * 4;
  if ((*((s32 *) (((s8 *) (*((s32 *) ((new_var = temp_r2_10 + 0x2FC) + new_var2)))) + 0x4C))) == 0)
  {
    *((u8 *) (((s8 *) temp_r2_10) + 7)) = (u8) (0x1F & (*((u8 *) (((s8 *) temp_r2_10) + 7))));
    *((s32 (**)()) (((s8 *) arg0) + 4)) = sub_810971C;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D524.s\"");
#else
void *sub_807FF48(s32, s32);                        /* extern */
s32 sub_81092B8(void *);                        /* extern */
extern s32 sub_810D6C4;

void sub_810D524(s16 arg0, s32 arg1, s16 arg2) {
    void *temp_r0_20;
    void *temp_r2_15;

    temp_r2_15 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x310)));
    if (temp_r2_15 == NULL) {
        temp_r0_20 = sub_807FF48(0, 0);
        (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x310))) = temp_r0_20;
        (*(s16 *)((s8 *)(temp_r0_20) + (0x12))) = arg0;
        (*(s16 *)((s8 *)(temp_r0_20) + (0x14))) = arg2;
        (*(s32 *)((s8 *)(temp_r0_20) + (0xC))) = arg1;
        (*(s16 *)((s8 *)(temp_r0_20) + (0x18))) = 0;
        sub_81092B8(temp_r0_20);
        return;
    }
    (*(s16 *)((s8 *)(temp_r2_15) + (0x12))) = arg0;
    (*(s16 *)((s8 *)(temp_r2_15) + (0x14))) = arg2;
    (*(s32 *)((s8 *)(temp_r2_15) + (0xC))) = arg1;
    (*(s32 **)((s8 *)(temp_r2_15) + (4))) = &sub_810D6C4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D57C.s\"");
#else
s32 sub_8108F14(s32);                           /* extern */

void sub_810D57C(void) {
    if (1 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x3E)))) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            sub_8108F14(0);
        } else {
            sub_8108F14(1);
        }
    }
    if (2 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x3E)))) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -2) {
            sub_8108F14(0);
            return;
        }
        sub_8108F14(1);
    }
}
#endif
