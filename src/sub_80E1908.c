#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E1908 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1908.s\"");
#else
extern void sub_80DF5EC();

void sub_80E1908(void* p0) {
    u32* ptr = *(u32**)((u8*)p0 + 0x0C);
    u16 val = *(u16*)(ptr);
    *(u16*)((u8*)p0 + 0x10) = val;
    ptr += 1;
    *(u32*)((u8*)p0 + 0x0C) = ptr;
    *(u32*)((u8*)p0 + 0x04) = (u32)sub_80DF5EC;
    ((void(*)())*(u32*)((u8*)p0 + 0x04))();
    p0 = *(void**)((u8*)p0 + 0x00);
    ((void(*)())p0)();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1924.s\"");
#else
extern void sub_80E1AF0();

void sub_80E1924(void* p0) {
    u32* r1 = *(u32**)((u8*)p0 + 0x0C);
    u16 r2 = *(u16*)(r1);
    *(u16*)((u8*)p0 + 0x10) = r2;
    r1 += 1;
    *(u32*)((u8*)p0 + 0x0C) = r1;
    *(u32*)((u8*)p0 + 0x04) = (u32)sub_80E1AF0;
    ((void(*)(void))(*(u32*)((u8*)p0 + 0x04)))();
    p0 = *(void**)((u8*)p0 + 0x00);
    ((void(*)())(p0))();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E1940.s\"");
#else
extern void sub_80DF2B0();

void sub_80E1940(void* p0) {
    u32* r1 = *(u32**)((u8*)p0 + 0x0C);
    u16 r2 = *(u16*)(r1);
    *(u16*)((u8*)p0 + 0x10) = r2;
    r1 += 1;
    *(u32*)((u8*)p0 + 0x0C) = r1;
    *(u32*)((u8*)p0 + 0x04) = (u32)sub_80DF2B0;
    ((void(*)())*(u32*)((u8*)p0 + 0x04))();
    p0 = *(void**)((u8*)p0 + 0x00);
    ((void(*)())p0)();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E195C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_807F6D0();                              /* extern */

void sub_80E19A8(void *arg0) {
    if ((s32) (s16) (*(u16 *)((s8 *)(arg0) + (0x10))) > 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    sub_807F6D0();
    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
}
