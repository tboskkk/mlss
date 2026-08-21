#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DBC3C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBC3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBC60.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBC84.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8087540(void *);                        /* extern */

void sub_80DBC84(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x11A);
        sub_8087540(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBCA4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DB8D8;

void sub_80DBCA4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 3, 0, 0);
        (*(s16 *)((s8 *)((arg0 + 0xA0)) + (0xC))) = (s16) (*(s32 *)((s8 *)(arg0) + (0xA0)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DB8D8;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DBD18.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8087540(void *);                        /* extern */

void sub_80DBD18(void *arg0) {
    u8 temp_r2_16;
    void *temp_r3_15;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x11A);
        temp_r3_15 = (*(void **)((s8 *)(arg0) + (8)));
        temp_r2_16 = (*(u8 *)((s8 *)(temp_r3_15) + (0x11)));
        (*(u8 *)((s8 *)(temp_r3_15) + (0x11))) = (u8) ((-0x41 & temp_r2_16) | ((((u32) (temp_r2_16 << 0x19) >> 0x1F) ^ 1) << 6));
        sub_8087540(arg0);
    }
}
#endif
