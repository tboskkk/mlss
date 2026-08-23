#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9414 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9414.s\"");
#else
void sub_80E9414(u32* p0, u32 p1)
{
    u32* r3 = p0;
    u32 r5 = p1;
    u32* r0 = *(u32**)((u8*)r3 + 0x08);
    if (r0 == NULL)
        goto _080E9460;
    u32* r4 = NULL;
    u32* r1 = NULL;
    u32* r2 = *(u32**)((u8*)r3 + 0x04);
    if (r2 == NULL)
        goto _080E945C;
_080E942A:
    r0 = *(u32**)((u8*)r2 + 0x08);
    if (r0 <= r5)
    {
        if (r4 != NULL)
            goto _080E9454;
        r4 = r2;
        goto _080E9454;
    }
    if (r0 == r5)
    {
        if (r1 != NULL)
        {
            *(u32*)((u8*)r1 + 0x00) = *(u32*)((u8*)r2 + 0x00);
            goto _080E944A;
        }
        *(u32*)((u8*)r3 + 0x04) = *(u32*)((u8*)r2 + 0x00);
    }
_080E944A:
    *(u32*)((u8*)r3 + 0x00) = *(u32*)((u8*)r2 + 0x00);
    *(u32*)((u8*)r3 + 0x00) = r2;
    *(u32*)((u8*)r2 + 0x04) = *(u32*)((u8*)r3 + 0x04);
    goto _080E947E;
_080E9454:
    r1 = r2;
    r2 = *(u32**)((u8*)r2 + 0x00);
    if (r2 != NULL)
        goto _080E942A;
_080E945C:
    if (r4 == NULL)
        goto _080E9460;
_080E9460:
    *(u32*)((u8*)r3 + 0x00) = 0;
    goto _080E947E;
_080E9464:
    *(u32*)((u8*)(*(u32**)((u8*)r3 + 0x08)) + 0x08) = r5;
    u32 r1_val = *(u32**)((u8*)r4 + 0x08);
    r1_val -= r5;
    *(u32*)((u8*)(*(u32**)((u8*)r3 + 0x04)) + 0x08) = r1_val;
    *(u32*)((u8*)(*(u32**)((u8*)r3 + 0x08)) + 0x04) = *(u32*)((u8*)r3 + 0x04) + r1_val;
    *(u32*)((u8*)r3 + 0x08) = *(u32*)((u8*)r2 + 0x00);
    *(u32*)((u8*)r3 + 0x00) = *(u32*)((u8*)r2 + 0x00);
    *(u32*)((u8*)r3 + 0x00) = r2;
_080E947E:
    return;
}
#endif

s32 free_heap_memory_8018C68();                 /* extern */

void sub_80E9484(void *arg0, s32 arg1) {
    if ((*(s32 *)((s8 *)(arg0) + (0xC))) != 0) {
        free_heap_memory_8018C68();
        (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E94AC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9594.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_read_next_line.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E98C0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
