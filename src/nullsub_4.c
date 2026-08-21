#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_4 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_4(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081E74.s\"");
#else
s32 sub_8082AAC(s32);                           /* extern */

void sub_8081E74(void) {
    sub_8082AAC(0x2027);
    sub_8082AAC(0x2046);
    sub_8082AAC(0x2056);
    sub_8082AAC(0x2075);
    sub_8082AAC(0x2089);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081EAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8081F34.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 process_enable(s32);                        /* extern */
s32 sub_80FC9A4(void *);                        /* extern */

void sub_8081F84(void *arg0) {
    process_enable((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x244))));
    (*(s32 (**)(void *))((s8 *)(arg0) + (4))) = sub_80FC9A4;
    sub_80FC9A4(arg0);
}
