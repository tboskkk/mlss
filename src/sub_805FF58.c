#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805FF58 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FF58.s\"");
#else
s32 sub_8082B00();                                  /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_805F6BC;

void sub_805FF58(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_805F6BC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FF80.s\"");
#else
#error "TODO: write sub_805FF80 to match asm/nonmatching/sub_805FF80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060090.s\"");
#else
#error "TODO: write sub_8060090 to match asm/nonmatching/sub_8060090.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806018C.s\"");
#else
#error "TODO: write sub_806018C to match asm/nonmatching/sub_806018C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80601D4.s\"");
#else
#error "TODO: write sub_80601D4 to match asm/nonmatching/sub_80601D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806021C.s\"");
#else
#error "TODO: write sub_806021C to match asm/nonmatching/sub_806021C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806025C.s\"");
#else
#error "TODO: write sub_806025C to match asm/nonmatching/sub_806025C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060288.s\"");
#else
#error "TODO: write sub_8060288 to match asm/nonmatching/sub_8060288.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80602B4.s\"");
#else
#error "TODO: write sub_80602B4 to match asm/nonmatching/sub_80602B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060324.s\"");
#else
#error "TODO: write sub_8060324 to match asm/nonmatching/sub_8060324.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060360.s\"");
#else
#error "TODO: write sub_8060360 to match asm/nonmatching/sub_8060360.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80603D8.s\"");
#else
#error "TODO: write sub_80603D8 to match asm/nonmatching/sub_80603D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060404.s\"");
#else
#error "TODO: write sub_8060404 to match asm/nonmatching/sub_8060404.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060438.s\"");
#else
#error "TODO: write sub_8060438 to match asm/nonmatching/sub_8060438.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8060464.s\"");
#else
#error "TODO: write sub_8060464 to match asm/nonmatching/sub_8060464.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806048C.s\"");
#else
#error "TODO: write sub_806048C to match asm/nonmatching/sub_806048C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80604B8.s\"");
#else
#error "TODO: write sub_80604B8 to match asm/nonmatching/sub_80604B8.s, then delete this #error"
#endif
