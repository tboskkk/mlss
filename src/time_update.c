#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// time_update needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/time_update.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801BBE4.s\"");
#else
void sub_801BBE4(void *arg0, s8 arg1, s8 arg2, u8 arg3) {
    u8 temp_r3_9;
    void *temp_r0_10;

    temp_r3_9 = arg3;
    temp_r0_10 = arg0 + 0x22;
    (*(s8 *)((s8 *)(arg0) + (0x22))) = arg1;
    (*(s8 *)((s8 *)(temp_r0_10) + (1))) = arg2;
    (*(u8 *)((s8 *)((temp_r0_10 + 1)) + (1))) = temp_r3_9;
    (*(s8 *)((s8 *)(arg0) + (0x25))) = (*(s32 *)0x03001038 + 0x10C)(0x64 * (s8) temp_r3_9, 0x3C);
    (*(s8 *)((s8 *)(arg0) + (0x29))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x28))) = (u8) (-3 & (*(u8 *)((s8 *)(arg0) + (0x28))));
}
#endif
