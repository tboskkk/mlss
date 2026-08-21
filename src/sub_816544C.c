#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816544C needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_816544C(u32* param_1, u32 param_2, u32 param_3) {
    param_1[0x24 / 4] = param_2;
    param_1[0x28 / 4] = param_3;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165454.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165484.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165510.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81655B0.s\"");
#else
s32 sub_8161C28(void *, s32);                       /* extern */
s32 sub_81639E0(s32, s32);                      /* extern */
s32 sub_8163ADC(s32, s32, s32, s32, s32, s32);  /* extern */
s32 sub_8163CD4(s32);                           /* extern */

void *sub_81655B0(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0x08CDD158;
    (*(s32 *)((s8 *)(arg0) + (4))) = sub_8161C28(alloc_Zero(0x6CU, 0U, (s8 *)0x08212B98, 0U), 3);
    sub_8163CD4(arg1);
    (*(s32 *)((s8 *)(arg0) + (0))) = sub_8161C28(alloc_Zero(0x6CU, 0U, (s8 *)0x08212BA0, 0U), 4);
    sub_8163CD4(arg1);
    (*(s32 *)((s8 *)(arg0) + (8))) = sub_8161C28(alloc_Zero(0x6CU, 0U, (s8 *)0x08212BA8, 0U), 5);
    sub_8163CD4(arg1);
    (*(s32 *)((s8 *)(arg0) + (0xC))) = sub_8161C28(alloc_Zero(0x6CU, 0U, (s8 *)0x08212BB0, 0U), 6);
    sub_8163CD4(arg1);
    sub_8163ADC((*(s32 *)((s8 *)(arg0) + (4))), 4, 0x5002, 0, 1, 3);
    sub_8163ADC((*(s32 *)((s8 *)(arg0) + (0))), 4, 0x5002, 0, 2, 3);
    sub_8163ADC((*(s32 *)((s8 *)(arg0) + (8))), 4, 0x5002, 0, 0xA, 1);
    sub_8163ADC((*(s32 *)((s8 *)(arg0) + (0xC))), 4, 0x5002, 0, 0xA, 1);
    sub_81639E0((*(s32 *)((s8 *)(arg0) + (4))), 0x082154B2);
    sub_81639E0((*(s32 *)((s8 *)(arg0) + (0))), 0x082154A8);
    sub_81639E0((*(s32 *)((s8 *)(arg0) + (8))), 0x082154BC);
    sub_81639E0((*(s32 *)((s8 *)(arg0) + (0xC))), 0x082154CA);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81656D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8166164.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816624C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8166344.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8166594.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8166DA8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167510.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167B44.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167D00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167D50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167D8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
