#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8164FA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164FA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164FF4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816504C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816507C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81650A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81650DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165144.s\"");
#else
s32 free_heap_memory_8018C68();                 /* extern */
s32 sub_8021308(s32);                           /* extern */
s32 sub_80E8D74();                              /* extern */

void sub_8165144(void *arg0, s32 arg1) {
    *(*(s16 **)((s8 *)(arg0) + (0x50))) = 0;
    *(*(s16 **)((s8 *)(arg0) + (0x54))) = 0;
    sub_8021308((*(s32 *)((s8 *)(arg0) + (0))));
    sub_8021308((*(s32 *)((s8 *)(arg0) + (4))));
    if ((*(s32 *)((s8 *)(arg0) + (0x48))) != 0) {
        free_heap_memory_8018C68();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x44))) != 0) {
        free_heap_memory_8018C68();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x1C))) != 0) {
        free_heap_memory_8018C68();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x24))) != 0) {
        free_heap_memory_8018C68();
    }
    sub_80E8D74();
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif
