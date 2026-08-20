#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_field_object_count needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/get_field_object_count.s\"");
#else
u8 get_field_object_count(u16 arg0, u8* arg1) {
    u8** ptr = (u8**)0x083D6C58;
    u8 val = ptr[arg0 >> 2][1];
    *arg1 = val >> 3;
    return *arg1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB790.s\"");
#else
#error "TODO: write sub_80FB790 to match asm/nonmatching/sub_80FB790.s, then delete this #error"
#endif
