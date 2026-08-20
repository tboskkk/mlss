#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DA690 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA690.s\"");
#else
u32 sub_81DA690(void) {
    return 0xA;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/BgAffineSet.s\"");
#else
u32 BgAffineSet(void) {
    return 0xE;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/CpuFastSet.s\"");
#else
u32 CpuFastSet(u32 a0) {
    return a0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/CpuSet.s\"");
#else
u32 CpuSet(u32 a0) {
    __asm__ volatile (
        "swi #11\n\t"
        "bx lr"
        :
        : "r" (a0)
        : "memory"
    );
    return a0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DA6A0.s\"");
#else
u32 sub_81DA6A0(u32 r0) {
    return r0;
}
#endif
