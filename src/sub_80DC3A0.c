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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC638.s\"");
#else
#error "TODO: write sub_80DC638 to match asm/nonmatching/sub_80DC638.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC668.s\"");
#else
#error "TODO: write sub_80DC668 to match asm/nonmatching/sub_80DC668.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC71C.s\"");
#else
#error "TODO: write sub_80DC71C to match asm/nonmatching/sub_80DC71C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC7C4.s\"");
#else
#error "TODO: write sub_80DC7C4 to match asm/nonmatching/sub_80DC7C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC854.s\"");
#else
#error "TODO: write sub_80DC854 to match asm/nonmatching/sub_80DC854.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC9C8.s\"");
#else
#error "TODO: write sub_80DC9C8 to match asm/nonmatching/sub_80DC9C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCB3C.s\"");
#else
#error "TODO: write sub_80DCB3C to match asm/nonmatching/sub_80DCB3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCC00.s\"");
#else
#error "TODO: write sub_80DCC00 to match asm/nonmatching/sub_80DCC00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCDA0.s\"");
#else
#error "TODO: write sub_80DCDA0 to match asm/nonmatching/sub_80DCDA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCE44.s\"");
#else
#error "TODO: write sub_80DCE44 to match asm/nonmatching/sub_80DCE44.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCF7C.s\"");
#else
#error "TODO: write sub_80DCF7C to match asm/nonmatching/sub_80DCF7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD0CC.s\"");
#else
#error "TODO: write sub_80DD0CC to match asm/nonmatching/sub_80DD0CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD294.s\"");
#else
#error "TODO: write sub_80DD294 to match asm/nonmatching/sub_80DD294.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD40C.s\"");
#else
#error "TODO: write sub_80DD40C to match asm/nonmatching/sub_80DD40C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD430.s\"");
#else
#error "TODO: write sub_80DD430 to match asm/nonmatching/sub_80DD430.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD478.s\"");
#else
#error "TODO: write sub_80DD478 to match asm/nonmatching/sub_80DD478.s, then delete this #error"
#endif
