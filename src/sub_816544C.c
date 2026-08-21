#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816544C needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_816544C(u32* param_1, u32 param_2, u32 param_3) {
    param_1[0x24 / 4] = param_2;
    param_1[0x28 / 4] = param_3;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165454.s\"");
#else
#error "TODO: write sub_8165454 to match asm/nonmatching/sub_8165454.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165484.s\"");
#else
#error "TODO: write sub_8165484 to match asm/nonmatching/sub_8165484.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8165510.s\"");
#else
#error "TODO: write sub_8165510 to match asm/nonmatching/sub_8165510.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81655B0.s\"");
#else
#error "TODO: write sub_81655B0 to match asm/nonmatching/sub_81655B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81656D8.s\"");
#else
#error "TODO: write sub_81656D8 to match asm/nonmatching/sub_81656D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8166164.s\"");
#else
#error "TODO: write sub_8166164 to match asm/nonmatching/sub_8166164.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816624C.s\"");
#else
#error "TODO: write sub_816624C to match asm/nonmatching/sub_816624C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8166344.s\"");
#else
#error "TODO: write sub_8166344 to match asm/nonmatching/sub_8166344.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8166594.s\"");
#else
#error "TODO: write sub_8166594 to match asm/nonmatching/sub_8166594.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8166DA8.s\"");
#else
#error "TODO: write sub_8166DA8 to match asm/nonmatching/sub_8166DA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167510.s\"");
#else
#error "TODO: write sub_8167510 to match asm/nonmatching/sub_8167510.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167B44.s\"");
#else
#error "TODO: write sub_8167B44 to match asm/nonmatching/sub_8167B44.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167D00.s\"");
#else
#error "TODO: write sub_8167D00 to match asm/nonmatching/sub_8167D00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167D50.s\"");
#else
#error "TODO: write sub_8167D50 to match asm/nonmatching/sub_8167D50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167D8C.s\"");
#else
#error "TODO: write sub_8167D8C to match asm/nonmatching/sub_8167D8C.s, then delete this #error"
#endif
