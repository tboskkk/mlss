#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816BEC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816BEC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C21C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C74C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C834.s\"");
#else
s32 sub_816B690(void *, s32);                   /* extern */
s32 sub_816BAB4(void *);                        /* extern */
s32 sub_816BD78(void *);                        /* extern */
s32 sub_816BEC4(void *, void **, s32, void *, void *); /* extern */

void sub_816C834(void *arg0) {
    s32 temp_r0_16;
    s32 temp_r0_43;
    s32 temp_r0_73;
    s32 temp_r0_99;
    s32 temp_r2_113;
    s32 temp_r2_87;
    void *temp_r1_123;
    void *temp_r1_141;
    void *temp_r1_71;
    void *temp_r1_97;
    void *temp_r2_55;
    void *temp_r6_15;
    void *var_r4_10;

    var_r4_10 = *(*(void ***)((s8 *)(arg0) + (0x1C)));
    if (var_r4_10 == NULL) {

    } else {
loop_2:
        temp_r6_15 = (*(void **)((s8 *)(var_r4_10) + (8)));
        temp_r0_16 = (*(s32 *)((s8 *)(var_r4_10) + (0)));
        switch (temp_r0_16) {                       /* irregular */
        case 0:
            sub_816BAB4(var_r4_10);
            break;
        case 2:
            sub_816BD78(var_r4_10);
            break;
        case 6:
            temp_r0_43 = sub_816BEC4(var_r4_10, (*(void ***)((s8 *)(arg0) + (0x1C))), (*(s32 *)((s8 *)(arg0) + (0x2C))), (*(void **)((s8 *)(arg0) + (0x30))), (*(void **)((s8 *)(arg0) + (0x34))));
            if (temp_r0_43 == (s8) (*(u8 *)((s8 *)((void *)0x08218EB6) + (2)))) {
                (*(s32 *)((s8 *)(arg0) + (0x64))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x64))) + 0x3C);
                temp_r2_55 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x48)))) + (0x10)));
                (*(u8 *)((s8 *)(temp_r2_55) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_55) + (0x12))) & ~0x10);
            }
            if (temp_r0_43 >= 0) {
                if (temp_r0_43 > 0) {
                    play_sfx_80195B4(0x2E, -1);
                    temp_r1_71 = (*(void **)((s8 *)(arg0) + (0x38)));
                    temp_r0_73 = (*(s32 *)((s8 *)(temp_r1_71) + (0x18))) + temp_r0_43;
                    (*(s32 *)((s8 *)(temp_r1_71) + (0x18))) = temp_r0_73;
                    if (temp_r0_73 < 0) {
                        (*(s32 *)((s8 *)(temp_r1_71) + (0x18))) = 0;
                    }
                    if ((s32) (*(s32 *)((s8 *)(temp_r1_71) + (0x18))) > 0x3E7) {
                        (*(s32 *)((s8 *)(temp_r1_71) + (0x18))) = 0x3E7;
                    }
                    temp_r2_87 = (*(s32 *)((s8 *)(temp_r1_71) + (0x18)));
                    if ((s32) (*(s32 *)((s8 *)(temp_r1_71) + (0x34))) < temp_r2_87) {
                        (*(s32 *)((s8 *)(temp_r1_71) + (0x34))) = temp_r2_87;
                        (*(s32 *)((s8 *)(temp_r1_71) + (0x50))) = 1;
                    }
                }
            } else {
                temp_r1_97 = (*(void **)((s8 *)(arg0) + (0x38)));
                temp_r0_99 = (*(s32 *)((s8 *)(temp_r1_97) + (0x18))) - temp_r0_43;
                (*(s32 *)((s8 *)(temp_r1_97) + (0x18))) = temp_r0_99;
                if (temp_r0_99 < 0) {
                    (*(s32 *)((s8 *)(temp_r1_97) + (0x18))) = 0;
                }
                if ((s32) (*(s32 *)((s8 *)(temp_r1_97) + (0x18))) > 0x3E7) {
                    (*(s32 *)((s8 *)(temp_r1_97) + (0x18))) = 0x3E7;
                }
                temp_r2_113 = (*(s32 *)((s8 *)(temp_r1_97) + (0x18)));
                if ((s32) (*(s32 *)((s8 *)(temp_r1_97) + (0x34))) < temp_r2_113) {
                    (*(s32 *)((s8 *)(temp_r1_97) + (0x34))) = temp_r2_113;
                    (*(s32 *)((s8 *)(temp_r1_97) + (0x50))) = 1;
                }
                if ((*(s32 *)((s8 *)(arg0) + (0x60))) == 0) {
                    temp_r1_123 = (*(void **)((s8 *)(arg0) + (0x30)));
                    if ((*(s32 *)((s8 *)(temp_r1_123) + (0x78))) == 0) {
                        (*(s32 *)((s8 *)(temp_r1_123) + (0x78))) = 3;
                        (*(s32 *)((s8 *)(temp_r1_123) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(temp_r1_123) + (0x8C))) + 0x10);
                        play_sfx_80195B4(0x40, -1);
                    }
                } else {
                    temp_r1_141 = (*(void **)((s8 *)(arg0) + (0x34)));
                    if ((*(s32 *)((s8 *)(temp_r1_141) + (0x78))) == 0) {
                        (*(s32 *)((s8 *)(temp_r1_141) + (0x78))) = 3;
                        (*(s32 *)((s8 *)(temp_r1_141) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(temp_r1_141) + (0x8C))) + 0x10);
                        play_sfx_80195B4(0x40, -1);
                    }
                }
            }
            break;
        }
        var_r4_10 = temp_r6_15;
        if (var_r4_10 != NULL) {
            goto loop_2;
        }
    }
    sub_816B690((*(void **)((s8 *)(arg0) + (0x38))), 0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C970.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816CDA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D040.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D4A8.s\"");
