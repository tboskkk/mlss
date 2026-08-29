#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9A6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9A6C.s\"");
#else
void sub_80E9A6C(u16 param_1, s16 param_2)
{
    u32 uVar1;
    u16 *puVar2;
    s16 sVar3;
    s16 sVar4;
    
    sVar3 = param_1;
    sVar4 = param_2;
    if (sVar3 < 0x1CB7) {
        puVar2 = (u16 *)0x3000FC0;
        uVar1 = *puVar2;
        puVar2 = (u16 *)0x414;
        sVar3 = sVar4 + uVar1 + *puVar2;
    }
    else {
        if (sVar3 < 0x1CD7) {
            puVar2 = (u16 *)0x3000FC0;
            uVar1 = *puVar2;
            puVar2 = (u16 *)0x53C;
            sVar3 = sVar4 + uVar1 + *puVar2;
        }
        else {
            if (sVar3 < 0x1D17) {
                puVar2 = (u16 *)0x3000FC0;
                uVar1 = *puVar2;
                sVar3 = sVar4 + uVar1;
                sVar4 = sVar3 + (sVar3 >> 0xF) + 0xE5 * 4;
                *(u16 *)(sVar4 + (param_2 + 0xFFFFE328)) = param_1;
            }
        }
    }
    *(u8 *)sVar3 = (u8)param_2;
}
#endif

s32 free_heap_memory_8018C68(s32);              /* extern */

void sub_80E9AF8(void) {
    free_heap_memory_8018C68(*(s32 *)0x03000FC4);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9B0C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9B48.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9B8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
