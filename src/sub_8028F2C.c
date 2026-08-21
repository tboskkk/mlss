#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8028F2C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028F2C.s\"");
#else
u8 sub_8028F2C(u8 param_1) {
    u8 *ptr = (u8*)((uintptr_t)param_1 + 0x12D);
    *ptr |= 0x20;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028F40.s\"");
#else
u32 sub_8028F40(u32 param_1) {
    u32* puVar1;
    
    puVar1 = (u32*)((u32)param_1 + 0x12D);
    *puVar1 = (*puVar1 & 0xFFFFFFEF) | 0x10;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/make_btl_8028F54.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028FBC.s\"");
#else
s32 sub_8019628(s32);                           /* extern */
s32 sub_80273E4(void *);                        /* extern */
s32 sub_8057B58(s32, s32);                      /* extern */
s32 sub_80E8DC0();                              /* extern */
s32 sub_815085C(s32);                       /* extern */

void sub_8028FBC(void *arg0) {
    s32 temp_r0_17;

    sub_801A6B0();
    sub_8019628(0);
    sub_80273E4(arg0);
    sub_80E8DC0();
    temp_r0_17 = (*(s32 *)((s8 *)(arg0) + (0x304)));
    if (temp_r0_17 != 0) {
        sub_8057B58(temp_r0_17, 3);
        (*(s32 *)((s8 *)(arg0) + (0x304))) = 0;
    }
    sub_8018B78(2, 0);
    (*(s8 *)((s8 *)(arg0) + (0))) = 1;
    if (*(s32 *)0x03000C78 == 0) {
        *(s32 *)0x03000C78 = 0x0800063C;
    }
    sub_815085C(M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */));
    (*(s8 *)((s8 *)(arg0) + (0x12B))) = 0xFF;
}
#endif
