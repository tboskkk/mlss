#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// start_battle_8027AC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/start_battle_8027AC4.s\"");
#else
#error "TODO: write start_battle_8027AC4 to match asm/nonmatching/start_battle_8027AC4.s, then delete this #error"
#endif
