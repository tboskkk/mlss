#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813C484 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C484.s\"");
#else
void sub_813C484(u32* param_1, u32* param_2)
{
    u32* puVar1;
    
    puVar1 = (u32*)((u8*)param_1 + 0x1A0);
    (*(code*)puVar1)();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C498.s\"");
#else
void sub_813C498(u32* param_1, u32* param_2)
{
    u32* puVar1;
    
    puVar1 = (u32*)((u8*)param_1 + 0x1A0);
    (*(code*)*puVar1)();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C4AC.s\"");
#else
#error "TODO: write sub_813C4AC to match asm/nonmatching/sub_813C4AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C57C.s\"");
#else
#error "TODO: write sub_813C57C to match asm/nonmatching/sub_813C57C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C5FC.s\"");
#else
#error "TODO: write sub_813C5FC to match asm/nonmatching/sub_813C5FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C69C.s\"");
#else
#error "TODO: write sub_813C69C to match asm/nonmatching/sub_813C69C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C6E4.s\"");
#else
#error "TODO: write sub_813C6E4 to match asm/nonmatching/sub_813C6E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C72C.s\"");
#else
#error "TODO: write sub_813C72C to match asm/nonmatching/sub_813C72C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C758.s\"");
#else
#error "TODO: write sub_813C758 to match asm/nonmatching/sub_813C758.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C7D8.s\"");
#else
#error "TODO: write sub_813C7D8 to match asm/nonmatching/sub_813C7D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C810.s\"");
#else
#error "TODO: write sub_813C810 to match asm/nonmatching/sub_813C810.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C88C.s\"");
#else
#error "TODO: write sub_813C88C to match asm/nonmatching/sub_813C88C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C8D4.s\"");
#else
#error "TODO: write sub_813C8D4 to match asm/nonmatching/sub_813C8D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C988.s\"");
#else
#error "TODO: write sub_813C988 to match asm/nonmatching/sub_813C988.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813CAEC.s\"");
#else
#error "TODO: write sub_813CAEC to match asm/nonmatching/sub_813CAEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813CBEC.s\"");
#else
#error "TODO: write sub_813CBEC to match asm/nonmatching/sub_813CBEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813CDB8.s\"");
#else
#error "TODO: write sub_813CDB8 to match asm/nonmatching/sub_813CDB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813CE8C.s\"");
#else
#error "TODO: write sub_813CE8C to match asm/nonmatching/sub_813CE8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813D048.s\"");
#else
#error "TODO: write sub_813D048 to match asm/nonmatching/sub_813D048.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813D0F0.s\"");
#else
#error "TODO: write sub_813D0F0 to match asm/nonmatching/sub_813D0F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813D204.s\"");
#else
#error "TODO: write sub_813D204 to match asm/nonmatching/sub_813D204.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813D284.s\"");
#else
#error "TODO: write sub_813D284 to match asm/nonmatching/sub_813D284.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813D3A0.s\"");
#else
#error "TODO: write sub_813D3A0 to match asm/nonmatching/sub_813D3A0.s, then delete this #error"
#endif
