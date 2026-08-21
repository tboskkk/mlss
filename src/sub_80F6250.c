#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F6250 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F6250.s\"");
#else
#error "TODO: write sub_80F6250 to match asm/nonmatching/sub_80F6250.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F62EC.s\"");
#else
#error "TODO: write sub_80F62EC to match asm/nonmatching/sub_80F62EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F63BC.s\"");
#else
#error "TODO: write sub_80F63BC to match asm/nonmatching/sub_80F63BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F64AC.s\"");
#else
#error "TODO: write sub_80F64AC to match asm/nonmatching/sub_80F64AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F67EC.s\"");
#else
#error "TODO: write sub_80F67EC to match asm/nonmatching/sub_80F67EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F68C4.s\"");
#else
#error "TODO: write sub_80F68C4 to match asm/nonmatching/sub_80F68C4.s, then delete this #error"
#endif
