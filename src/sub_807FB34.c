#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FB34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FB34.s\"");
#else
s32 sub_8021308(void *);                        /* extern */
s32 sub_807BDDC();                              /* extern */
s32 sub_8084294(void *);                        /* extern */

void sub_807FB34(void *arg0) {
    if (arg0 != NULL) {
        sub_807BDDC();
        (*(u8 *)((s8 *)(arg0) + (0x13))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x13))) & ~8);
        sub_8084294(arg0);
        sub_8021308(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FB64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FB78.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FBD8.s\"");
#else
s32 sub_8082C20(s32, s32, s32, s32, s32);       /* extern */

void sub_807FBD8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    sub_8082C20((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C))), arg0, arg1, arg2, arg3);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FC08.s\"");
#else
s32 sub_8082C58(s32, s32, s32, s32, s32);       /* extern */

void sub_807FC08(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    sub_8082C58((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C))), arg0, arg1, arg2, arg3);
}
#endif
