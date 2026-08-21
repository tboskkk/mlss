#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FA7E4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA7E4.s\"");
#else
s32 sub_80FA7E4(void *arg0, void *arg1) {
    if ((*(u8 *)0x03000C80 | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x24)))) + (0x9A2))) << 0x1F) >> 0x1F)) == 0) {
        return 1;
    }
    (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA818.s\"");
#else
#error "TODO: write sub_80FA818 to match asm/nonmatching/sub_80FA818.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA8A4.s\"");
#else
#error "TODO: write sub_80FA8A4 to match asm/nonmatching/sub_80FA8A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA908.s\"");
#else
#error "TODO: write sub_80FA908 to match asm/nonmatching/sub_80FA908.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA960.s\"");
#else
#error "TODO: write sub_80FA960 to match asm/nonmatching/sub_80FA960.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA9C4.s\"");
#else
#error "TODO: write sub_80FA9C4 to match asm/nonmatching/sub_80FA9C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAA34.s\"");
#else
#error "TODO: write sub_80FAA34 to match asm/nonmatching/sub_80FAA34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAAA0.s\"");
#else
#error "TODO: write sub_80FAAA0 to match asm/nonmatching/sub_80FAAA0.s, then delete this #error"
#endif
