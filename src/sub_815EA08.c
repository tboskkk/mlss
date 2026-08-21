#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EA08 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA08.s\"");
#else
void sub_815EA08(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCF50;
    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA18.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EA64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EACC.s\"");
#else
s32 sub_8021308();                              /* extern */

void sub_815EACC(void *arg0, s32 arg1) {
    if ((*(s32 *)((s8 *)(arg0) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)((arg0 + 4)) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0xC))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x10))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x14))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x18))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x1C))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x20))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x24))) != 0) {
        sub_8021308();
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EB70.s\"");
#else
s32 sub_8021308();                              /* extern */

void sub_815EB70(void *arg0, s32 arg1) {
    if ((*(s32 *)((s8 *)(arg0) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)((arg0 + 4)) + (4))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0xC))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x10))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x14))) != 0) {
        sub_8021308();
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif
