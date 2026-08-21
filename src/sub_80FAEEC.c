#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FAEEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAEEC.s\"");
#else
u8 sub_80FAEEC(u8* param_1) {
    return param_1[0x24 + 0x9A1];
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAEFC.s\"");
#else
#error "TODO: write sub_80FAEFC to match asm/nonmatching/sub_80FAEFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAF28.s\"");
#else
#error "TODO: write sub_80FAF28 to match asm/nonmatching/sub_80FAF28.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAF8C.s\"");
#else
#error "TODO: write sub_80FAF8C to match asm/nonmatching/sub_80FAF8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAFD8.s\"");
#else
#error "TODO: write sub_80FAFD8 to match asm/nonmatching/sub_80FAFD8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB080.s\"");
#else
#error "TODO: write sub_80FB080 to match asm/nonmatching/sub_80FB080.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_fobj_with_data_80FB128.s\"");
#else
#error "TODO: write init_fobj_with_data_80FB128 to match asm/nonmatching/init_fobj_with_data_80FB128.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB448.s\"");
#else
#error "TODO: write sub_80FB448 to match asm/nonmatching/sub_80FB448.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FB6D4.s\"");
#else
#error "TODO: write sub_80FB6D4 to match asm/nonmatching/sub_80FB6D4.s, then delete this #error"
#endif
