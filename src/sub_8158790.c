#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158790 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158790.s\"");
#else
s32 sub_8158790(void *arg0) {
    s32 var_r4_19;
    u8 temp_r0_10;
    void *temp_r2_24;
    void *temp_r2_39;

    temp_r0_10 = (*(u8 *)((s8 *)(arg0) + (0x24)));
    switch (temp_r0_10) {                           /* irregular */
    case 1:
        var_r4_19 = 0;
        temp_r2_24 = (*(void **)((s8 *)(*(void **)0x03001018) + (0x1C98)));
        if ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) - (*(s32 *)((s8 *)(temp_r2_24) + (4)))) < 0) {
            var_r4_19 = 1;
            (*(s8 *)((s8 *)(temp_r2_24) + (0x24))) = 6;
        }
        temp_r2_39 = (*(void **)((s8 *)(*(void **)0x03001018) + (0x1C9C)));
        if ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) - (*(s32 *)((s8 *)(temp_r2_39) + (4)))) < 0) {
            var_r4_19 += 1;
            (*(s8 *)((s8 *)(temp_r2_39) + (0x24))) = 6;
        }
        if (var_r4_19 > 1) {
            (*(u8 *)((s8 *)(arg0) + (0x24))) = 2U;
        }
    default:
        return 0;
    case 2:
        return 1;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158808.s\"");
#else
#error "TODO: write sub_8158808 to match asm/nonmatching/sub_8158808.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815881C.s\"");
#else
#error "TODO: write sub_815881C to match asm/nonmatching/sub_815881C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158844.s\"");
#else
#error "TODO: write sub_8158844 to match asm/nonmatching/sub_8158844.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158884.s\"");
#else
#error "TODO: write sub_8158884 to match asm/nonmatching/sub_8158884.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81588C8.s\"");
#else
#error "TODO: write sub_81588C8 to match asm/nonmatching/sub_81588C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81588DC.s\"");
#else
#error "TODO: write sub_81588DC to match asm/nonmatching/sub_81588DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158920.s\"");
#else
#error "TODO: write sub_8158920 to match asm/nonmatching/sub_8158920.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158954.s\"");
#else
#error "TODO: write sub_8158954 to match asm/nonmatching/sub_8158954.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158988.s\"");
#else
#error "TODO: write sub_8158988 to match asm/nonmatching/sub_8158988.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158994.s\"");
#else
#error "TODO: write sub_8158994 to match asm/nonmatching/sub_8158994.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81589A8.s\"");
#else
#error "TODO: write sub_81589A8 to match asm/nonmatching/sub_81589A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81589D0.s\"");
#else
#error "TODO: write sub_81589D0 to match asm/nonmatching/sub_81589D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81589DC.s\"");
#else
#error "TODO: write sub_81589DC to match asm/nonmatching/sub_81589DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81589F0.s\"");
#else
#error "TODO: write sub_81589F0 to match asm/nonmatching/sub_81589F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158A20.s\"");
#else
#error "TODO: write sub_8158A20 to match asm/nonmatching/sub_8158A20.s, then delete this #error"
#endif
