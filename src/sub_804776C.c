#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804776C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804776C.s\"");
#else
u8 sub_804776C(u8* a0, u8 a1) {
    u8* var1 = a0;
    u8 var2 = a1;
    u8 var3;
    
    var1 += 0x83 << 2;
    var3 = *var1;
    var3 &= ~2;
    var3 |= var2 & 1;
    *var1 = var3;
    
    return *var1;
}
#endif

void sub_8047784(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20D))) | 0x10);
    (*(u8 *)((s8 *)(arg0) + (0x217))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x217))) | 1);
}
