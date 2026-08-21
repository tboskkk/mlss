#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8068818 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068818.s\"");
#else
void sub_8068818(void *arg0) {
    s32 temp_r0_16;

    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) == 0) {
        temp_r0_16 = (*(s32 *)((s8 *)(arg0) + (0x10))) + 0xFFFFFE00;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_16;
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x84))) >= temp_r0_16) {
            (*(s16 *)((s8 *)(arg0) + (0xAC))) = 1;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068844.s\"");
#else
#error "TODO: write sub_8068844 to match asm/nonmatching/sub_8068844.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80688B8.s\"");
#else
#error "TODO: write sub_80688B8 to match asm/nonmatching/sub_80688B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806890C.s\"");
#else
#error "TODO: write sub_806890C to match asm/nonmatching/sub_806890C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80689AC.s\"");
#else
#error "TODO: write sub_80689AC to match asm/nonmatching/sub_80689AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80689E4.s\"");
#else
#error "TODO: write sub_80689E4 to match asm/nonmatching/sub_80689E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068A28.s\"");
#else
#error "TODO: write sub_8068A28 to match asm/nonmatching/sub_8068A28.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068A50.s\"");
#else
#error "TODO: write sub_8068A50 to match asm/nonmatching/sub_8068A50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068AA8.s\"");
#else
#error "TODO: write sub_8068AA8 to match asm/nonmatching/sub_8068AA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068B68.s\"");
#else
#error "TODO: write sub_8068B68 to match asm/nonmatching/sub_8068B68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068BF0.s\"");
#else
#error "TODO: write sub_8068BF0 to match asm/nonmatching/sub_8068BF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068C70.s\"");
#else
#error "TODO: write sub_8068C70 to match asm/nonmatching/sub_8068C70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068C98.s\"");
#else
#error "TODO: write sub_8068C98 to match asm/nonmatching/sub_8068C98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068D74.s\"");
#else
#error "TODO: write sub_8068D74 to match asm/nonmatching/sub_8068D74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068DBC.s\"");
#else
#error "TODO: write sub_8068DBC to match asm/nonmatching/sub_8068DBC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068DEC.s\"");
#else
#error "TODO: write sub_8068DEC to match asm/nonmatching/sub_8068DEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068E60.s\"");
#else
#error "TODO: write sub_8068E60 to match asm/nonmatching/sub_8068E60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068E7C.s\"");
#else
#error "TODO: write sub_8068E7C to match asm/nonmatching/sub_8068E7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068E98.s\"");
#else
#error "TODO: write sub_8068E98 to match asm/nonmatching/sub_8068E98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068EF4.s\"");
#else
#error "TODO: write sub_8068EF4 to match asm/nonmatching/sub_8068EF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068F10.s\"");
#else
#error "TODO: write sub_8068F10 to match asm/nonmatching/sub_8068F10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068F3C.s\"");
#else
#error "TODO: write sub_8068F3C to match asm/nonmatching/sub_8068F3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8069014.s\"");
#else
#error "TODO: write sub_8069014 to match asm/nonmatching/sub_8069014.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80690F8.s\"");
#else
#error "TODO: write sub_80690F8 to match asm/nonmatching/sub_80690F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80691F4.s\"");
#else
#error "TODO: write sub_80691F4 to match asm/nonmatching/sub_80691F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80692DC.s\"");
#else
#error "TODO: write sub_80692DC to match asm/nonmatching/sub_80692DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8069354.s\"");
#else
#error "TODO: write sub_8069354 to match asm/nonmatching/sub_8069354.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8069394.s\"");
#else
#error "TODO: write sub_8069394 to match asm/nonmatching/sub_8069394.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80693BC.s\"");
#else
#error "TODO: write sub_80693BC to match asm/nonmatching/sub_80693BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8069450.s\"");
#else
#error "TODO: write sub_8069450 to match asm/nonmatching/sub_8069450.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806947C.s\"");
#else
#error "TODO: write sub_806947C to match asm/nonmatching/sub_806947C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80694B4.s\"");
#else
#error "TODO: write sub_80694B4 to match asm/nonmatching/sub_80694B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8069558.s\"");
#else
#error "TODO: write sub_8069558 to match asm/nonmatching/sub_8069558.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80695E4.s\"");
#else
#error "TODO: write sub_80695E4 to match asm/nonmatching/sub_80695E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8069688.s\"");
#else
#error "TODO: write sub_8069688 to match asm/nonmatching/sub_8069688.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8069794.s\"");
#else
#error "TODO: write sub_8069794 to match asm/nonmatching/sub_8069794.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80698C4.s\"");
#else
#error "TODO: write sub_80698C4 to match asm/nonmatching/sub_80698C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80699E4.s\"");
#else
#error "TODO: write sub_80699E4 to match asm/nonmatching/sub_80699E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8069AE8.s\"");
#else
#error "TODO: write sub_8069AE8 to match asm/nonmatching/sub_8069AE8.s, then delete this #error"
#endif
