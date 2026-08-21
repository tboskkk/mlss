#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139E88 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139E88.s\"");
#else
#error "TODO: write sub_8139E88 to match asm/nonmatching/sub_8139E88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139F08.s\"");
#else
#error "TODO: write sub_8139F08 to match asm/nonmatching/sub_8139F08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139FB0.s\"");
#else
#error "TODO: write sub_8139FB0 to match asm/nonmatching/sub_8139FB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A068.s\"");
#else
#error "TODO: write sub_813A068 to match asm/nonmatching/sub_813A068.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A284.s\"");
#else
#error "TODO: write sub_813A284 to match asm/nonmatching/sub_813A284.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A44C.s\"");
#else
#error "TODO: write sub_813A44C to match asm/nonmatching/sub_813A44C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A5C8.s\"");
#else
#error "TODO: write sub_813A5C8 to match asm/nonmatching/sub_813A5C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A818.s\"");
#else
#error "TODO: write sub_813A818 to match asm/nonmatching/sub_813A818.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813AA5C.s\"");
#else
#error "TODO: write sub_813AA5C to match asm/nonmatching/sub_813AA5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813AC5C.s\"");
#else
#error "TODO: write sub_813AC5C to match asm/nonmatching/sub_813AC5C.s, then delete this #error"
#endif