#else
s32 sub_8162F20(s32);                           /* extern */
s32 sub_81631DC(s32);                               /* extern */
s32 sub_8163238(s32, s32, s32, s32);            /* extern */

void sub_816D4A8(void *arg0) {
    s32 var_r2_29;
    u16 temp_r1_11;

    temp_r1_11 = (*(u16 *)((s8 *)(arg0) + (0x68)));
    switch (temp_r1_11) {                           /* irregular */
    case 0:
        var_r2_29 = 0;
block_12:
        sub_8163238((*(s32 *)((s8 *)(arg0) + (0x40))), 0, var_r2_29, 0x14);
block_13:
        (*(u16 *)((s8 *)(arg0) + (0x68))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x68))) + 1);
        break;
    case 1:
        if ((sub_81631DC((*(s32 *)((s8 *)(arg0) + (0x40)))) << 0x18) != 0) {
            goto block_13;
        }
        break;
    case 2:
        if (8 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
            play_sfx_80195B4(0x37, -1);
            var_r2_29 = 0xFFFF6000;
            goto block_12;
        }
        break;
    case 3:
        if ((sub_81631DC((*(s32 *)((s8 *)(arg0) + (0x40)))) << 0x18) != 0) {
            (*(s32 *)((s8 *)(arg0) + (0x54))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x58)));
        }
        break;
    }
    sub_8162F20((*(s32 *)((s8 *)(arg0) + (0x40))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D538.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 process_enable(s32);                        /* extern */
s32 process_remove(void *, s32);                /* extern */
s32 sub_8150A38();                              /* extern */
s32 sub_8163280(s32, s32);                      /* extern */
s32 sub_8163308(void *, s32);                   /* extern */
s32 sub_8165144(s32, s32);                      /* extern */

void sub_816D580(void *arg0, s32 arg1) {
    s32 temp_r0_32;
    s32 temp_r0_38;
    void *temp_r0_11;
    void *temp_r0_16;
    void *temp_r1_24;
    void *temp_r1_47;
    void *temp_r2_21;
    void *temp_r2_44;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDD208;
    temp_r0_11 = (*(void **)((s8 *)(arg0) + (0x3C)));
    if (temp_r0_11 != NULL) {
        free_heap_8018DA8(temp_r0_11);
    }
    temp_r0_16 = (*(void **)((s8 *)(arg0) + (0x38)));
    if (temp_r0_16 != NULL) {
        free_heap_8018DA8(temp_r0_16);
    }
    temp_r2_21 = (*(void **)((s8 *)(arg0) + (0x20)));
    if (temp_r2_21 != NULL) {
        temp_r1_24 = (*(void **)((s8 *)(temp_r2_21) + (0x18)));
        (*(s32 (**)(void *, s32))((s8 *)(temp_r1_24) + (0x14)))(temp_r2_21 + (*(s16 *)((s8 *)(temp_r1_24) + (0x10))), 3);
    }
    temp_r0_32 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (temp_r0_32 != 0) {
        sub_8163280(temp_r0_32, 3);
    }
    temp_r0_38 = (*(s32 *)((s8 *)(arg0) + (0x28)));
    if (temp_r0_38 != 0) {
        sub_8165144(temp_r0_38, 3);
    }
    temp_r2_44 = (*(void **)((s8 *)(arg0) + (0x1C)));
    if (temp_r2_44 != NULL) {
        temp_r1_47 = (*(void **)((s8 *)(temp_r2_44) + (0xC)));
        (*(s32 (**)(void *, s32))((s8 *)(temp_r1_47) + (0xC)))(temp_r2_44 + (*(s16 *)((s8 *)(temp_r1_47) + (8))), 3);
    }
    sub_8150A38();
    process_enable((*(s32 *)((s8 *)(arg0) + (0x14))));
    sub_8163308(arg0 + 0x4C, 2);
    process_remove(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D608.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816D608(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD238;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D61C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D6C0.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816D6C0(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD248;
    sub_8163B60();
}
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */

void sub_816D6D4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x88))) != 0) {
        (*(s32 *)((s8 *)(arg0) + (0x88))) = 0;
        stop_sfx_80195A8(0x97);
    }
}

void sub_816D6F0(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x88))) == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x88))) = 1;
        play_sfx_80195B4(0x97, -1);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D710.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816D710(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD258;
    sub_8163B60();
}
#endif
