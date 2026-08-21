#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159974 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159974.s\"");
#else
u16 sub_8159974(u16 param_1) {
    u16 *ptr = &param_1;
    *ptr |= 0x01;
    return param_1;
}
#endif

void sub_8159984(void *arg0, s16 arg1) {
    (*(s16 *)((s8 *)(arg0) + (0x518))) = 1;
    (*(s16 *)((s8 *)(arg0) + (0x514))) = arg1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815999C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
