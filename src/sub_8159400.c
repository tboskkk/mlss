#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159400 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159400.s\"");
#else
void sub_8159400(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCA30;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159440.s\"");
#else
void sub_8159440(u32* p0, u32 p1)
{
    u32* var = p0;
    *(u32*)((u8*)var + 0x04) = 0x08CDCA30;
    if (p1 & 1)
        free_heap_8018DA8(var);
}
#endif
