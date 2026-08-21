#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8155684 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8155684.s\"");
#else
#error "TODO: write sub_8155684 to match asm/nonmatching/sub_8155684.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815731C.s\"");
#else
#error "TODO: write sub_815731C to match asm/nonmatching/sub_815731C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8157410.s\"");
#else
#error "TODO: write sub_8157410 to match asm/nonmatching/sub_8157410.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8157854.s\"");
#else
#error "TODO: write sub_8157854 to match asm/nonmatching/sub_8157854.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8157C48.s\"");
#else
#error "TODO: write sub_8157C48 to match asm/nonmatching/sub_8157C48.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158000.s\"");
#else
#error "TODO: write sub_8158000 to match asm/nonmatching/sub_8158000.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158044.s\"");
#else
#error "TODO: write sub_8158044 to match asm/nonmatching/sub_8158044.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81580A4.s\"");
#else
#error "TODO: write sub_81580A4 to match asm/nonmatching/sub_81580A4.s, then delete this #error"
#endif
