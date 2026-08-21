#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAD7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAD7C.s\"");
#else
u32 sub_80EAD7C(u32 param_1) {
    u32 *ptr = (u32 *)0x03000D44;
    u8 *addr1;
    u8 *addr2;

    addr1 = (u8 *)(ptr[0] + 0x26);
    *addr1 = (u8)param_1;
    addr2 = (u8 *)(ptr[0] + 0x27);
    *addr2 = (u8)(param_1 >> 8);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAD98.s\"");
#else
#error "TODO: write sub_80EAD98 to match asm/nonmatching/sub_80EAD98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EADC4.s\"");
#else
#error "TODO: write sub_80EADC4 to match asm/nonmatching/sub_80EADC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EADEC.s\"");
#else
#error "TODO: write sub_80EADEC to match asm/nonmatching/sub_80EADEC.s, then delete this #error"
#endif
