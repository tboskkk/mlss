#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087C4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087C4C.s\"");
#else
void sub_8087C4C(void* p0)
{
    u32* ptr = (u32*)((u8*)p0 + 0x80);
    u32 val = *ptr;
    if (val != 0)
    {
        void* arg = *(u32*)((u8*)p0 + 0x68);
        if (arg != NULL)
        {
            ((void(*)(void))arg)();
        }
    }
    *(u32*)((u8*)p0 + 0x6C) = val;
}
#endif
