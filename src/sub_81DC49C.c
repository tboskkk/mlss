#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DC49C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC49C.s\"");
#else
u32* sub_81DC49C(void)
{
    u32** ptr = (u32**)0x08CDB630;
    u32* ret = *ptr;
    return ret + 2;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC4B0.s\"");
#else
s32 sub_81DC4C8();                              /* extern */

void sub_81DC4B0(void) {
    *(s32 (**)())0x08CDB630 = sub_81DC4C8;
    sub_81DC4C8();
}
#endif
