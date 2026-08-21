#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8052EFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8052EFC.s\"");
#else
#error "TODO: write sub_8052EFC to match asm/nonmatching/sub_8052EFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805306C.s\"");
#else
#error "TODO: write sub_805306C to match asm/nonmatching/sub_805306C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/bclr_init.s\"");
#else
#error "TODO: write bclr_init to match asm/nonmatching/bclr_init.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80536E8.s\"");
#else
#error "TODO: write sub_80536E8 to match asm/nonmatching/sub_80536E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/bclr_update_8053778.s\"");
#else
#error "TODO: write bclr_update_8053778 to match asm/nonmatching/bclr_update_8053778.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8053CB4.s\"");
#else
#error "TODO: write sub_8053CB4 to match asm/nonmatching/sub_8053CB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8053FC4.s\"");
#else
#error "TODO: write sub_8053FC4 to match asm/nonmatching/sub_8053FC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80540B0.s\"");
#else
#error "TODO: write sub_80540B0 to match asm/nonmatching/sub_80540B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8054164.s\"");
#else
#error "TODO: write sub_8054164 to match asm/nonmatching/sub_8054164.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80541B0.s\"");
#else
#error "TODO: write sub_80541B0 to match asm/nonmatching/sub_80541B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805420C.s\"");
#else
#error "TODO: write sub_805420C to match asm/nonmatching/sub_805420C.s, then delete this #error"
#endif
