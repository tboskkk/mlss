#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801ADC0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801ADC0.s\"");
#else
void sub_801ADC0(void) {
    if ((6 & *(u8 *)0x03000BD4) == 2) {
        if (1 & *(u8 *)0x03000BD7) {
            *(u8 *)0x03000D18 = (-0x31 & *(u8 *)0x03000D18) | 0x20;
        }
        (*(s16 *)((s8 *)((void *)0x03000D28) + (4))) = 0;
        (*(u8 *)((s8 *)((void *)0x03000D28) + (0))) = (u8) ((-4 & (*(u8 *)((s8 *)((void *)0x03000D28) + (0)))) | 2);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AE1C.s\"");
#else
#error "TODO: write sub_801AE1C to match asm/nonmatching/sub_801AE1C.s, then delete this #error"
#endif
