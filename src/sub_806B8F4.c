#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806B8F4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B8F4.s\"");
#else
#error "TODO: write sub_806B8F4 to match asm/nonmatching/sub_806B8F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BAB8.s\"");
#else
#error "TODO: write sub_806BAB8 to match asm/nonmatching/sub_806BAB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BB48.s\"");
#else
void *sub_807BF34(s32, s32, s32, s32, s32, u32, s32); /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806BFD4;
extern s32 sub_8087540;

void sub_806BB48(void *arg0) {
    s32 var_r0_54;
    s32 var_r2_42;
    s32 var_r3_48;
    u16 temp_r0_18;
    u8 temp_r2_93;
    void *temp_r0_70;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r0_18 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_18;
        if ((s32) (temp_r0_18 << 0x10) <= 0) {
            if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
                sub_8082E1C(arg0, 7, 0, 0);
            } else {
                sub_8082E1C(arg0, 0xF, 0, 0);
            }
            var_r2_42 = (*(s32 *)((s8 *)(arg0) + (0x38)));
            if (var_r2_42 < 0) {
                var_r2_42 += 0xFF;
            }
            var_r3_48 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
            if (var_r3_48 < 0) {
                var_r3_48 += 0xFF;
            }
            var_r0_54 = (*(s32 *)((s8 *)(arg0) + (0x40)));
            if (var_r0_54 < 0) {
                var_r0_54 += 0xFF;
            }
            temp_r0_70 = sub_807BF34((*(s32 *)((s8 *)(arg0) + (0x28))), 0x40D0, var_r2_42 >> 8, var_r3_48 >> 8, var_r0_54 >> 8, (u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x11))) << 0x19) >> 0x1F, 1);
            (*(void **)((s8 *)(arg0) + (0x30))) = temp_r0_70;
            (*(u8 *)((s8 *)(temp_r0_70) + (0x79))) = (u8) ((*(u8 *)((s8 *)(temp_r0_70) + (0x79))) | 1);
            temp_r2_93 = (-0x41 & (*(u8 *)((s8 *)(temp_r0_70) + (0x77)))) | ((1 & ((u32) ((*(u8 *)((s8 *)(arg0) + (0x77))) << 0x19) >> 0x1F)) << 6);
            (*(u8 *)((s8 *)(temp_r0_70) + (0x77))) = temp_r2_93;
            (*(u8 *)((s8 *)(temp_r0_70) + (0x77))) = (u8) ((temp_r2_93 & ~0x20) | ((1 & ((u32) ((*(u8 *)((s8 *)(arg0) + (0x77))) << 0x1A) >> 0x1F)) << 5));
            (*(s32 **)((s8 *)(temp_r0_70) + (0x68))) = &sub_8087540;
            (*(s32 *)((s8 *)(temp_r0_70) + (0x6C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x6C)));
            (*(s32 *)((s8 *)(temp_r0_70) + (0x2C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x2C)));
            (*(s8 *)((s8 *)(temp_r0_70) + (0x75))) = (s8) ((*(u8 *)((s8 *)(arg0) + (0x75))) + 1);
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806BFD4;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BC40.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8086858(void *, s32);                       /* extern */
extern s32 sub_806BEA8;
extern s32 sub_806BF70;

void sub_806BC40(void *arg0) {
    s32 var_r1_58;
    u16 temp_r0_17;
    u8 temp_r2_24;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        temp_r0_17 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_17;
        if ((s32) (temp_r0_17 << 0x10) <= 0) {
            temp_r2_24 = (*(u8 *)((s8 *)(arg0) + (0x77)));
            (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (((-0x41 & temp_r2_24) | (0x40 & temp_r2_24)) & ~0x20);
            (*(s32 *)((s8 *)(arg0) + (0x84))) = 0;
            play_sfx_80195B4(0x119, -1);
            if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
                sub_8082E1C(arg0, 9, 0, 0);
                sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 9, 0, 0);
                var_r1_58 = 0x1534;
            } else {
                sub_8082E1C(arg0, 0x11, 0, 0);
                sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 0x11, 0, 0);
                var_r1_58 = 0x159E;
            }
            *(s32 *)0x03000E3C = sub_8086858(arg0, var_r1_58);
            (*(s32 **)((s8 *)(arg0) + (0x58))) = &sub_806BEA8;
            (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806BF70;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BD00.s\"");
#else
#error "TODO: write sub_806BD00 to match asm/nonmatching/sub_806BD00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BDA4.s\"");
#else
#error "TODO: write sub_806BDA4 to match asm/nonmatching/sub_806BDA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BE30.s\"");
#else
#error "TODO: write sub_806BE30 to match asm/nonmatching/sub_806BE30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BEA8.s\"");
#else
#error "TODO: write sub_806BEA8 to match asm/nonmatching/sub_806BEA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BF0C.s\"");
#else
#error "TODO: write sub_806BF0C to match asm/nonmatching/sub_806BF0C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BF70.s\"");
#else
#error "TODO: write sub_806BF70 to match asm/nonmatching/sub_806BF70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806BFD4.s\"");
#else
#error "TODO: write sub_806BFD4 to match asm/nonmatching/sub_806BFD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C020.s\"");
#else
#error "TODO: write sub_806C020 to match asm/nonmatching/sub_806C020.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C03C.s\"");
#else
#error "TODO: write sub_806C03C to match asm/nonmatching/sub_806C03C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C0E0.s\"");
#else
#error "TODO: write sub_806C0E0 to match asm/nonmatching/sub_806C0E0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C190.s\"");
#else
#error "TODO: write sub_806C190 to match asm/nonmatching/sub_806C190.s, then delete this #error"
#endif
