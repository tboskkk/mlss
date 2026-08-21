#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8127ECC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127ECC.s\"");
#else
#error "TODO: write sub_8127ECC to match asm/nonmatching/sub_8127ECC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127EF8.s\"");
#else
#error "TODO: write sub_8127EF8 to match asm/nonmatching/sub_8127EF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127FC4.s\"");
#else
#error "TODO: write sub_8127FC4 to match asm/nonmatching/sub_8127FC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812804C.s\"");
#else
#error "TODO: write sub_812804C to match asm/nonmatching/sub_812804C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8128D74.s\"");
#else
#error "TODO: write sub_8128D74 to match asm/nonmatching/sub_8128D74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812936C.s\"");
#else
#error "TODO: write sub_812936C to match asm/nonmatching/sub_812936C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8129B4C.s\"");
#else
#error "TODO: write sub_8129B4C to match asm/nonmatching/sub_8129B4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8129C98.s\"");
#else
#error "TODO: write sub_8129C98 to match asm/nonmatching/sub_8129C98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_812A42C.s\"");
#else
#error "TODO: write sub_812A42C to match asm/nonmatching/sub_812A42C.s, then delete this #error"
#endif
