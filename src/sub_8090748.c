#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8090748 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090748.s\"");
#else
extern s32 sub_80907CC;

s32 sub_8090748(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0x084FE9A4;
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + 0x3C)) + (0x2A)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80907CC;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809078C.s\"");
#else
extern s32 sub_8090830;

s32 sub_809078C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0x084FE8A8;
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)(*(void **)0x03000FF4) + (0x2A)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8090830;
    return 1;
}
#endif
