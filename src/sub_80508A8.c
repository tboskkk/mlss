#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80508A8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80508A8.s\"");
#else
s32 init_fobj_803FEB8();                        /* extern */

void *sub_80508A8(void *arg0) {
    init_fobj_803FEB8();
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDC068;
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) (((*(u8 *)((s8 *)(arg0) + (0x33C))) | 1) & ~0x38 & ~2 & ~4);
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (s16) (0xFFFFFC3F & (u16) (*(u8 *)((s8 *)(arg0) + (0x33C))));
    (*(s8 *)((s8 *)(arg0) + (0x23B))) = 0;
    (*(u16 *)((s8 *)(arg0) + (0x33E))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x33E))) | 0x1FE);
    (*(s16 *)((s8 *)(arg0) + (0x340))) = 1;
    (*(s16 *)((s8 *)(arg0) + (0x342))) = 0xFFFF;
    (*(s16 *)((s8 *)(arg0) + (0x344))) = -1;
    (*(s32 *)((s8 *)(arg0) + (0x348))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x34C))) = 0;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050940.s\"");
#else
#error "TODO: write sub_8050940 to match asm/nonmatching/sub_8050940.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050BC0.s\"");
#else
#error "TODO: write sub_8050BC0 to match asm/nonmatching/sub_8050BC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050DB0.s\"");
#else
#error "TODO: write sub_8050DB0 to match asm/nonmatching/sub_8050DB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050EAC.s\"");
#else
#error "TODO: write sub_8050EAC to match asm/nonmatching/sub_8050EAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050FD0.s\"");
#else
#error "TODO: write sub_8050FD0 to match asm/nonmatching/sub_8050FD0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805113C.s\"");
#else
#error "TODO: write sub_805113C to match asm/nonmatching/sub_805113C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051208.s\"");
#else
#error "TODO: write sub_8051208 to match asm/nonmatching/sub_8051208.s, then delete this #error"
#endif
