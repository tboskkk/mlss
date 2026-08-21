#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802DA10 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802DA10.s\"");
#else
#error "TODO: write sub_802DA10 to match asm/nonmatching/sub_802DA10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802DC0C.s\"");
#else
#error "TODO: write sub_802DC0C to match asm/nonmatching/sub_802DC0C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802DDB4.s\"");
#else
#error "TODO: write sub_802DDB4 to match asm/nonmatching/sub_802DDB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802DF80.s\"");
#else
#error "TODO: write sub_802DF80 to match asm/nonmatching/sub_802DF80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E2F4.s\"");
#else
#error "TODO: write sub_802E2F4 to match asm/nonmatching/sub_802E2F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E4C8.s\"");
#else
#error "TODO: write sub_802E4C8 to match asm/nonmatching/sub_802E4C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E688.s\"");
#else
#error "TODO: write sub_802E688 to match asm/nonmatching/sub_802E688.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E754.s\"");
#else
#error "TODO: write sub_802E754 to match asm/nonmatching/sub_802E754.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802E854.s\"");
#else
#error "TODO: write sub_802E854 to match asm/nonmatching/sub_802E854.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EA70.s\"");
#else
#error "TODO: write sub_802EA70 to match asm/nonmatching/sub_802EA70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EC64.s\"");
#else
#error "TODO: write sub_802EC64 to match asm/nonmatching/sub_802EC64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EDC4.s\"");
#else
#error "TODO: write sub_802EDC4 to match asm/nonmatching/sub_802EDC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802EF18.s\"");
#else
#error "TODO: write sub_802EF18 to match asm/nonmatching/sub_802EF18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802F498.s\"");
#else
#error "TODO: write sub_802F498 to match asm/nonmatching/sub_802F498.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802F6EC.s\"");
#else
#error "TODO: write sub_802F6EC to match asm/nonmatching/sub_802F6EC.s, then delete this #error"
#endif
