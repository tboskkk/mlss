#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// init_btl_process_80FC25C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_btl_process_80FC25C.s\"");
#else
#error "TODO: write init_btl_process_80FC25C to match asm/nonmatching/init_btl_process_80FC25C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/btl_80FC310.s\"");
#else
#error "TODO: write btl_80FC310 to match asm/nonmatching/btl_80FC310.s, then delete this #error"
#endif
