#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EC8C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EC8C.s\"");
#else
s32 sub_815EC8C(s32 arg0) {
    return M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EC92.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815ECA8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815ECE8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815ED70.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_815ED70(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCB10;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815ED84.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815ED84(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDCB10;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EDB0.s\"");
#else
s32 sub_815EDB0(void *arg0, s32 arg4) {
    u8 temp_r0_10;

    temp_r0_10 = (u8) arg4;
    switch (temp_r0_10) {                           /* irregular */
    case 3:
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x34)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        break;
    case 4:
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x3C)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        (*(s8 *)((s8 *)(arg0) + (0x24))) = 1;
        break;
    }
    return 0;
}
#endif
