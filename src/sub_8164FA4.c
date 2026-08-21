#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8164FA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164FA4.s\"");
#else
#error "TODO: write sub_8164FA4 to match asm/nonmatching/sub_8164FA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8164FF4.s\"");
#else
#error "TODO: write sub_8164FF4 to match asm/nonmatching/sub_8164FF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816504C.s\"");
#else
#error "TODO: write sub_816504C to match asm/nonmatching/sub_816504C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816507C.s\"");
#else
#error "TODO: write sub_816507C to match asm/nonmatching/sub_816507C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81650A8.s\"");
#else
#error "TODO: write sub_81650A8 to match asm/nonmatching/sub_81650A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81650DC.s\"");
#else
#error "TODO: write sub_81650DC to match asm/nonmatching/sub_81650DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165144.s\"");
#else
#error "TODO: write sub_8165144 to match asm/nonmatching/sub_8165144.s, then delete this #error"
#endif
