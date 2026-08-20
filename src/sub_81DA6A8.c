#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DA6A8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6A8.s\"");
#else
u32 sub_81DA6A8(u32 r0) {
    swi(15);
    return r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6AC.s\"");
#else
u32 sub_81DA6AC(u32 param_1) {
    swi(1);
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6B0.s\"");
#else
u32 sub_81DA6B0(void) {
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6B8.s\"");
#else
bool32 sub_81DA6B8(void) {
    return TRUE;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6C0.s\"");
#else
u32 sub_81DA6C0(void) {
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6E4.s\"");
#else
void sub_81DA6E4(s32 r0)
{
    u32* r1 = (u32*)0x03001BD0;
    if (r0 == 4)
    {
        *r1 = 0x0821DBAC;
    }
    else if (r0 == 0x40)
    {
        *r1 = 0x0821DBB8;
    }
    else
    {
        *r1 = 0x0821DBAC;
        r0 = 1;
    }
    r0;
}
#endif
