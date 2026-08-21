#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_start_dialogue needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_start_dialogue.s\"");
#else
#error "TODO: write script_cmd_start_dialogue to match asm/nonmatching/script_cmd_start_dialogue.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_show_reaction_bubble.s\"");
#else
#error "TODO: write script_cmd_show_reaction_bubble to match asm/nonmatching/script_cmd_show_reaction_bubble.s, then delete this #error"
#endif
