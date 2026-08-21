#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80796B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80796B8.s\"");
#else
#error "TODO: write sub_80796B8 to match asm/nonmatching/sub_80796B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80796C4.s\"");
#else
#error "TODO: write sub_80796C4 to match asm/nonmatching/sub_80796C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079704.s\"");
#else
#error "TODO: write sub_8079704 to match asm/nonmatching/sub_8079704.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807972C.s\"");
#else
#error "TODO: write sub_807972C to match asm/nonmatching/sub_807972C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079774.s\"");
#else
#error "TODO: write sub_8079774 to match asm/nonmatching/sub_8079774.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80797E0.s\"");
#else
#error "TODO: write sub_80797E0 to match asm/nonmatching/sub_80797E0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079850.s\"");
#else
#error "TODO: write sub_8079850 to match asm/nonmatching/sub_8079850.s, then delete this #error"
#endif
