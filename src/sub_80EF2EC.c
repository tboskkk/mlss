#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EF2EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF2EC.s\"");
#else
s32 sub_80EF2EC(s32 arg1, void *arg3) {
    void *temp_r3_19;
    void *temp_r3_26;
    void *temp_r3_28;
    void *temp_r4_25;
    void *temp_r4_9;

    temp_r4_9 = *(void **)0x03000FD0;
    (*(u16 *)((s8 *)(temp_r4_9) + (0x54A))) = (u16) ((1 << (*(s32 *)((s8 *)(arg3) + (0)))) | (*(u16 *)((s8 *)(temp_r4_9) + (0x54A))));
    temp_r3_19 = arg3 + 4;
    temp_r4_25 = temp_r4_9 + ((0x2C * (*(s32 *)((s8 *)(arg3) + (0)))) + 0x320);
    temp_r3_26 = temp_r3_19 + 4;
    (*(s8 *)((s8 *)(temp_r4_25) + (9))) = (s8) (*(s32 *)((s8 *)(arg3) + (4)));
    temp_r3_28 = temp_r3_26 + 4;
    (*(s8 *)((s8 *)(temp_r4_25) + (0xA))) = (s8) (*(s32 *)((s8 *)(temp_r3_19) + (4)));
    (*(u8 *)((s8 *)(temp_r4_25) + (0xB))) = (u8) ((-2 & (*(u8 *)((s8 *)(temp_r4_25) + (0xB)))) | ((*(s32 *)((s8 *)(temp_r3_26) + (4))) & 1));
    (*(s8 *)((s8 *)(temp_r4_25) + (8))) = (s8) (*(s32 *)((s8 *)(temp_r3_28) + (4)));
    (*(s32 *)((s8 *)(temp_r4_25) + (4))) = (s32) (*(s32 *)((s8 *)((temp_r3_28 + 4)) + (4)));
    if (arg1 != 0) {
        (*(s32 *)((s8 *)(temp_r4_25) + (0))) = arg1;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/bevs_update.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/evts_process_init_80EF3FC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/evts_update.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF618.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF70C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF79C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF874.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EFA14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EFB18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EFC08.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EFE7C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
