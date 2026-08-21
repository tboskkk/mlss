#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139970 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139970.s\"");
#else
s32 sub_81395AC();                              /* extern */

void sub_8139970(void *arg1) {
    (*(s32 (**)())((s8 *)(arg1) + (0x198))) = sub_81395AC;
    sub_81395AC();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139988.s\"");
#else
#error "TODO: write sub_8139988 to match asm/nonmatching/sub_8139988.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81399C4.s\"");
#else
#error "TODO: write sub_81399C4 to match asm/nonmatching/sub_81399C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139A04.s\"");
#else
#error "TODO: write sub_8139A04 to match asm/nonmatching/sub_8139A04.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139A38.s\"");
#else
#error "TODO: write sub_8139A38 to match asm/nonmatching/sub_8139A38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139A6C.s\"");
#else
#error "TODO: write sub_8139A6C to match asm/nonmatching/sub_8139A6C.s, then delete this #error"
#endif
