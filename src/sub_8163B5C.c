#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163B5C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8163B5C(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x64))) = arg1;
}

s32 sub_8021308();                              /* extern */

void sub_8163B60(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD0F8;
    if ((*(s32 *)((s8 *)(arg0) + (0x10))) != 0) {
        sub_8021308();
    }
    if ((*(s32 *)((s8 *)(arg0) + (0x14))) != 0) {
        sub_8021308();
    }
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD118;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
