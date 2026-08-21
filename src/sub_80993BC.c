#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80993BC needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80993C8;

s32 sub_80993BC(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80993C8;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80993C8.s\"");
#else
#error "TODO: write sub_80993C8 to match asm/nonmatching/sub_80993C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80993E4.s\"");
#else
#error "TODO: write sub_80993E4 to match asm/nonmatching/sub_80993E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099448.s\"");
#else
#error "TODO: write sub_8099448 to match asm/nonmatching/sub_8099448.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80994F4.s\"");
#else
#error "TODO: write sub_80994F4 to match asm/nonmatching/sub_80994F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099624.s\"");
#else
#error "TODO: write sub_8099624 to match asm/nonmatching/sub_8099624.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80997E4.s\"");
#else
#error "TODO: write sub_80997E4 to match asm/nonmatching/sub_80997E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099890.s\"");
#else
#error "TODO: write sub_8099890 to match asm/nonmatching/sub_8099890.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80999C0.s\"");
#else
#error "TODO: write sub_80999C0 to match asm/nonmatching/sub_80999C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099AB8.s\"");
#else
#error "TODO: write sub_8099AB8 to match asm/nonmatching/sub_8099AB8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099BE4.s\"");
#else
#error "TODO: write sub_8099BE4 to match asm/nonmatching/sub_8099BE4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099D28.s\"");
#else
#error "TODO: write sub_8099D28 to match asm/nonmatching/sub_8099D28.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099F10.s\"");
#else
#error "TODO: write sub_8099F10 to match asm/nonmatching/sub_8099F10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099F7C.s\"");
#else
#error "TODO: write sub_8099F7C to match asm/nonmatching/sub_8099F7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099FC4.s\"");
#else
#error "TODO: write sub_8099FC4 to match asm/nonmatching/sub_8099FC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099FE0.s\"");
#else
#error "TODO: write sub_8099FE0 to match asm/nonmatching/sub_8099FE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099FFC.s\"");
#else
#error "TODO: write sub_8099FFC to match asm/nonmatching/sub_8099FFC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A02C.s\"");
#else
#error "TODO: write sub_809A02C to match asm/nonmatching/sub_809A02C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A06C.s\"");
#else
#error "TODO: write sub_809A06C to match asm/nonmatching/sub_809A06C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A09C.s\"");
#else
#error "TODO: write sub_809A09C to match asm/nonmatching/sub_809A09C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A0F4.s\"");
#else
#error "TODO: write sub_809A0F4 to match asm/nonmatching/sub_809A0F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A120.s\"");
#else
#error "TODO: write sub_809A120 to match asm/nonmatching/sub_809A120.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A14C.s\"");
#else
#error "TODO: write sub_809A14C to match asm/nonmatching/sub_809A14C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A178.s\"");
#else
#error "TODO: write sub_809A178 to match asm/nonmatching/sub_809A178.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A364.s\"");
#else
#error "TODO: write sub_809A364 to match asm/nonmatching/sub_809A364.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A560.s\"");
#else
#error "TODO: write sub_809A560 to match asm/nonmatching/sub_809A560.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A630.s\"");
#else
#error "TODO: write sub_809A630 to match asm/nonmatching/sub_809A630.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A670.s\"");
#else
#error "TODO: write sub_809A670 to match asm/nonmatching/sub_809A670.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A6CC.s\"");
#else
#error "TODO: write sub_809A6CC to match asm/nonmatching/sub_809A6CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A76C.s\"");
#else
#error "TODO: write sub_809A76C to match asm/nonmatching/sub_809A76C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A7EC.s\"");
#else
#error "TODO: write sub_809A7EC to match asm/nonmatching/sub_809A7EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A808.s\"");
#else
#error "TODO: write sub_809A808 to match asm/nonmatching/sub_809A808.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A858.s\"");
#else
#error "TODO: write sub_809A858 to match asm/nonmatching/sub_809A858.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A8A0.s\"");
#else
#error "TODO: write sub_809A8A0 to match asm/nonmatching/sub_809A8A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A9A0.s\"");
#else
#error "TODO: write sub_809A9A0 to match asm/nonmatching/sub_809A9A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AAF4.s\"");
#else
#error "TODO: write sub_809AAF4 to match asm/nonmatching/sub_809AAF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AB48.s\"");
#else
#error "TODO: write sub_809AB48 to match asm/nonmatching/sub_809AB48.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AD30.s\"");
#else
#error "TODO: write sub_809AD30 to match asm/nonmatching/sub_809AD30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809ADC0.s\"");
#else
#error "TODO: write sub_809ADC0 to match asm/nonmatching/sub_809ADC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AE80.s\"");
#else
#error "TODO: write sub_809AE80 to match asm/nonmatching/sub_809AE80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AEB0.s\"");
#else
#error "TODO: write sub_809AEB0 to match asm/nonmatching/sub_809AEB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AECC.s\"");
#else
#error "TODO: write sub_809AECC to match asm/nonmatching/sub_809AECC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AF60.s\"");
#else
#error "TODO: write sub_809AF60 to match asm/nonmatching/sub_809AF60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AFB4.s\"");
#else
#error "TODO: write sub_809AFB4 to match asm/nonmatching/sub_809AFB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B038.s\"");
#else
#error "TODO: write sub_809B038 to match asm/nonmatching/sub_809B038.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B068.s\"");
#else
#error "TODO: write sub_809B068 to match asm/nonmatching/sub_809B068.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B0A8.s\"");
#else
#error "TODO: write sub_809B0A8 to match asm/nonmatching/sub_809B0A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B114.s\"");
#else
#error "TODO: write sub_809B114 to match asm/nonmatching/sub_809B114.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B1A0.s\"");
#else
#error "TODO: write sub_809B1A0 to match asm/nonmatching/sub_809B1A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B228.s\"");
#else
#error "TODO: write sub_809B228 to match asm/nonmatching/sub_809B228.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B2C0.s\"");
#else
#error "TODO: write sub_809B2C0 to match asm/nonmatching/sub_809B2C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B370.s\"");
#else
#error "TODO: write sub_809B370 to match asm/nonmatching/sub_809B370.s, then delete this #error"
#endif
