#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814B848 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B848.s\"");
#else
s32 sub_8149EF4();                              /* extern */

void sub_814B848(void *arg1, s32 (**arg2)()) {
    (*(u8 *)((s8 *)(arg1) + (0x20E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x20E))) | 4);
    *arg2 = sub_8149EF4;
    sub_8149EF4();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B86C.s\"");
#else
#error "TODO: write sub_814B86C to match asm/nonmatching/sub_814B86C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B92C.s\"");
#else
#error "TODO: write sub_814B92C to match asm/nonmatching/sub_814B92C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B988.s\"");
#else
#error "TODO: write sub_814B988 to match asm/nonmatching/sub_814B988.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BA10.s\"");
#else
#error "TODO: write sub_814BA10 to match asm/nonmatching/sub_814BA10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BA70.s\"");
#else
#error "TODO: write sub_814BA70 to match asm/nonmatching/sub_814BA70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BAC8.s\"");
#else
#error "TODO: write sub_814BAC8 to match asm/nonmatching/sub_814BAC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BB24.s\"");
#else
#error "TODO: write sub_814BB24 to match asm/nonmatching/sub_814BB24.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BB80.s\"");
#else
#error "TODO: write sub_814BB80 to match asm/nonmatching/sub_814BB80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BC1C.s\"");
#else
#error "TODO: write sub_814BC1C to match asm/nonmatching/sub_814BC1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BC68.s\"");
#else
#error "TODO: write sub_814BC68 to match asm/nonmatching/sub_814BC68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BCC0.s\"");
#else
#error "TODO: write sub_814BCC0 to match asm/nonmatching/sub_814BCC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BD08.s\"");
#else
#error "TODO: write sub_814BD08 to match asm/nonmatching/sub_814BD08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BD90.s\"");
#else
#error "TODO: write sub_814BD90 to match asm/nonmatching/sub_814BD90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BE1C.s\"");
#else
#error "TODO: write sub_814BE1C to match asm/nonmatching/sub_814BE1C.s, then delete this #error"
#endif
