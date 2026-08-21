#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// panm_update needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/panm_update.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116488.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81165CC.s\"");
#else
void sub_81165CC(void *arg0, s32 arg1) {
    (*(u16 *)((s8 *)(arg0) + (0x34))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x44)));
    (*(u16 *)((s8 *)(arg0) + (0x44))) = 0U;
    if (arg1 != 0) {
        if (4 & (*(u8 *)((s8 *)(arg0) + (0x32)))) {
            (*(s8 *)((s8 *)(arg0) + (0x48))) = 0xFF;
            (*(u8 *)((s8 *)(arg0) + (0x32))) = 0U;
            return;
        }
        (*(s8 *)((s8 *)(arg0) + (0x48))) = 1;
        (*(u8 *)((s8 *)(arg0) + (0x32))) = 4U;
    }
}
#endif
