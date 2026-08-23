#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158308 needs.

asm_unified(".include \"asm/macros.inc\"");

s16 sub_8158308(void *arg0) {
    return (*(s16 *)((s8 *)(arg0) + (0x1C)));
}

s32 sub_8158258(void *);                        /* extern */

void sub_8158310(void *arg0, s16 arg1) {
    s16 temp_r1_9;

    temp_r1_9 = arg1;
    if ((s32) temp_r1_9 < 0) {
        (*(s32 *)((s8 *)(arg0) + (0x1C))) = 0;
    } else {
        (*(s32 *)((s8 *)(arg0) + (0x1C))) = (s32) temp_r1_9;
    }
    sub_8158258(arg0);
}

s32 sub_8021308();                              /* extern */

void sub_8158330(void *arg0, s32 arg1) {
    if ((*(s32 *)((s8 *)(arg0) + (0))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (8))) != 0) {
        sub_8021308();
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158368.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158450.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_8158450(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC5B0;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158464.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_8158464(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC5B0;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    (*(s16 *)((s8 *)(arg0) + (0x36))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x38))) = 0;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158490.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158518.s\"");
#else
s32 sub_815FB14();                              /* extern */

void sub_8158518(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC5F0;
    sub_815FB14();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815852C.s\"");
#else
s32 sub_815F8F4();                              /* extern */
s32 sub_815F97C(void *, s32);                   /* extern */

void *sub_815852C(void *arg0, u16 arg2) {
    sub_815F8F4();
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC5F0;
    (*(u16 *)((s8 *)(arg0) + (0x34))) = arg2;
    sub_815F97C(arg0, 0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158558.s\"");
#else
s32 sub_8158558(void *arg0, s32 arg4) {
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
