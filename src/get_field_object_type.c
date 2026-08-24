#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_field_object_type needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/get_field_object_type.s", s32 get_field_object_type(u16 arg0, u8 arg1));