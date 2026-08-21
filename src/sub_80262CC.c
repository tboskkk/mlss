#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80262CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80262CC.s\"");
#else
#error "TODO: write sub_80262CC to match asm/nonmatching/sub_80262CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802641C.s\"");
#else
#error "TODO: write sub_802641C to match asm/nonmatching/sub_802641C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80264F4.s\"");
#else
#error "TODO: write sub_80264F4 to match asm/nonmatching/sub_80264F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80265EC.s\"");
#else
#error "TODO: write sub_80265EC to match asm/nonmatching/sub_80265EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/make_field_objects_80267C0.s\"");
#else
#error "TODO: write make_field_objects_80267C0 to match asm/nonmatching/make_field_objects_80267C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8026C78.s\"");
#else
#error "TODO: write sub_8026C78 to match asm/nonmatching/sub_8026C78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8026E94.s\"");
#else
#error "TODO: write sub_8026E94 to match asm/nonmatching/sub_8026E94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027030.s\"");
#else
#error "TODO: write sub_8027030 to match asm/nonmatching/sub_8027030.s, then delete this #error"
#endif
