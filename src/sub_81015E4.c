#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81015E4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81015E4.s\"");
#else
#error "TODO: write sub_81015E4 to match asm/nonmatching/sub_81015E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810192C.s\"");
#else
#error "TODO: write sub_810192C to match asm/nonmatching/sub_810192C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81019A8.s\"");
#else
#error "TODO: write sub_81019A8 to match asm/nonmatching/sub_81019A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8101A6C.s\"");
#else
#error "TODO: write sub_8101A6C to match asm/nonmatching/sub_8101A6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8101EE4.s\"");
#else
#error "TODO: write sub_8101EE4 to match asm/nonmatching/sub_8101EE4.s, then delete this #error"
#endif
