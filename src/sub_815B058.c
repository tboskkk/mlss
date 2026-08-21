#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815B058 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B058.s\"");
#else
void sub_815B058(u32* param_1)
{
    u8 temp;
    
    temp = *(u8*)((u8*)param_1 + 0x0C);
    if (temp <= 0x12)
    {
        void (*func_ptr)(void) = *(void(**)(void))((u32*)((u8*)param_1 + 0x00) + (temp << 2));
        func_ptr();
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B2B8.s\"");
#else
#error "TODO: write sub_815B2B8 to match asm/nonmatching/sub_815B2B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B550.s\"");
#else
#error "TODO: write sub_815B550 to match asm/nonmatching/sub_815B550.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B820.s\"");
#else
#error "TODO: write sub_815B820 to match asm/nonmatching/sub_815B820.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815B950.s\"");
#else
#error "TODO: write sub_815B950 to match asm/nonmatching/sub_815B950.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815BB4C.s\"");
#else
#error "TODO: write sub_815BB4C to match asm/nonmatching/sub_815BB4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815BC38.s\"");
#else
#error "TODO: write sub_815BC38 to match asm/nonmatching/sub_815BC38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815BD94.s\"");
#else
#error "TODO: write sub_815BD94 to match asm/nonmatching/sub_815BD94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C0C0.s\"");
#else
#error "TODO: write sub_815C0C0 to match asm/nonmatching/sub_815C0C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C3DC.s\"");
#else
#error "TODO: write sub_815C3DC to match asm/nonmatching/sub_815C3DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C660.s\"");
#else
#error "TODO: write sub_815C660 to match asm/nonmatching/sub_815C660.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C8EC.s\"");
#else
#error "TODO: write sub_815C8EC to match asm/nonmatching/sub_815C8EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815C9B4.s\"");
#else
#error "TODO: write sub_815C9B4 to match asm/nonmatching/sub_815C9B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815CC60.s\"");
#else
#error "TODO: write sub_815CC60 to match asm/nonmatching/sub_815CC60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815CD74.s\"");
#else
#error "TODO: write sub_815CD74 to match asm/nonmatching/sub_815CD74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815CF80.s\"");
#else
#error "TODO: write sub_815CF80 to match asm/nonmatching/sub_815CF80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D12C.s\"");
#else
#error "TODO: write sub_815D12C to match asm/nonmatching/sub_815D12C.s, then delete this #error"
#endif
