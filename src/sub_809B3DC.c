#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809B3DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B3DC.s\"");
#else
#error "TODO: write sub_809B3DC to match asm/nonmatching/sub_809B3DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B410.s\"");
#else
#error "TODO: write sub_809B410 to match asm/nonmatching/sub_809B410.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B478.s\"");
#else
#error "TODO: write sub_809B478 to match asm/nonmatching/sub_809B478.s, then delete this #error"
#endif
