#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sprite_heap_search needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sprite_heap_search.s\"");
#else
void sprite_heap_search(s32 a0, s16 a1, s16 a2)
{
    u32 *r3;
    u32 *r0;
    s32 r4 = a0;
    
    r0 = (u32*)0x0203FFB8;
    r3 = (u32*)r0[7];
    
    while (r3)
    {
        if (*(u8*)(r3 + 3) == r4 && *(u8*)(r3 + 3) == a1 && *(u16*)(r3 + 3) == a2)
        {
            r0 = (u32*)((s32)r3 - *(u32*)(r3 + 2));
            goto end;
        }
        r3 = (u32*)*(u32*)r3;
    }
    
    r0 = (u32*)0x00000000;
    
end:
    ;
}
#endif
