#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// stage_room_solidity_grid needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/stage_room_solidity_grid.s", void stage_room_solidity_grid(void *arg0));