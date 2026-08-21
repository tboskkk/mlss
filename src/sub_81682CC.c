#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81682CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81682CC.s\"");
#else
#error "TODO: write sub_81682CC to match asm/nonmatching/sub_81682CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168390.s\"");
#else
#error "TODO: write sub_8168390 to match asm/nonmatching/sub_8168390.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168580.s\"");
#else
#error "TODO: write sub_8168580 to match asm/nonmatching/sub_8168580.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816863C.s\"");
#else
#error "TODO: write sub_816863C to match asm/nonmatching/sub_816863C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816881C.s\"");
#else
#error "TODO: write sub_816881C to match asm/nonmatching/sub_816881C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168910.s\"");
#else
#error "TODO: write sub_8168910 to match asm/nonmatching/sub_8168910.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168CAC.s\"");
#else
#error "TODO: write sub_8168CAC to match asm/nonmatching/sub_8168CAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8168D74.s\"");
#else
#error "TODO: write sub_8168D74 to match asm/nonmatching/sub_8168D74.s, then delete this #error"
#endif
