#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80801A0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80801A0.s\"");
#else
#error "TODO: write sub_80801A0 to match asm/nonmatching/sub_80801A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80801BC.s\"");
#else
#error "TODO: write sub_80801BC to match asm/nonmatching/sub_80801BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8080220.s\"");
#else
#error "TODO: write sub_8080220 to match asm/nonmatching/sub_8080220.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808027C.s\"");
#else
#error "TODO: write sub_808027C to match asm/nonmatching/sub_808027C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80802DC.s\"");
#else
#error "TODO: write sub_80802DC to match asm/nonmatching/sub_80802DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808055C.s\"");
#else
#error "TODO: write sub_808055C to match asm/nonmatching/sub_808055C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80805E8.s\"");
#else
#error "TODO: write sub_80805E8 to match asm/nonmatching/sub_80805E8.s, then delete this #error"
#endif
