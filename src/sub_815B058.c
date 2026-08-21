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
