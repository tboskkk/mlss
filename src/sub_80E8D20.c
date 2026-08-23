#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E8D20 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8D20.s\"");
#else
void sub_80E8D20(u8* param_1, u16 param_2)
{
    u32 uVar1;
    u8* puVar2;
    u8* puVar3;
    u8* puVar4;
    
    puVar2 = (u8*)param_1;
    puVar3 = (u8*)0x83BBDD0;
    puVar4 = (u8*)0x300034C;
    uVar1 = param_2 & 0xFF0000;
    uVar1 = uVar1 >> 0xC;
    puVar3 = puVar3 + 0xC;
    puVar3 = puVar3 + uVar1;
    puVar4 = puVar4 + (0x8C << 4);
    uVar1 = *(u8*)puVar4;
    puVar4 = *(u32**)(puVar3 + 0x0);
    puVar4 = *(u32**)puVar4;
    uVar1 = uVar1 << 2;
    puVar4 = puVar4 + uVar1;
    uVar1 = *(u32*)puVar4;
    puVar4 = (u8*)uVar1;
    puVar2 = puVar2 + 0x0;
    while( true ) {
        uVar1 = *(u8*)puVar4;
        if (uVar1 == 0) break;
        *(u8*)puVar2 = uVar1;
        puVar4 = puVar4 + 0x1;
        puVar2 = puVar2 + 0x1;
    }
    *(u8*)puVar2 = 0xFF;
    puVar2 = puVar2 + 0x1;
    *(u8*)puVar2 = 0x0A;
    puVar2 = puVar2 + 0x1;
    *(u8*)puVar2 = 0x00;
}
#endif

s32 free_heap_memory_8018C68();                 /* extern */

void sub_80E8D74(void) {
    if (*(s32 *)0x03000FBC != 0) {
        free_heap_memory_8018C68();
        *(s32 *)0x03000FBC = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8D90.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8DC0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8DE4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
