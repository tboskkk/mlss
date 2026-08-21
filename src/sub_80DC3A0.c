#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DC3A0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC3A0.s\"");
#else
u32 sub_80DC3A0(u32 param_1) {
    u32 *ptr = (u32*)((u32)param_1 + 0x80);
    if (*ptr == 0) {
        *(u32*)((u32)param_1 + 0x4C) = 0x0808750D;
    }
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC3B8.s\"");
#else
#error "TODO: write sub_80DC3B8 to match asm/nonmatching/sub_80DC3B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC3D0.s\"");
#else
#error "TODO: write sub_80DC3D0 to match asm/nonmatching/sub_80DC3D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC4A4.s\"");
#else
#error "TODO: write sub_80DC4A4 to match asm/nonmatching/sub_80DC4A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC4C0.s\"");
#else
#error "TODO: write sub_80DC4C0 to match asm/nonmatching/sub_80DC4C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC4D8.s\"");
#else
#error "TODO: write sub_80DC4D8 to match asm/nonmatching/sub_80DC4D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC4F4.s\"");
#else
#error "TODO: write sub_80DC4F4 to match asm/nonmatching/sub_80DC4F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC554.s\"");
#else
#error "TODO: write sub_80DC554 to match asm/nonmatching/sub_80DC554.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC5CC.s\"");
#else
#error "TODO: write sub_80DC5CC to match asm/nonmatching/sub_80DC5CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC5FC.s\"");
#else
#error "TODO: write sub_80DC5FC to match asm/nonmatching/sub_80DC5FC.s, then delete this #error"
#endif
