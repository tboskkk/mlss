#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8146DC8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146DC8.s\"");
#else
void sub_8146DC8(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x20E))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20E))));
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) (((*(u8 *)((s8 *)(arg0) + (0x20D))) | 8) & ~0x20 & ~0x40);
    (*(s32 *)((s8 *)(arg0) + (0x20C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x20C))) & 0xFFFC7FFF);
    (*(u8 *)((s8 *)(arg0) + (0x20F))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20F))));
    (*(s32 *)((s8 *)(arg0) + (0x20C))) = (s8) ((u8) (*(s32 *)((s8 *)(arg0) + (0x20C))) | 0x80 | 0x40 | 0x20);
    (*(u8 *)((s8 *)(arg0) + (0x20E))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20E))));
    (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x20D))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146E40.s\"");
#else
#error "TODO: write sub_8146E40 to match asm/nonmatching/sub_8146E40.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146E9C.s\"");
#else
#error "TODO: write sub_8146E9C to match asm/nonmatching/sub_8146E9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146F2C.s\"");
#else
#error "TODO: write sub_8146F2C to match asm/nonmatching/sub_8146F2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146FAC.s\"");
#else
#error "TODO: write sub_8146FAC to match asm/nonmatching/sub_8146FAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8147010.s\"");
#else
#error "TODO: write sub_8147010 to match asm/nonmatching/sub_8147010.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814704C.s\"");
#else
#error "TODO: write sub_814704C to match asm/nonmatching/sub_814704C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814706C.s\"");
#else
#error "TODO: write sub_814706C to match asm/nonmatching/sub_814706C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81470B8.s\"");
#else
#error "TODO: write sub_81470B8 to match asm/nonmatching/sub_81470B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81470F8.s\"");
#else
#error "TODO: write sub_81470F8 to match asm/nonmatching/sub_81470F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81471A0.s\"");
#else
#error "TODO: write sub_81471A0 to match asm/nonmatching/sub_81471A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8147440.s\"");
#else
#error "TODO: write sub_8147440 to match asm/nonmatching/sub_8147440.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8147590.s\"");
#else
#error "TODO: write sub_8147590 to match asm/nonmatching/sub_8147590.s, then delete this #error"
#endif
