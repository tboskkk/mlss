#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80508A8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80508A8.s\"");
#else
s32 init_fobj_803FEB8();                        /* extern */

void *sub_80508A8(void *arg0) {
    init_fobj_803FEB8();
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDC068;
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) (((*(u8 *)((s8 *)(arg0) + (0x33C))) | 1) & ~0x38 & ~2 & ~4);
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (s16) (0xFFFFFC3F & (u16) (*(u8 *)((s8 *)(arg0) + (0x33C))));
    (*(s8 *)((s8 *)(arg0) + (0x23B))) = 0;
    (*(u16 *)((s8 *)(arg0) + (0x33E))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x33E))) | 0x1FE);
    (*(s16 *)((s8 *)(arg0) + (0x340))) = 1;
    (*(s16 *)((s8 *)(arg0) + (0x342))) = 0xFFFF;
    (*(s16 *)((s8 *)(arg0) + (0x344))) = -1;
    (*(s32 *)((s8 *)(arg0) + (0x348))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x34C))) = 0;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050940.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050BC0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050DB0.s\"");
#else
s32 sub_80409F4(void *);                        /* extern */

void sub_8050DB0(void *arg0) {
    u8 temp_r1_34;
    u8 temp_r1_53;
    u8 temp_r1_74;
    u8 temp_r2_43;
    void *temp_r0_19;

    if (!(5 & (*(u8 *)((s8 *)(arg0) + (0x33C))))) {
        temp_r0_19 = (*(void **)((s8 *)(arg0) + (0x34C)));
        if (temp_r0_19 != NULL) {
            temp_r1_34 = (-3 & (*(u8 *)((s8 *)(arg0) + (0x298)))) | (((u32) ((*(u8 *)((s8 *)(temp_r0_19) + (0x11))) << 0x19) >> 0x1F) * 2);
            (*(u8 *)((s8 *)(arg0) + (0x298))) = temp_r1_34;
            temp_r2_43 = (-0xD & temp_r1_34) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x1F))) << 0x1E) >> 0x1C);
            (*(u8 *)((s8 *)(arg0) + (0x298))) = temp_r2_43;
            temp_r1_53 = (-0x31 & temp_r2_43) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x1F))) << 0x1C) >> 0x1E) * 0x10);
            (*(u8 *)((s8 *)(arg0) + (0x298))) = temp_r1_53;
            (*(u8 *)((s8 *)(arg0) + (0x298))) = (u8) ((temp_r1_53 & 0x3F) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x12))) << 0x1D) >> 0x1E) << 6));
            temp_r1_74 = (-2 & (*(u8 *)((s8 *)(arg0) + (0x299)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x12))) << 0x1C) >> 0x1F);
            (*(u8 *)((s8 *)(arg0) + (0x299))) = temp_r1_74;
            (*(u8 *)((s8 *)(arg0) + (0x299))) = (u8) ((temp_r1_74 & ~2) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x12))) << 0x1B) >> 0x1F) * 2));
            (*(u8 *)((s8 *)(arg0) + (0x29B))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x21)));
            (*(u8 *)((s8 *)(arg0) + (0x29C))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x23)));
            (*(u16 *)((s8 *)(arg0) + (0x29E))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x2A)));
            (*(u16 *)((s8 *)(arg0) + (0x2A0))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (0x2C)));
            (*(u16 *)((s8 *)(arg0) + (0x2A2))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (4)));
            (*(u16 *)((s8 *)(arg0) + (0x2A4))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x34C)))) + (6)));
            (*(u8 *)((s8 *)(arg0) + (0x298))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x298))) | 1);
            return;
        }
    }
    sub_80409F4(arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050EAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050FD0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805113C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051208.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
