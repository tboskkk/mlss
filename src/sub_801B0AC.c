#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B0AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B0AC.s\"");
#else
void sub_801B0AC(s16 arg0) {
    *(s16 *)0x03000D3C = arg0;
}
#endif
