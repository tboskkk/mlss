#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// reset_game_80189C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/reset_game_80189C4.s\"");
#else
#error "TODO: write reset_game_80189C4 to match asm/nonmatching/reset_game_80189C4.s, then delete this #error"
#endif
