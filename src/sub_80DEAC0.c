#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DEAC0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEAC0.s\"");
#else
void sub_80DEAC0(void *arg0) {
    s32 temp_r2_8;
    s32 var_r0_14;

    temp_r2_8 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (temp_r2_8 > 0x200) {
        var_r0_14 = temp_r2_8 + 0xFFFFFE00;
    } else {
        var_r0_14 = 0;
    }
    (*(s32 *)((s8 *)(arg0) + (0x18))) = var_r0_14;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEAE0.s\"");
#else
#error "TODO: write sub_80DEAE0 to match asm/nonmatching/sub_80DEAE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEB1C.s\"");
#else
#error "TODO: write sub_80DEB1C to match asm/nonmatching/sub_80DEB1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEB58.s\"");
#else
#error "TODO: write sub_80DEB58 to match asm/nonmatching/sub_80DEB58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEB78.s\"");
#else
#error "TODO: write sub_80DEB78 to match asm/nonmatching/sub_80DEB78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEC44.s\"");
#else
#error "TODO: write sub_80DEC44 to match asm/nonmatching/sub_80DEC44.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEC60.s\"");
#else
#error "TODO: write sub_80DEC60 to match asm/nonmatching/sub_80DEC60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEC6C.s\"");
#else
#error "TODO: write sub_80DEC6C to match asm/nonmatching/sub_80DEC6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DECC8.s\"");
#else
#error "TODO: write sub_80DECC8 to match asm/nonmatching/sub_80DECC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DED30.s\"");
#else
#error "TODO: write sub_80DED30 to match asm/nonmatching/sub_80DED30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DED4C.s\"");
#else
#error "TODO: write sub_80DED4C to match asm/nonmatching/sub_80DED4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DED84.s\"");
#else
#error "TODO: write sub_80DED84 to match asm/nonmatching/sub_80DED84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEDB0.s\"");
#else
#error "TODO: write sub_80DEDB0 to match asm/nonmatching/sub_80DEDB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEDEC.s\"");
#else
#error "TODO: write sub_80DEDEC to match asm/nonmatching/sub_80DEDEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEE34.s\"");
#else
#error "TODO: write sub_80DEE34 to match asm/nonmatching/sub_80DEE34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEE80.s\"");
#else
#error "TODO: write sub_80DEE80 to match asm/nonmatching/sub_80DEE80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEEA8.s\"");
#else
#error "TODO: write sub_80DEEA8 to match asm/nonmatching/sub_80DEEA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF024.s\"");
#else
#error "TODO: write sub_80DF024 to match asm/nonmatching/sub_80DF024.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF2B0.s\"");
#else
#error "TODO: write sub_80DF2B0 to match asm/nonmatching/sub_80DF2B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF5EC.s\"");
#else
#error "TODO: write sub_80DF5EC to match asm/nonmatching/sub_80DF5EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF694.s\"");
#else
#error "TODO: write sub_80DF694 to match asm/nonmatching/sub_80DF694.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF808.s\"");
#else
#error "TODO: write sub_80DF808 to match asm/nonmatching/sub_80DF808.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF8F0.s\"");
#else
#error "TODO: write sub_80DF8F0 to match asm/nonmatching/sub_80DF8F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF988.s\"");
#else
#error "TODO: write sub_80DF988 to match asm/nonmatching/sub_80DF988.s, then delete this #error"
#endif
