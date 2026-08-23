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
s32 sub_8049000(void *, s32);                   /* extern */

void sub_804FD3C(void *arg0) {
    s32 var_r1_21;

    (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | 4);
    var_r1_21 = 0x1053;
    if ((*(u8 *)((s8 *)(arg0) + (0x54))) == 0) {
        var_r1_21 = 0x103E;
    }
    sub_8049000(arg0, var_r1_21);
    (*(u8 *)((s8 *)(arg0) + (0x35A))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x35A))) | 4);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FD80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FDF4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80402C4(void *);                        /* extern */

void sub_804FE68(void *arg0) {
    if (1 & (*(u8 *)((s8 *)(arg0) + (0x20C)))) {
        if (!(7 & (*(u8 *)((s8 *)(arg0) + (0x2B5))))) {
            (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0xC))) + (*(s16 *)((s8 *)(arg0) + (0x242))));
            (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + (*(s16 *)((s8 *)(arg0) + (0x244))));
        }
        if (!(8 & (*(u8 *)((s8 *)(arg0) + (0x2B5))))) {
            sub_80402C4(arg0);
        }
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FEC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FFCC.s\"");
#else
s32 sub_80400B0(void *, s32, s32, s32);         /* extern */

void sub_804FFCC(void *arg0) {
    u8 temp_r1_15;
    u8 temp_r2_46;
    u8 temp_r2_52;

    temp_r1_15 = (-4 & (*(u8 *)((s8 *)(arg0) + (0x33E)))) | 1;
    (*(u8 *)((s8 *)(arg0) + (0x33E))) = temp_r1_15;
    (*(u8 *)((s8 *)(arg0) + (0x33E))) = (u8) ((temp_r1_15 & ~4) | ((((u32) ((*(u8 *)((s8 *)(arg0) + (0x20D))) << 0x1A) >> 0x1F) & 1) * 4));
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) (-0x21 & (*(u8 *)((s8 *)(arg0) + (0x20D))));
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x33C))));
    (*(u8 *)((s8 *)(arg0) + (0x33F))) = (u8) (*(u8 *)((s8 *)(arg0) + (2)));
    temp_r2_46 = (*(u8 *)((s8 *)(arg0) + (0x33C)));
    if (!(8 & temp_r2_46)) {
        temp_r2_52 = temp_r2_46 | 8;
        (*(u8 *)((s8 *)(arg0) + (0x33C))) = temp_r2_52;
        (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) ((temp_r2_52 & ~0x70) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x214))) << 0x1D) >> 0x19));
    }
    (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | 5);
    sub_80400B0(arg0, 0x40, 0x20, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050078.s\"");
#else
void sub_8050078(void *arg0) {
    s32 temp_r0_160;
    s32 var_r0_121;
    s32 var_r1_53;
    s8 *var_r1_176;
    s8 temp_r6_86;
    s8 var_r0_177;
    u32 temp_r2_22;
    u32 var_r1_120;
    u8 *temp_r3_132;
    u8 temp_r0_65;
    u8 temp_r1_83;
    u8 temp_r2_114;
    u8 var_r0_52;

    if (((*(s32 *)((s8 *)(arg0) + (0x20C))) & 0x02000001) != 0x02000001) {
        return;
    }
    temp_r2_22 = (u32) ((*(u8 *)((s8 *)(arg0) + (0x33E))) << 0x1E) >> 0x1E;
    switch (temp_r2_22) {                           /* switch 1; irregular */
    case 1:                                         /* switch 1 */
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0) {
            (*(u8 *)((s8 *)(arg0) + (2))) = 0x80U;
            (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
            (*(u8 *)((s8 *)(arg0) + (0x340))) = 3U;
            var_r0_52 = -4 & (*(u8 *)((s8 *)(arg0) + (0x33E)));
            var_r1_53 = 2;
block_13:
            (*(u8 *)((s8 *)(arg0) + (0x33E))) = (u8) (var_r0_52 | var_r1_53);
            return;
        }
        (*(u8 *)((s8 *)(arg0) + (2))) = (u8) ((*(u8 *)((s8 *)(arg0) + (2))) + 0x10);
        return;
    case 2:                                         /* switch 1 */
        temp_r0_65 = (*(u8 *)((s8 *)(arg0) + (0x340))) - 1;
        (*(u8 *)((s8 *)(arg0) + (0x340))) = temp_r0_65;
        if ((temp_r0_65 << 0x18) == 0) {
            (*(u8 *)((s8 *)(arg0) + (0x340))) = 0x3CU;
            var_r0_52 = (*(u8 *)((s8 *)(arg0) + (0x33E)));
            var_r1_53 = 3;
            goto block_13;
        }
        return;
    case 3:                                         /* switch 1 */
        temp_r1_83 = (*(u8 *)((s8 *)(arg0) + (0x340))) - 1;
        (*(u8 *)((s8 *)(arg0) + (0x340))) = temp_r1_83;
        temp_r6_86 = (s8) temp_r1_83;
        if (temp_r6_86 == 0) {
            (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) ((-0x21 & (*(u8 *)((s8 *)(arg0) + (0x20D)))) | (((u32) ((*(u8 *)((s8 *)(arg0) + (0x33E))) << 0x1D) >> 0x1F) << 5));
            (*(u8 *)((s8 *)(arg0) + (2))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x33F)));
            (*(s8 *)((s8 *)(arg0) + (0x23A))) = temp_r6_86;
            temp_r2_114 = (*(u8 *)((s8 *)(arg0) + (0x33C))) | 1;
            (*(u8 *)((s8 *)(arg0) + (0x33C))) = temp_r2_114;
            if (0x80 & temp_r2_114) {
                var_r1_120 = temp_r2_114 << 0x19;
                var_r0_121 = 0x33D;
            } else {
                var_r1_120 = temp_r2_114 << 0x19;
                var_r0_121 = 0x214;
            }
            temp_r3_132 = arg0 + var_r0_121;
            *temp_r3_132 = (-8 & *temp_r3_132) | (var_r1_120 >> 0x1D);
            (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x33C))));
            (*(u8 *)((s8 *)(arg0) + (0x33E))) = (u8) (-4 & (*(u8 *)((s8 *)(arg0) + (0x33E))));
            return;
        }
        temp_r0_160 = temp_r1_83 & temp_r2_22;
        switch (temp_r0_160) {                      /* switch 2; irregular */
        case 2:                                     /* switch 2 */
        case 0:                                     /* switch 2 */
            var_r1_176 = arg0 + 0x23A;
            var_r0_177 = 0;
block_29:
            *var_r1_176 = var_r0_177;
            break;
        case 1:                                     /* switch 2 */
            var_r1_176 = arg0 + 0x23A;
            var_r0_177 = 0xFF;
            goto block_29;
        case 3:                                     /* switch 2 */
            var_r1_176 = arg0 + 0x23A;
            var_r0_177 = 1;
            goto block_29;
        }
        break;
    }
}
#endif
