#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8019610 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019610.s\"");
#else
u16 sub_8019610(u16 param_1) {
    u16 *puVar1;
    
    puVar1 = (u16 *)0x300034C;
    puVar1 = puVar1 + (param_1 << 1);
    return *puVar1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019628.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019650.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019694.s\"");
#else
s32 sub_819A600();                              /* extern */
s32 sub_819B95C();                              /* extern */

void sub_8019694(void) {
    if (1 & *(u8 *)0x03000BD8) {
        sub_819B95C();
        sub_819A600();
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80196BC.s\"");
#else
s32 sub_819A5D2();                              /* extern */

void sub_80196BC(void) {
    if (1 & *(u8 *)0x03000BD8) {
        sub_819A5D2();
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80196E0.s\"");
#else
void sub_80196E0(void) {
    void *temp_r1_15;

    *(u16 *)0x04000102 &= 0xFF7F;
    (*(s16 *)((s8 *)((void *)0x04000082) + (0))) = 0x88;
    temp_r1_15 = (void *)0x04000082 + 0x42;
    (*(s32 *)((s8 *)((void *)0x04000082) + (0x42))) = (s32) (((*(s32 *)((s8 *)((void *)0x04000082) + (0x42))) & 0x41800000) | 0x84400004);
    (*(s32 *)((s8 *)((void *)0x04000082) + (0x42))) = (s32) ((*(s32 *)((s8 *)((void *)0x04000082) + (0x42))) & 0x7FFFFFFF);
    (*(s32 *)((s8 *)(temp_r1_15) + (0xC))) = (s32) (((*(s32 *)((s8 *)(temp_r1_15) + (0xC))) & 0x41800000) | 0x84400004);
    (*(s32 *)((s8 *)(temp_r1_15) + (0xC))) = (s32) ((*(s32 *)((s8 *)(temp_r1_15) + (0xC))) & 0x7FFFFFFF);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019744.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
