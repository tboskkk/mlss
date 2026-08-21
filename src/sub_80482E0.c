#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80482E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80482E0.s\"");
#else
s32 sub_8040020();                              /* extern */

void sub_80482E0(void *arg0) {
    u8 temp_r2_121;
    void *temp_r1_143;
    void *temp_r1_151;
    void *temp_r3_132;

    sub_8040020();
    (*(u8 *)((s8 *)(arg0) + (0x33D))) = (u8) ((-0x80 & (*(u8 *)((s8 *)(arg0) + (0x33D)))) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x33C))) << 0x19) >> 0x19));
    (*(u8 *)((s8 *)(arg0) + (0x351))) = (u8) ((-0x21 & (*(u8 *)((s8 *)(arg0) + (0x351)))) | (((u32) ((*(u8 *)((s8 *)(arg0) + (0x350))) << 0x19) >> 0x1F) << 5));
    (*(u8 *)((s8 *)(arg0) + (0x33D))) = (u8) ((0x7F & (*(u8 *)((s8 *)(arg0) + (0x33D)))) | (((u8) (*(u8 *)((s8 *)(arg0) + (0x33C))) >> 7) << 7));
    (*(u8 *)((s8 *)(arg0) + (0x33F))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x33E)));
    (*(u8 *)((s8 *)(arg0) + (0x341))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x340)));
    (*(u8 *)((s8 *)(arg0) + (0x343))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x342)));
    (*(u8 *)((s8 *)(arg0) + (0x350))) = (s16) ((0xFFFFF87F & (u16) (*(u8 *)((s8 *)(arg0) + (0x350)))) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x350))) << 0x1C) >> 0x15));
    (*(u8 *)((s8 *)(arg0) + (0x351))) = (u8) ((-0x19 & (*(u8 *)((s8 *)(arg0) + (0x351)))) | (((u32) ((*(u8 *)((s8 *)(arg0) + (0x350))) << 0x1A) >> 0x1E) * 8));
    (*(u8 *)((s8 *)(arg0) + (0x345))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x344)));
    (*(u8 *)((s8 *)(arg0) + (0x354))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x238)));
    (*(u16 *)((s8 *)(arg0) + (0x362))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x242)));
    (*(u16 *)((s8 *)(arg0) + (0x364))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x244)));
    temp_r2_121 = (*(u8 *)((s8 *)(arg0) + (0x353)));
    (*(u8 *)((s8 *)(arg0) + (0x353))) = (u8) ((0x7F & temp_r2_121) | (((u32) (temp_r2_121 << 0x19) >> 0x1F) << 7));
    temp_r3_132 = (*(void **)((s8 *)(arg0) + (0x368)));
    (*(u8 *)((s8 *)(temp_r3_132) + (0x17))) = (u8) ((-0x80 & (*(u8 *)((s8 *)(temp_r3_132) + (0x17)))) | (0x7F & ((u32) ((*(u8 *)((s8 *)(temp_r3_132) + (0x16))) << 0x19) >> 0x19)));
    temp_r1_143 = (*(void **)((s8 *)(arg0) + (0x368)));
    (*(u8 *)((s8 *)(temp_r1_143) + (0x17))) = (u8) ((0x7F & (*(u8 *)((s8 *)(temp_r1_143) + (0x17)))) | (((u8) (*(u8 *)((s8 *)(temp_r1_143) + (0x16))) >> 7) << 7));
    temp_r1_151 = (*(void **)((s8 *)(arg0) + (0x368)));
    (*(u8 *)((s8 *)(temp_r1_151) + (0x16))) = (u8) (-0x80 & (*(u8 *)((s8 *)(temp_r1_151) + (0x16))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8048438.s\"");
#else
#error "TODO: write sub_8048438 to match asm/nonmatching/sub_8048438.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804857C.s\"");
#else
#error "TODO: write sub_804857C to match asm/nonmatching/sub_804857C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8048704.s\"");
#else
#error "TODO: write sub_8048704 to match asm/nonmatching/sub_8048704.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80487F0.s\"");
#else
#error "TODO: write sub_80487F0 to match asm/nonmatching/sub_80487F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049000.s\"");
#else
#error "TODO: write sub_8049000 to match asm/nonmatching/sub_8049000.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80490CC.s\"");
#else
#error "TODO: write sub_80490CC to match asm/nonmatching/sub_80490CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049224.s\"");
#else
#error "TODO: write sub_8049224 to match asm/nonmatching/sub_8049224.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80492DC.s\"");
#else
#error "TODO: write sub_80492DC to match asm/nonmatching/sub_80492DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049370.s\"");
#else
#error "TODO: write sub_8049370 to match asm/nonmatching/sub_8049370.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049430.s\"");
#else
#error "TODO: write sub_8049430 to match asm/nonmatching/sub_8049430.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80494D4.s\"");
#else
#error "TODO: write sub_80494D4 to match asm/nonmatching/sub_80494D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804955C.s\"");
#else
#error "TODO: write sub_804955C to match asm/nonmatching/sub_804955C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80496B4.s\"");
#else
#error "TODO: write sub_80496B4 to match asm/nonmatching/sub_80496B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80497A8.s\"");
#else
#error "TODO: write sub_80497A8 to match asm/nonmatching/sub_80497A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80499B8.s\"");
#else
#error "TODO: write sub_80499B8 to match asm/nonmatching/sub_80499B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049AB4.s\"");
#else
#error "TODO: write sub_8049AB4 to match asm/nonmatching/sub_8049AB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8049BD8.s\"");
#else
#error "TODO: write sub_8049BD8 to match asm/nonmatching/sub_8049BD8.s, then delete this #error"
#endif
