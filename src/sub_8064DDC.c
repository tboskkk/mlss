#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064DDC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064DDC.s\"");
#else
#error "TODO: write sub_8064DDC to match asm/nonmatching/sub_8064DDC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064E08.s\"");
#else
#error "TODO: write sub_8064E08 to match asm/nonmatching/sub_8064E08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064E30.s\"");
#else
#error "TODO: write sub_8064E30 to match asm/nonmatching/sub_8064E30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064EDC.s\"");
#else
#error "TODO: write sub_8064EDC to match asm/nonmatching/sub_8064EDC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064FEC.s\"");
#else
#error "TODO: write sub_8064FEC to match asm/nonmatching/sub_8064FEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80650D8.s\"");
#else
#error "TODO: write sub_80650D8 to match asm/nonmatching/sub_80650D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806515C.s\"");
#else
#error "TODO: write sub_806515C to match asm/nonmatching/sub_806515C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80651B0.s\"");
#else
#error "TODO: write sub_80651B0 to match asm/nonmatching/sub_80651B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80651CC.s\"");
#else
#error "TODO: write sub_80651CC to match asm/nonmatching/sub_80651CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065214.s\"");
#else
#error "TODO: write sub_8065214 to match asm/nonmatching/sub_8065214.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065230.s\"");
#else
#error "TODO: write sub_8065230 to match asm/nonmatching/sub_8065230.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80652B0.s\"");
#else
#error "TODO: write sub_80652B0 to match asm/nonmatching/sub_80652B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80652D4.s\"");
#else
#error "TODO: write sub_80652D4 to match asm/nonmatching/sub_80652D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065310.s\"");
#else
#error "TODO: write sub_8065310 to match asm/nonmatching/sub_8065310.s, then delete this #error"
#endif
