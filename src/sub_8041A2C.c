#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8041A2C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8041A2C.s\"");
#else
#error "TODO: write sub_8041A2C to match asm/nonmatching/sub_8041A2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8041FFC.s\"");
#else
#error "TODO: write sub_8041FFC to match asm/nonmatching/sub_8041FFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8044630.s\"");
#else
#error "TODO: write sub_8044630 to match asm/nonmatching/sub_8044630.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80457E8.s\"");
#else
#error "TODO: write sub_80457E8 to match asm/nonmatching/sub_80457E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80458B0.s\"");
#else
#error "TODO: write sub_80458B0 to match asm/nonmatching/sub_80458B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80459C0.s\"");
#else
#error "TODO: write sub_80459C0 to match asm/nonmatching/sub_80459C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8045A94.s\"");
#else
#error "TODO: write sub_8045A94 to match asm/nonmatching/sub_8045A94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8045F04.s\"");
#else
#error "TODO: write sub_8045F04 to match asm/nonmatching/sub_8045F04.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80461B4.s\"");
#else
#error "TODO: write sub_80461B4 to match asm/nonmatching/sub_80461B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80465D8.s\"");
#else
#error "TODO: write sub_80465D8 to match asm/nonmatching/sub_80465D8.s, then delete this #error"
#endif
