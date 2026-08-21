#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815EC8C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EC8C.s\"");
#else
s32 sub_815EC8C(s32 arg0) {
    return M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815ECA8.s\"");
#else
#error "TODO: write sub_815ECA8 to match asm/nonmatching/sub_815ECA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815ECE8.s\"");
#else
#error "TODO: write sub_815ECE8 to match asm/nonmatching/sub_815ECE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815ED70.s\"");
#else
#error "TODO: write sub_815ED70 to match asm/nonmatching/sub_815ED70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815ED84.s\"");
#else
#error "TODO: write sub_815ED84 to match asm/nonmatching/sub_815ED84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815EDB0.s\"");
#else
#error "TODO: write sub_815EDB0 to match asm/nonmatching/sub_815EDB0.s, then delete this #error"
#endif
