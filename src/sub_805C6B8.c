#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805C6B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C6B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 process_remove(void *, s32);                /* extern */
s32 sub_8029888(s32, s32);                      /* extern */

void sub_805C73C(void *arg0, s32 arg1) {
    void *temp_r0_19;
    void *temp_r0_25;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC2B8;
    *(s16 *)0x040000BA = 0;
    sub_8029888(0, 0);
    (*(s8 *)((s8 *)(arg0) + (0x1C))) = 0;
    temp_r0_19 = *(void **)0x03000E04;
    if (temp_r0_19 != NULL) {
        free_heap_8018D9C(temp_r0_19);
    }
    temp_r0_25 = *(void **)0x03000E00;
    if (temp_r0_25 != NULL) {
        free_heap_8018D9C(temp_r0_25);
    }
    process_remove(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C78C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C7B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805C824.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
