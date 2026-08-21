#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8018E24 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8018E24(void) {
    u8 flags;

    gGameState.field_890 = 0xFF00;
    gGameState.field_89C = 0xFF00;
    gGameState.field_89E = 0xFF00;
    gGameState.field_8A4 = 0x4B00;
    gGameState.field_8A6 = 0x4B00;
    sub_819A43C();
    sub_819AFA8((void*)0x02000480);
    flags = gGameState.u_88C.field_88C;
    gGameState.u_88C.field_88C = flags | 6;
    sub_8018E88(0, 100);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018E88.s\"");
#else
void sub_8018E88(s32 arg0, s32 arg1) {
    u8 temp_r5_15;

    temp_r5_15 = *(u8 *)0x03000BD8;
    if ((arg0 != ((u32) (temp_r5_15 << 0x1D) >> 0x1E)) || ((arg0 == 1) && ((6 & temp_r5_15) == 2) && (arg1 != ((u32) ((u16) *(u8 *)0x03000BD8 << 0x16) >> 0x19)))) {
        (*(u16 *)((s8 *)((void *)0x040000BC) + (0xA))) = (u16) (0xC5FF & (*(u16 *)((s8 *)((void *)0x040000BC) + (0xA))));
        (*(u16 *)((s8 *)((void *)0x040000BC) + (0xA))) = (u16) (0x7FFF & (*(u16 *)((s8 *)((void *)0x040000BC) + (0xA))));
        (*(u16 *)((s8 *)((void *)0x040000C8) + (0xA))) = (u16) (0xC5FF & (*(u16 *)((s8 *)((void *)0x040000C8) + (0xA))));
        (*(u16 *)((s8 *)((void *)0x040000C8) + (0xA))) = (u16) (0x7FFF & (*(u16 *)((s8 *)((void *)0x040000C8) + (0xA))));
        if ((6 & temp_r5_15) == 2) {
            *(s16 *)0x04000208 = 0;
            *(u16 *)0x02000004 &= 0xFFDF;
            (*(u16 *)((s8 *)((void *)0x04000200) + (0))) = (u16) (0xFFFB & (*(u16 *)((s8 *)((void *)0x04000200) + (0))));
            (*(u16 *)((s8 *)((void *)0x04000200) + (2))) = (u16) ((*(u16 *)((s8 *)((void *)0x04000200) + (2))) | 4);
            *(s16 *)0x04000208 = 1;
        }
        *(u8 *)0x03000BD8 = (-7 & temp_r5_15) | ((arg0 & 3) * 2);
        if (arg0 == 1) {
            sub_8018B78(3, sub_80196BC);
            *(u32 *)0x04000208 = 0;
            *(u32 *)0x02000004 = (u16) (0xFF & *(u32 *)0x02000004);
            *(u32 *)0x02000004 = (u16) ((arg1 << 8) | 0x20 | *(u32 *)0x02000004);
            (*(u16 *)((s8 *)((void *)0x04000200) + (0))) = (u16) ((*(u16 *)((s8 *)((void *)0x04000200) + (0))) | 4);
            (*(u16 *)((s8 *)((void *)0x04000200) + (2))) = (u16) ((*(u16 *)((s8 *)((void *)0x04000200) + (2))) | 4);
            *(u32 *)0x04000208 = (s16) arg0;
            *(u8 *)0x03000BD8 = (s16) ((0xFFFFFC07 & (u16) *(u8 *)0x03000BD8) | ((arg1 & 0x7F) * 8));
        }
    }
    *(u32 *)0x03000BD8 = (u8) (*(u32 *)0x03000BD8 | 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018FC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019308.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80193B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019460.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019508.s\"");
#else
s32 sub_819B9B4(s32, u8);                       /* extern */

void sub_8019508(u8 arg0, u8 arg1) {
    s16 temp_r0_25;
    u8 temp_r2_8;
    u8 temp_r5_10;

    temp_r2_8 = arg0;
    temp_r5_10 = arg1;
    if (temp_r5_10 == 0) {
        *(u16 *)0x03000BDC = temp_r2_8 << 8;
        sub_819B9B4(0, temp_r2_8);
        return;
    }
    temp_r0_25 = temp_r2_8 << 8;
    *(s16 *)0x03000BE0 = temp_r0_25;
    *(u8 *)0x03000BDE = temp_r5_10;
    *(s8 *)0x03000BDF = 0;
    *(u8 *)0x03000BD9 |= 4;
    *(s16 *)0x03000BE2 = (s16) ((s32) (temp_r0_25 - (*(u32 *)0x03000BDC << 8)) / (s32) temp_r5_10);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019588.s\"");
#else
s32 sub_819BABC();                                  /* extern */

u32 sub_8019588(void) {
    s32 temp_r0_7;

    temp_r0_7 = sub_819BABC();
    return (u32) ((0 - temp_r0_7) | temp_r0_7) >> 0x1F;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/stop_all_sfx_801959C.s\"");
#else
s32 sub_819BA00();                              /* extern */

void stop_all_sfx_801959C(void) {
    sub_819BA00();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/stop_sfx_80195A8.s\"");
#else
s32 sub_819B9E8();                              /* extern */

void stop_sfx_80195A8(void) {
    sub_819B9E8();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/play_sfx_80195B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80195F8.s\"");
#else
s32 sub_819BA2C();                                  /* extern */

s32 sub_80195F8(s32 arg0) {
    return 1 & (sub_819BA2C() >> (arg0 + 1));
}
#endif
