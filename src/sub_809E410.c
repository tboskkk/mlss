#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809E410 needs.

asm_unified(".include \"asm/macros.inc\"");

extern void sub_809E0EC();

void sub_809E410(void* p0)
{
    u16* p1 = (u16*)((u8*)p0 + 0xAC);
    u16* p2 = (u16*)((u8*)p0 + 0xAC);
    u16* p3 = (u16*)((u8*)p0 + 0xAC);
    u16 v0 = *p3;
    s16 v1 = *(s16*)((u8*)p0 + 0xAC);
    if (v1 > 0)
    {
        *p2 = v0 - 1;
    }
    else
    {
        *(u32*)((u8*)p0 + 0x4C) = (u32)sub_809E0EC;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809E438.s\"");
#else
#error "TODO: write sub_809E438 to match asm/nonmatching/sub_809E438.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809E454.s\"");
#else
#error "TODO: write sub_809E454 to match asm/nonmatching/sub_809E454.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809E49C.s\"");
#else
#error "TODO: write sub_809E49C to match asm/nonmatching/sub_809E49C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809E4C4.s\"");
#else
#error "TODO: write sub_809E4C4 to match asm/nonmatching/sub_809E4C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809E5E4.s\"");
#else
#error "TODO: write sub_809E5E4 to match asm/nonmatching/sub_809E5E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809E7C0.s\"");
#else
#error "TODO: write sub_809E7C0 to match asm/nonmatching/sub_809E7C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809E884.s\"");
#else
#error "TODO: write sub_809E884 to match asm/nonmatching/sub_809E884.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809E968.s\"");
#else
#error "TODO: write sub_809E968 to match asm/nonmatching/sub_809E968.s, then delete this #error"
#endif
