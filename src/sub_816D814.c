#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816D814 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_816D814(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x50))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D81C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D850.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D868.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_816D898(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x3C;
    (*(s32 *)((s8 *)(arg0) + (0x1C))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D8A2.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D8BC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D96C.s\"");
#else
s32 process_remove();                           /* extern */

void sub_816D96C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDD220;
    process_remove();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D980.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D9A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816DA90.s\"");
#else
void sub_816DA90(void *arg0) {
    u16 temp_r2_16;
    u16 temp_r2_19;
    u16 temp_r2_22;
    u16 temp_r2_41;
    u16 temp_r3_37;
    u16 temp_r4_33;
    u16 temp_r5_29;
    u16 temp_r6_25;
    void *temp_r0_28;
    void *temp_r0_32;
    void *temp_r0_36;
    void *temp_r0_40;
    void *temp_r0_43;
    void *temp_r0_51;
    void *temp_r0_53;
    void *temp_r1_27;
    void *temp_r1_31;

    (*(s8 *)((s8 *)(arg0) + (0x74))) = 0;
    temp_r2_16 = (*(u16 *)((s8 *)((void *)0x0600700C) + (0)));
    (*(u16 *)((s8 *)((void *)0x0600702E) + (0))) = temp_r2_16;
    temp_r2_19 = (*(u16 *)((s8 *)((void *)0x0600700C) + (2)));
    (*(u16 *)((s8 *)((void *)0x0600702E) + (2))) = temp_r2_19;
    temp_r2_22 = (*(u16 *)((s8 *)((void *)0x0600700C) + (4)));
    (*(u16 *)((s8 *)((void *)0x0600702E) + (4))) = temp_r2_22;
    temp_r6_25 = (*(u16 *)((s8 *)((void *)0x0600700C) + (6)));
    (*(u16 *)((s8 *)((void *)0x0600702E) + (6))) = temp_r6_25;
    temp_r1_27 = (void *)0x0600702E + 0x40;
    temp_r0_28 = (void *)0x0600700C + 0x40;
    temp_r5_29 = (*(u16 *)((s8 *)((void *)0x0600700C) + (0x40)));
    (*(u16 *)((s8 *)((void *)0x0600702E) + (0x40))) = temp_r5_29;
    temp_r1_31 = temp_r1_27 + 2;
    temp_r0_32 = temp_r0_28 + 2;
    temp_r4_33 = (*(u16 *)((s8 *)(temp_r0_28) + (2)));
    (*(u16 *)((s8 *)(temp_r1_27) + (2))) = temp_r4_33;
    temp_r0_36 = temp_r0_32 + 2;
    temp_r3_37 = (*(u16 *)((s8 *)(temp_r0_32) + (2)));
    (*(u16 *)((s8 *)(temp_r1_31) + (2))) = temp_r3_37;
    temp_r0_40 = temp_r0_36 + 2;
    temp_r2_41 = (*(u16 *)((s8 *)(temp_r0_36) + (2)));
    (*(u16 *)((s8 *)((temp_r1_31 + 2)) + (2))) = temp_r2_41;
    temp_r0_43 = temp_r0_40 + 0x60;
    (*(u16 *)((s8 *)(temp_r0_40) + (0x60))) = temp_r2_16;
    (*(u16 *)((s8 *)(temp_r0_43) + (2))) = temp_r2_19;
    (*(u16 *)((s8 *)(temp_r0_43) + (4))) = temp_r2_22;
    (*(u16 *)((s8 *)(temp_r0_43) + (6))) = temp_r6_25;
    temp_r0_51 = temp_r0_43 + 0x40;
    (*(u16 *)((s8 *)(temp_r0_43) + (0x40))) = temp_r5_29;
    temp_r0_53 = temp_r0_51 + 2;
    (*(u16 *)((s8 *)(temp_r0_51) + (2))) = temp_r4_33;
    (*(u16 *)((s8 *)(temp_r0_53) + (2))) = temp_r3_37;
    (*(u16 *)((s8 *)((temp_r0_53 + 2)) + (2))) = temp_r2_41;
}
#endif
