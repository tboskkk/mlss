#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8107BA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107BA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107D58.s\"");
#else
s32 sub_8107F84(s32, u16);                          /* extern */
s32 sub_8108084(s32, u16);                          /* extern */
s32 sub_8108180(s32, u16);                          /* extern */
s32 sub_810835C(s32, u16);                          /* extern */
s32 sub_81083EC(s32, u16);                          /* extern */
s32 sub_81084B4(s32, u16);                          /* extern */
s32 sub_810857C(s32, u16, s32);                     /* extern */
s32 sub_81086B4(s32, u16, s32);                     /* extern */
s32 sub_81087F0(s32, u16, s32);                     /* extern */
s32 sub_8108D2C(s32, u16);                          /* extern */
s32 sub_8108D8C(s32, u16);                          /* extern */
s32 sub_8108DE4(s32, u16);                          /* extern */
s32 sub_8108E3C(s32, u16);                          /* extern */

s32 sub_8107D58(s32 arg0, s32 arg1, u16 arg2, s32 arg3) {
    if (1 & arg1) {
        return sub_8107F84(arg0, arg2);
    }
    if (2 & arg1) {
        return sub_8108084(arg0, arg2);
    }
    if (0xC & arg1) {
        return sub_810857C(arg0, arg2, arg3);
    }
    if (0xC0 & arg1) {
        return sub_81087F0(arg0, arg2, arg3);
    }
    if (0x30 & arg1) {
        return sub_81086B4(arg0, arg2, arg3);
    }
    if (0x100 & arg1) {
        return sub_8108180(arg0, arg2);
    }
    if (0x200 & arg1) {
        return sub_810835C(arg0, arg2);
    }
    if (0x400 & arg1) {
        return sub_81083EC(arg0, arg2);
    }
    if (0x800 & arg1) {
        return sub_81084B4(arg0, arg2);
    }
    if (0x1000 & arg1) {
        return sub_8108E3C(arg0, arg2);
    }
    if (0x2000 & arg1) {
        return sub_8108DE4(arg0, arg2);
    }
    if (0x4000 & arg1) {
        return sub_8108D8C(arg0, arg2);
    }
    if (!(0x8000 & arg1)) {
        return 0;
    }
    return sub_8108D2C(arg0, arg2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107E6C.s\"");
#else
void sub_8107E6C(void *arg0, void *arg1) {
    u8 temp_r2_60;
    u8 temp_r5_32;
    u8 temp_r6_92;

    (*(u16 *)((s8 *)(arg1) + (0x10A))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x10A)));
    (*(u16 *)((s8 *)(arg1) + (0x10C))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x10C)));
    (*(u16 *)((s8 *)(arg1) + (0x11E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x11E)));
    temp_r5_32 = (*(u8 *)((s8 *)(arg0) + (0x120)));
    (*(u8 *)((s8 *)(arg1) + (0x120))) = (u8) ((((-8 & (*(u8 *)((s8 *)(arg1) + (0x120)))) | ((u32) (temp_r5_32 << 0x1D) >> 0x1D)) & ~0x38) | (0x38 & temp_r5_32));
    (*(u8 *)((s8 *)(arg1) + (0x120))) = (s16) ((0xFFFFFE3F & (u16) (*(u8 *)((s8 *)(arg1) + (0x120)))) | (0x1C0 & (u16) (*(u8 *)((s8 *)(arg0) + (0x120)))));
    temp_r2_60 = (*(u8 *)((s8 *)(arg0) + (0x121)));
    (*(u8 *)((s8 *)(arg1) + (0x121))) = (u8) ((((-0xF & (*(u8 *)((s8 *)(arg1) + (0x121)))) | (0xE & temp_r2_60)) & ~0x70) | (0x70 & temp_r2_60));
    (*(u8 *)((s8 *)(arg1) + (0x120))) = (s32) (((s32) (*(u8 *)((s8 *)(arg1) + (0x120))) & 0xFFFC7FFF) | ((s32) (*(u8 *)((s8 *)(arg0) + (0x120))) & 0x38000));
    temp_r6_92 = (*(u8 *)((s8 *)(arg0) + (0x122)));
    (*(u8 *)((s8 *)(arg1) + (0x122))) = (u8) ((((-0x1D & (*(u8 *)((s8 *)(arg1) + (0x122)))) | (0x1C & temp_r6_92)) & ~0x20) | (0x20 & temp_r6_92));
    (*(u16 *)((s8 *)(arg1) + (0x126))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x126)));
    (*(u8 *)((s8 *)(arg1) + (0x128))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x128)));
    (*(u8 *)((s8 *)(arg1) + (0x129))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x129)));
    (*(u8 *)((s8 *)(arg1) + (0x12A))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x12A)));
}
#endif
