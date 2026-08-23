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

s32 sub_81DA6E4(u16 arg0) {
    s32 var_r2_9;
    u16 temp_r0_8;

    temp_r0_8 = arg0;
    var_r2_9 = 0;
    if (temp_r0_8 == 4) {
        *(s32 *)0x03001BD0 = 0x0821DBAC;
    } else if (temp_r0_8 == 0x40) {
        *(u32 *)0x03001BD0 = 0x0821DBB8;
    } else {
        *(u32 *)0x03001BD0 = 0x0821DBAC;
        var_r2_9 = 1;
    }
    return var_r2_9;
}
