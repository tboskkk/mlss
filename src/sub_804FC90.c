#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804FC90 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FC90.s\"");
#else
void sub_804FC90(u32* param_1)
{
  u32* puVar1;
  s8 sVar2;
  u8 uVar3;
  u32* puVar4;
  u32 uVar5;
  
  puVar1 = (u32*)((u8*)param_1 + 0x368);
  puVar4 = *(u32**)puVar1;
  sVar2 = *(s8*)((u8*)puVar4 + 0x13);
  if (sVar2 != -1) {
    uVar3 = *(u8*)((u8*)puVar4 + 0x01);
    *(u8*)puVar4 = uVar3;
    uVar5 = (u32)*(u8*)((u8*)param_1 + 0x36C) & 0xff;
    uVar5 = uVar5 >> 7 ^ 1;
    *(u8*)((u8*)puVar4 + 0x10 + uVar5) = *(u8*)((u8*)puVar4 + 0x13);
    *(u8*)((u8*)puVar4 + 0x13) = 0xff;
  }
  return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FCD4.s\"");
#else
s32 sub_8049000(void *, s32);                   /* extern */

void sub_804FCD4(void *arg0) {
    s32 var_r1_28;

    (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | 3);
    if ((*(u8 *)((s8 *)(arg0) + (0x54))) == 0) {
        var_r1_28 = 0x1001;
        if (8 & (*(u8 *)((s8 *)(arg0) + (0x35B)))) {
            var_r1_28 = 0x1028;
        }
    } else {
        var_r1_28 = 0x1002;
    }
    sub_8049000(arg0, var_r1_28);
    (*(s16 *)((s8 *)(arg0) + (4))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x212))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x212))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FD3C.s\"");
#else
#error "TODO: write sub_804FD3C to match asm/nonmatching/sub_804FD3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FD80.s\"");
#else
#error "TODO: write sub_804FD80 to match asm/nonmatching/sub_804FD80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FDF4.s\"");
#else
#error "TODO: write sub_804FDF4 to match asm/nonmatching/sub_804FDF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FE68.s\"");
#else
#error "TODO: write sub_804FE68 to match asm/nonmatching/sub_804FE68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FEC8.s\"");
#else
#error "TODO: write sub_804FEC8 to match asm/nonmatching/sub_804FEC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FFCC.s\"");
#else
#error "TODO: write sub_804FFCC to match asm/nonmatching/sub_804FFCC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050078.s\"");
#else
#error "TODO: write sub_8050078 to match asm/nonmatching/sub_8050078.s, then delete this #error"
#endif
