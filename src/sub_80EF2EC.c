#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EF2EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF2EC.s\"");
#else
s32 sub_80EF2EC(s32 arg1, void *arg3) {
    void *temp_r3_19;
    void *temp_r3_26;
    void *temp_r3_28;
    void *temp_r4_25;
    void *temp_r4_9;

    temp_r4_9 = *(void **)0x03000FD0;
    (*(u16 *)((s8 *)(temp_r4_9) + (0x54A))) = (u16) ((1 << (*(s32 *)((s8 *)(arg3) + (0)))) | (*(u16 *)((s8 *)(temp_r4_9) + (0x54A))));
    temp_r3_19 = arg3 + 4;
    temp_r4_25 = temp_r4_9 + ((0x2C * (*(s32 *)((s8 *)(arg3) + (0)))) + 0x320);
    temp_r3_26 = temp_r3_19 + 4;
    (*(s8 *)((s8 *)(temp_r4_25) + (9))) = (s8) (*(s32 *)((s8 *)(arg3) + (4)));
    temp_r3_28 = temp_r3_26 + 4;
    (*(s8 *)((s8 *)(temp_r4_25) + (0xA))) = (s8) (*(s32 *)((s8 *)(temp_r3_19) + (4)));
    (*(u8 *)((s8 *)(temp_r4_25) + (0xB))) = (u8) ((-2 & (*(u8 *)((s8 *)(temp_r4_25) + (0xB)))) | ((*(s32 *)((s8 *)(temp_r3_26) + (4))) & 1));
    (*(s8 *)((s8 *)(temp_r4_25) + (8))) = (s8) (*(s32 *)((s8 *)(temp_r3_28) + (4)));
    (*(s32 *)((s8 *)(temp_r4_25) + (4))) = (s32) (*(s32 *)((s8 *)((temp_r3_28 + 4)) + (4)));
    if (arg1 != 0) {
        (*(s32 *)((s8 *)(temp_r4_25) + (0))) = arg1;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/bevs_update.s\"");
#else
#error "TODO: write bevs_update to match asm/nonmatching/bevs_update.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/evts_process_init_80EF3FC.s\"");
#else
#error "TODO: write evts_process_init_80EF3FC to match asm/nonmatching/evts_process_init_80EF3FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/evts_update.s\"");
#else
#error "TODO: write evts_update to match asm/nonmatching/evts_update.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF618.s\"");
#else
#error "TODO: write sub_80EF618 to match asm/nonmatching/sub_80EF618.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF70C.s\"");
#else
#error "TODO: write sub_80EF70C to match asm/nonmatching/sub_80EF70C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF79C.s\"");
#else
#error "TODO: write sub_80EF79C to match asm/nonmatching/sub_80EF79C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF874.s\"");
#else
#error "TODO: write sub_80EF874 to match asm/nonmatching/sub_80EF874.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EFA14.s\"");
#else
#error "TODO: write sub_80EFA14 to match asm/nonmatching/sub_80EFA14.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EFB18.s\"");
#else
#error "TODO: write sub_80EFB18 to match asm/nonmatching/sub_80EFB18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EFC08.s\"");
#else
#error "TODO: write sub_80EFC08 to match asm/nonmatching/sub_80EFC08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EFE7C.s\"");
#else
#error "TODO: write sub_80EFE7C to match asm/nonmatching/sub_80EFE7C.s, then delete this #error"
#endif
