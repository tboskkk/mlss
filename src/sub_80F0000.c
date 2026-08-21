#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0000 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0000.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0184.s\"");
#else
s32 free_heap_memory_8018C68(s32);              /* extern */
s32 sub_80E5968(s32, s32);                      /* extern */
s32 sub_80E8EFC(s32, s32);                      /* extern */

void sub_80F0184(void) {
    s32 temp_r0_18;
    s32 temp_r0_26;

    free_heap_memory_8018C68((*(s32 *)((s8 *)(*(void **)0x03000FD0) + (0x4AC))));
    (*(s32 *)((s8 *)(*(void **)0x03000FD0) + (0x4AC))) = 0;
    temp_r0_18 = *(s32 *)0x03000FCC;
    if (temp_r0_18 != 0) {
        sub_80E5968(temp_r0_18, 3);
        *(s32 *)0x03000FCC = 0;
    }
    temp_r0_26 = *(s32 *)0x03000FC8;
    if (temp_r0_26 != 0) {
        sub_80E8EFC(temp_r0_26, 3);
        *(s32 *)0x03000FC8 = 0;
    }
}
#endif
