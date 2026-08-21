#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805F5E4 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_808750C;

void sub_805F5E4(void *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0xA0))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r0_11;
    if (temp_r0_11 < 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F604.s\"");
#else
s32 sub_8082B00();                                  /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_805F638;

void sub_805F604(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        play_sfx_80195B4(0x118, -1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_805F638;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F638.s\"");
#else
#error "TODO: write sub_805F638 to match asm/nonmatching/sub_805F638.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F690.s\"");
#else
#error "TODO: write sub_805F690 to match asm/nonmatching/sub_805F690.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F6BC.s\"");
#else
#error "TODO: write sub_805F6BC to match asm/nonmatching/sub_805F6BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F778.s\"");
#else
#error "TODO: write sub_805F778 to match asm/nonmatching/sub_805F778.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F910.s\"");
#else
#error "TODO: write sub_805F910 to match asm/nonmatching/sub_805F910.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FA18.s\"");
#else
#error "TODO: write sub_805FA18 to match asm/nonmatching/sub_805FA18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FAE8.s\"");
#else
#error "TODO: write sub_805FAE8 to match asm/nonmatching/sub_805FAE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FBB4.s\"");
#else
#error "TODO: write sub_805FBB4 to match asm/nonmatching/sub_805FBB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FC80.s\"");
#else
#error "TODO: write sub_805FC80 to match asm/nonmatching/sub_805FC80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FCC8.s\"");
#else
#error "TODO: write sub_805FCC8 to match asm/nonmatching/sub_805FCC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FD40.s\"");
#else
#error "TODO: write sub_805FD40 to match asm/nonmatching/sub_805FD40.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FD5C.s\"");
#else
#error "TODO: write sub_805FD5C to match asm/nonmatching/sub_805FD5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FDB8.s\"");
#else
#error "TODO: write sub_805FDB8 to match asm/nonmatching/sub_805FDB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FE74.s\"");
#else
#error "TODO: write sub_805FE74 to match asm/nonmatching/sub_805FE74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FEF4.s\"");
#else
#error "TODO: write sub_805FEF4 to match asm/nonmatching/sub_805FEF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805FF30.s\"");
#else
#error "TODO: write sub_805FF30 to match asm/nonmatching/sub_805FF30.s, then delete this #error"
#endif
