#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059EF0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059EF0.s\"");
#else
u32* sub_8059EF0(u32 param_1) {
    return (u32*)((param_1 << 16) >> 14) + 0x083AF418;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059F00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8059F24(void *arg0) {
    (*(s16 *)((s8 *)((void *)0x02000014) + (0))) = (s16) (0x1FF & (*(u16 *)((s8 *)(arg0) + (0x5A))));
    (*(s16 *)((s8 *)((void *)0x02000014) + (4))) = (s16) (0x1FF & (*(u16 *)((s8 *)(arg0) + (0x5C))));
    *(s16 *)0x0200001C = 0x1FF & (*(u16 *)((s8 *)(arg0) + (0x5E)));
    (*(s16 *)((s8 *)((void *)0x02000016) + (0))) = (s16) (*(u8 *)((s8 *)(arg0) + (0x60)));
    (*(s16 *)((s8 *)((void *)0x02000016) + (4))) = (s16) (*(u8 *)((s8 *)(arg0) + (0x62)));
    (*(s16 *)((s8 *)(((void *)0x02000016 + 4)) + (4))) = (s16) (*(u8 *)((s8 *)(arg0) + (0x64)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059F80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
