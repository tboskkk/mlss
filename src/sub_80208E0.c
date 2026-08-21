#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80208E0 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80208E0(void *arg0) {
    void *temp_r2_6;

    temp_r2_6 = (*(void **)((s8 *)(arg0) + (0x48)));
    (*(s32 *)((s8 *)(temp_r2_6) + (0))) = 1;
    (*(s32 *)((s8 *)(temp_r2_6) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x50)));
    (*(s32 *)((s8 *)(temp_r2_6) + (8))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x4C)));
    (*(s32 *)((s8 *)(temp_r2_6) + (0xC))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80208F4.s\"");
#else
#error "TODO: write sub_80208F4 to match asm/nonmatching/sub_80208F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020994.s\"");
#else
#error "TODO: write sub_8020994 to match asm/nonmatching/sub_8020994.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020A78.s\"");
#else
#error "TODO: write sub_8020A78 to match asm/nonmatching/sub_8020A78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_show_8020CBC.s\"");
#else
#error "TODO: write sprite_show_8020CBC to match asm/nonmatching/sprite_show_8020CBC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020D40.s\"");
#else
#error "TODO: write sub_8020D40 to match asm/nonmatching/sub_8020D40.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020DD0.s\"");
#else
#error "TODO: write sub_8020DD0 to match asm/nonmatching/sub_8020DD0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80210A8.s\"");
#else
#error "TODO: write sub_80210A8 to match asm/nonmatching/sub_80210A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021308.s\"");
#else
#error "TODO: write sub_8021308 to match asm/nonmatching/sub_8021308.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80213A0.s\"");
#else
#error "TODO: write sub_80213A0 to match asm/nonmatching/sub_80213A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80214A4.s\"");
#else
#error "TODO: write sub_80214A4 to match asm/nonmatching/sub_80214A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021574.s\"");
#else
#error "TODO: write sub_8021574 to match asm/nonmatching/sub_8021574.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802191C.s\"");
#else
#error "TODO: write sub_802191C to match asm/nonmatching/sub_802191C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8021A18.s\"");
#else
#error "TODO: write sub_8021A18 to match asm/nonmatching/sub_8021A18.s, then delete this #error"
#endif
