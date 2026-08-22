#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806B56C needs.

asm_unified(".include \"asm/macros.inc\"");


int sub_8082E1C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B56C.s\"");
#else
u32 sub_806B56C(u32* param_1) {
    u32* puVar1;
    u8 uVar2;
    
    puVar1 = param_1;
    uVar2 = *(u8*)(param_1[2] + 0x12);
    if (uVar2 & 0x8) {
        puVar1[0x13] = 0;
    }
    return (u32)puVar1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B584.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806AA18;

void sub_806B584(void *arg0) {
    sub_8082E1C(arg0, 5, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806AA18;
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
}
#endif

extern s32 sub_806B5F8;

void sub_806B5A8(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
            sub_8082E1C(arg0, (*(s32 *)((s8 *)(arg0) + (0xA4))) + 1, 0, 0);
        } else {
            sub_8082E1C(arg0, (*(s32 *)((s8 *)(arg0) + (0xA4))) + 4, 0, 0);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806B5F8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B5F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B644.s\"");
#else
void *sub_807BF34(s32, s32, s32, s32, s32, u32, s32); /* extern */
s32 sub_807F4FC(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_806C020;
extern s32 sub_806C03C;
extern s32 sub_806C1A8;
extern s32 sub_806C1C8;
extern s32 sub_8087540;

void sub_806B644(void *arg0) {
    s32 var_r0_54;
    s32 var_r0_61;
    s32 var_r1_26;
    s32 var_r2_32;
    s32 var_r2_48;
    s32 var_r3_38;
    u8 temp_r1_104;
    void *temp_r0_78;
    void *temp_r1_130;
    void *temp_r2_132;

    if (!(8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12))))) {
        return;
    }
    sub_8082E1C(arg0, 4, 0, 0);
    play_sfx_80195B4(0x86, -1);
    var_r1_26 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r1_26 < 0) {
        var_r1_26 += 0xFF;
    }
    var_r2_32 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r2_32 < 0) {
        var_r2_32 += 0xFF;
    }
    var_r3_38 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r3_38 < 0) {
        var_r3_38 += 0xFF;
    }
    sub_80DF024(0x1C07, var_r1_26 >> 8, var_r2_32 >> 8, var_r3_38 >> 8, arg0);
    var_r2_48 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r2_48 < 0) {
        var_r2_48 += 0xFF;
    }
    var_r0_54 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r0_54 < 0) {
        var_r0_54 += 0xFF;
    }
    var_r0_61 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r0_61 < 0) {
        var_r0_61 += 0xFF;
    }
    temp_r0_78 = sub_807BF34((*(s32 *)((s8 *)(arg0) + (0x28))), 0x40D3, var_r2_48 >> 8, (var_r0_54 >> 8) + 2, (var_r0_61 >> 8) + 0x20, (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x11))) << 0x19) >> 0x1F, 1);
    (*(void **)((s8 *)(arg0) + (0x30))) = temp_r0_78;
    (*(u8 *)((s8 *)(temp_r0_78) + (0x78))) = (u8) ((0x1F & (*(u8 *)((s8 *)(temp_r0_78) + (0x78)))) | 0xC0);
    temp_r1_104 = (-0x41 & (*(u8 *)((s8 *)(temp_r0_78) + (0x77)))) | ((1 & ((u32) ((*(u8 *)((s8 *)(arg0) + (0x77))) << 0x19) >> 0x1F)) << 6);
    (*(u8 *)((s8 *)(temp_r0_78) + (0x77))) = temp_r1_104;
    (*(u8 *)((s8 *)(temp_r0_78) + (0x77))) = (u8) ((temp_r1_104 & ~0x20) | ((1 & ((u32) ((*(u8 *)((s8 *)(arg0) + (0x77))) << 0x1A) >> 0x1F)) << 5));
    (*(s32 **)((s8 *)(temp_r0_78) + (0x68))) = &sub_8087540;
    (*(s32 *)((s8 *)(temp_r0_78) + (0x6C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x6C)));
    (*(void **)((s8 *)(temp_r0_78) + (0x2C))) = (void *) (*(void **)((s8 *)(arg0) + (0x2C)));
    sub_807F4FC(temp_r0_78);
    (*(s32 **)((s8 *)(temp_r0_78) + (0x58))) = &sub_806C03C;
    (*(s32 **)((s8 *)(temp_r0_78) + (0x60))) = &sub_806C020;
    temp_r1_130 = temp_r0_78 + 0x84;
    temp_r2_132 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
    (*(s32 *)((s8 *)(temp_r0_78) + (0x84))) = (s32) (*(s32 *)((s8 *)(temp_r2_132) + (0xD8)));
    (*(s32 *)((s8 *)(temp_r1_130) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r2_132) + (0xDC)));
    (*(s32 *)((s8 *)((temp_r1_130 + 4)) + (4))) = (s32) ((*(s32 *)((s8 *)(temp_r2_132) + (0xE0))) + 0x8000);
    (*(u8 *)((s8 *)(temp_r0_78) + (0x79))) = (u8) ((*(u8 *)((s8 *)(temp_r0_78) + (0x79))) | 0x20);
    (*(s16 *)((s8 *)(temp_r0_78) + (0x7C))) = 0x400;
    (*(s16 *)((s8 *)(temp_r0_78) + (0x7A))) = 0;
    sub_8085B38(temp_r0_78);
    (*(u8 *)((s8 *)(temp_r0_78) + (0x74))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x74)));
    (*(s32 **)((s8 *)(temp_r0_78) + (0x4C))) = &sub_806C1A8;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806C1C8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B7BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B824.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
