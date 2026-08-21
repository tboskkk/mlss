#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// start_battle_8027AC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/start_battle_8027AC4.s\"");
#else
#error "TODO: write start_battle_8027AC4 to match asm/nonmatching/start_battle_8027AC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027D64.s\"");
#else
#error "TODO: write sub_8027D64 to match asm/nonmatching/sub_8027D64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027E90.s\"");
#else
#error "TODO: write sub_8027E90 to match asm/nonmatching/sub_8027E90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802814C.s\"");
#else
#error "TODO: write sub_802814C to match asm/nonmatching/sub_802814C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028248.s\"");
#else
#error "TODO: write sub_8028248 to match asm/nonmatching/sub_8028248.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80284B0.s\"");
#else
#error "TODO: write sub_80284B0 to match asm/nonmatching/sub_80284B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80286AC.s\"");
#else
#error "TODO: write sub_80286AC to match asm/nonmatching/sub_80286AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80289BC.s\"");
#else
#error "TODO: write sub_80289BC to match asm/nonmatching/sub_80289BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028AFC.s\"");
#else
#error "TODO: write sub_8028AFC to match asm/nonmatching/sub_8028AFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028C40.s\"");
#else
#error "TODO: write sub_8028C40 to match asm/nonmatching/sub_8028C40.s, then delete this #error"
#endif
