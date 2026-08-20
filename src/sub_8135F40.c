#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8135F40 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8135F40.s\"");
#else
void sub_8135F40(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0))) = 0x100;
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = 0x100;
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x1C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x20))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x24))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x28))) = 0x100;
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x34))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x38))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x3C))) = 0x100;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8136110.s\"");
#else
void sub_8136110(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x40))) = 0x08CDC470;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif
