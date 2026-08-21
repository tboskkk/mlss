#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8077570 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8077570(void *arg0) {
    s32 var_r0_17;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + (*(s32 *)((s8 *)(arg0) + (0x8C))));
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x8C))) - 0x80);
    var_r0_17 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r0_17 < 0) {
        var_r0_17 += 0xFF;
    }
    if ((s32) (var_r0_17 >> 8) <= 0x28) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x2800;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80775A4.s\"");
#else
#error "TODO: write sub_80775A4 to match asm/nonmatching/sub_80775A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077610.s\"");
#else
#error "TODO: write sub_8077610 to match asm/nonmatching/sub_8077610.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077668.s\"");
#else
#error "TODO: write sub_8077668 to match asm/nonmatching/sub_8077668.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80776B4.s\"");
#else
#error "TODO: write sub_80776B4 to match asm/nonmatching/sub_80776B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077704.s\"");
#else
#error "TODO: write sub_8077704 to match asm/nonmatching/sub_8077704.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807777C.s\"");
#else
#error "TODO: write sub_807777C to match asm/nonmatching/sub_807777C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80778D4.s\"");
#else
#error "TODO: write sub_80778D4 to match asm/nonmatching/sub_80778D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077924.s\"");
#else
#error "TODO: write sub_8077924 to match asm/nonmatching/sub_8077924.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8077ECC.s\"");
#else
#error "TODO: write sub_8077ECC to match asm/nonmatching/sub_8077ECC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078000.s\"");
#else
#error "TODO: write sub_8078000 to match asm/nonmatching/sub_8078000.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807815C.s\"");
#else
#error "TODO: write sub_807815C to match asm/nonmatching/sub_807815C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078234.s\"");
#else
#error "TODO: write sub_8078234 to match asm/nonmatching/sub_8078234.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807830C.s\"");
#else
#error "TODO: write sub_807830C to match asm/nonmatching/sub_807830C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078524.s\"");
#else
#error "TODO: write sub_8078524 to match asm/nonmatching/sub_8078524.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078678.s\"");
#else
#error "TODO: write sub_8078678 to match asm/nonmatching/sub_8078678.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078768.s\"");
#else
#error "TODO: write sub_8078768 to match asm/nonmatching/sub_8078768.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078894.s\"");
#else
#error "TODO: write sub_8078894 to match asm/nonmatching/sub_8078894.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80789B4.s\"");
#else
#error "TODO: write sub_80789B4 to match asm/nonmatching/sub_80789B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078A5C.s\"");
#else
#error "TODO: write sub_8078A5C to match asm/nonmatching/sub_8078A5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078B94.s\"");
#else
#error "TODO: write sub_8078B94 to match asm/nonmatching/sub_8078B94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078D2C.s\"");
#else
#error "TODO: write sub_8078D2C to match asm/nonmatching/sub_8078D2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078E2C.s\"");
#else
#error "TODO: write sub_8078E2C to match asm/nonmatching/sub_8078E2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8078F84.s\"");
#else
#error "TODO: write sub_8078F84 to match asm/nonmatching/sub_8078F84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8079018.s\"");
#else
#error "TODO: write sub_8079018 to match asm/nonmatching/sub_8079018.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80790CC.s\"");
#else
#error "TODO: write sub_80790CC to match asm/nonmatching/sub_80790CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80791D4.s\"");
#else
#error "TODO: write sub_80791D4 to match asm/nonmatching/sub_80791D4.s, then delete this #error"
#endif
