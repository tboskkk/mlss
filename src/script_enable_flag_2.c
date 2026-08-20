#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_enable_flag_2 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_enable_flag_2.s\"");
#else
u16 script_enable_flag_2(u16* flag_addr) {
    *flag_addr += 0xA0;
    u16 temp = *flag_addr;
    *flag_addr = 0x02 | temp;
    return *flag_addr;
}
#endif
