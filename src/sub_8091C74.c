#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8091C74 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091C74.s\"");
#else
extern s32 sub_808DD2C;
extern s32 sub_8091DD8;

s32 sub_8091C74(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8091DD8;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091CC8.s\"");
#else
#error "TODO: write sub_8091CC8 to match asm/nonmatching/sub_8091CC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091D10.s\"");
#else
#error "TODO: write sub_8091D10 to match asm/nonmatching/sub_8091D10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091D34.s\"");
#else
#error "TODO: write sub_8091D34 to match asm/nonmatching/sub_8091D34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091D78.s\"");
#else
#error "TODO: write sub_8091D78 to match asm/nonmatching/sub_8091D78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091D9C.s\"");
#else
#error "TODO: write sub_8091D9C to match asm/nonmatching/sub_8091D9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091DD8.s\"");
#else
#error "TODO: write sub_8091DD8 to match asm/nonmatching/sub_8091DD8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091E00.s\"");
#else
#error "TODO: write sub_8091E00 to match asm/nonmatching/sub_8091E00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091E70.s\"");
#else
#error "TODO: write sub_8091E70 to match asm/nonmatching/sub_8091E70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091EE0.s\"");
#else
#error "TODO: write sub_8091EE0 to match asm/nonmatching/sub_8091EE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091F48.s\"");
#else
#error "TODO: write sub_8091F48 to match asm/nonmatching/sub_8091F48.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091FB0.s\"");
#else
#error "TODO: write sub_8091FB0 to match asm/nonmatching/sub_8091FB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091FDC.s\"");
#else
#error "TODO: write sub_8091FDC to match asm/nonmatching/sub_8091FDC.s, then delete this #error"
#endif
