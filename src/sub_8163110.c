#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163110 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163110.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163134.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816316C.s\"");
#else
void sub_816316C(u32* param_1) {
    u16 temp;
    
    temp = *(u16*)((u8*)param_1 + 0x20);
    if (temp & 1) {
        *(u16*)0x02000010 = *(u32*)((u8*)param_1 + 0x18);
        *(u16*)0x02000012 = *(u32*)((u8*)param_1 + 0x1C);
    }
    
    temp = *(u16*)((u8*)param_1 + 0x20);
    if (temp & 2) {
        *(u16*)0x02000014 = *(u32*)((u8*)param_1 + 0x18);
        *(u16*)0x02000016 = *(u32*)((u8*)param_1 + 0x1C);
    }
    
    temp = *(u16*)((u8*)param_1 + 0x20);
    if (temp & 4) {
        *(u16*)0x02000018 = *(u32*)((u8*)param_1 + 0x18);
        *(u16*)0x0200001A = *(u32*)((u8*)param_1 + 0x1C);
    }
    
    temp = *(u16*)((u8*)param_1 + 0x20);
    if (temp & 8) {
        *(u16*)0x0200001C = *(u32*)((u8*)param_1 + 0x18);
        *(u16*)0x0200001E = *(u32*)((u8*)param_1 + 0x1C);
    }
}
#endif
