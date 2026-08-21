#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8019610 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019610.s\"");
#else
u16 sub_8019610(u16 param_1) {
    u16 *puVar1;
    
    puVar1 = (u16 *)0x300034C;
    puVar1 = puVar1 + (param_1 << 1);
    return *puVar1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019628.s\"");
#else
#error "TODO: write sub_8019628 to match asm/nonmatching/sub_8019628.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019650.s\"");
#else
#error "TODO: write sub_8019650 to match asm/nonmatching/sub_8019650.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8019694.s\"");
#else
#error "TODO: write sub_8019694 to match asm/nonmatching/sub_8019694.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80196BC.s\"");
#else
#error "TODO: write sub_80196BC to match asm/nonmatching/sub_80196BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80196E0.s\"");
#else
#error "TODO: write sub_80196E0 to match asm/nonmatching/sub_80196E0.s, then delete this #error"
#endif
