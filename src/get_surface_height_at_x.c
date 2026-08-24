#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_surface_height_at_x needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/get_surface_height_at_x.s", s16 get_surface_height_at_x(void *arg0, s32 arg1));