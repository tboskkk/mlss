#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139200 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139200.s\"");
#else
void sub_8139200(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x25C))) != -1) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + (*(s32 *)((s8 *)(arg0) + (0x258))));
        (*(s32 *)((s8 *)(arg0) + (0x258))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x258))) - (*(s32 *)((s8 *)(arg0) + (0x248))));
        (*(s32 *)((s8 *)(arg0) + (0x25C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x25C))) + 1);
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0) {
            (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x25C))) = -1;
            (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139260.s\"");
#else
#error "TODO: write sub_8139260 to match asm/nonmatching/sub_8139260.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81392CC.s\"");
#else
#error "TODO: write sub_81392CC to match asm/nonmatching/sub_81392CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81392F4.s\"");
#else
#error "TODO: write sub_81392F4 to match asm/nonmatching/sub_81392F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139364.s\"");
#else
#error "TODO: write sub_8139364 to match asm/nonmatching/sub_8139364.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813939C.s\"");
#else
#error "TODO: write sub_813939C to match asm/nonmatching/sub_813939C.s, then delete this #error"
#endif
