#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816B384 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B384.s\"");
#else
#error "TODO: write sub_816B384 to match asm/nonmatching/sub_816B384.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B3C4.s\"");
#else
void sub_816B3C4(u32* p0)
{
    *(u32*)((u8*)p0 + 0x18) = 0x08CDD1B0;
    process_remove();
    pop {r0};
    bx r0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B3D8.s\"");
#else
#error "TODO: write sub_816B3D8 to match asm/nonmatching/sub_816B3D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B45C.s\"");
#else
#error "TODO: write sub_816B45C to match asm/nonmatching/sub_816B45C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B5B0.s\"");
#else
#error "TODO: write sub_816B5B0 to match asm/nonmatching/sub_816B5B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B690.s\"");
#else
#error "TODO: write sub_816B690 to match asm/nonmatching/sub_816B690.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B9B0.s\"");
#else
#error "TODO: write sub_816B9B0 to match asm/nonmatching/sub_816B9B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816BAB4.s\"");
#else
#error "TODO: write sub_816BAB4 to match asm/nonmatching/sub_816BAB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816BB70.s\"");
#else
#error "TODO: write sub_816BB70 to match asm/nonmatching/sub_816BB70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816BC4C.s\"");
#else
#error "TODO: write sub_816BC4C to match asm/nonmatching/sub_816BC4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816BD78.s\"");
#else
#error "TODO: write sub_816BD78 to match asm/nonmatching/sub_816BD78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816BE10.s\"");
#else
#error "TODO: write sub_816BE10 to match asm/nonmatching/sub_816BE10.s, then delete this #error"
#endif
