#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81015E4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81015E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810192C.s\"");
#else
s32 sub_8100BC4();                                  /* extern */
s32 sub_81054D4(s32);                           /* extern */

void sub_810192C(s32 arg0) {
    s32 temp_r0_8;
    void *temp_r2_27;
    void *temp_r2_44;

    temp_r0_8 = sub_8100BC4();
    if (!(2 & temp_r0_8)) {
        (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0x348))) = 0xFF;
    }
    if (temp_r0_8 != 0) {
        temp_r2_27 = (*(void **)((s8 *)(*(u32 *)0x03000FD8) + (0x80)));
        if ((temp_r2_27 != NULL) && ((*(s32 *)((s8 *)(temp_r2_27) + (0x54))) == 0)) {
            (*(u16 *)((s8 *)(temp_r2_27) + (0x11E))) = (u16) (0xF3FF & (*(u16 *)((s8 *)(temp_r2_27) + (0x11E))));
        }
        temp_r2_44 = (*(void **)((s8 *)(*(u32 *)0x03000FD8) + (0x84)));
        if ((temp_r2_44 != NULL) && ((*(s32 *)((s8 *)(temp_r2_44) + (0x54))) == 0)) {
            (*(u16 *)((s8 *)(temp_r2_44) + (0x11E))) = (u16) (0xF3FF & (*(u16 *)((s8 *)(temp_r2_44) + (0x11E))));
        }
    } else {
        sub_81054D4(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81019A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8101A6C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8101EE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8102108.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81021E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81023C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
