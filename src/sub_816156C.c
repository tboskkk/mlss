#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816156C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816156C.s\"");
#else
void sub_816156C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDD060;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161580.s\"");
#else
void sub_8161580(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDD090;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81615B4.s\"");
#else
void sub_81615B4(void* p0, s32 p1)
{
    *(u32*)((u8*)p0 + 0x04) = 0x08CDD090;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81615E4.s\"");
#else
#error "TODO: write sub_81615E4 to match asm/nonmatching/sub_81615E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161604.s\"");
#else
#error "TODO: write sub_8161604 to match asm/nonmatching/sub_8161604.s, then delete this #error"
#endif
