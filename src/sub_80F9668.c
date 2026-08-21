#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F9668 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F9668.s\"");
#else
#error "TODO: write sub_80F9668 to match asm/nonmatching/sub_80F9668.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/stc_script_execute_next_command.s\"");
#else
#error "TODO: write stc_script_execute_next_command to match asm/nonmatching/stc_script_execute_next_command.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F9D5C.s\"");
#else
#error "TODO: write sub_80F9D5C to match asm/nonmatching/sub_80F9D5C.s, then delete this #error"
#endif
