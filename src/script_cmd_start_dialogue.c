#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_start_dialogue needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/script_cmd_start_dialogue.s", s32 script_cmd_start_dialogue(void *arg0, void *arg2));
ASM_FUNC("asm/nonmatching/script_cmd_show_reaction_bubble.s", s32 script_cmd_show_reaction_bubble(void *arg0, void *arg2));