#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802973C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802973C.s\"");
#else
#error "TODO: write sub_802973C to match asm/nonmatching/sub_802973C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029788.s\"");
#else
s32 sub_805C6B8(s32);                           /* extern */

void sub_8029788(void *arg0) {
    if (((s32) ((*(u16 *)((s8 *)(arg0) + (0xFC))) << 0x15) >> 0x1C) == 0) {
        sub_805C6B8((*(s32 *)((s8 *)(arg0) + (0x304))));
    }
    (*(u16 *)((s8 *)(arg0) + (0xFC))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xFC))) | 0x780);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80297B8.s\"");
#else
#error "TODO: write sub_80297B8 to match asm/nonmatching/sub_80297B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80297D8.s\"");
#else
#error "TODO: write sub_80297D8 to match asm/nonmatching/sub_80297D8.s, then delete this #error"
#endif
