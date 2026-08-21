#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150E2C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150E2C.s\"");
#else
u32 sub_8150E2C(u32* param_1) {
    u32 temp;
    
    temp = param_1[0x2C / sizeof(u32)];
    temp &= 0xFFFFFFFD;
    param_1[0x2C / sizeof(u32)] = temp;
    
    return temp;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150E38.s\"");
#else
u32 sub_8150E38(u32* param_1) {
    u32 temp = param_1[0x2C / sizeof(u32)];
    param_1[0x2C / sizeof(u32)] = temp | 1;
    return temp;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150E44.s\"");
#else
void sub_8150E44(void *arg0, s16 arg1) {
    if (!(0x20 & (*(u16 *)((s8 *)(arg0) + (0x2C))))) {
        (*(s16 *)((s8 *)(arg0) + (0x1C))) = 1;
        (*(s16 *)((s8 *)(arg0) + (0x18))) = arg1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150E60.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
