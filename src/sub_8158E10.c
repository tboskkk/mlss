#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158E10 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8158E10(void *arg0) {
    (*(s16 *)((s8 *)(arg0) + (0x14))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158E18.s\"");
#else
void sub_8158E18(u32* p0)
{
    u32* r2;
    u32* r1;
    u32* r0;
    u32 r3;
    u8 r0b;

    r2 = p0;
    r0 = p0;
    r0 += 0x25 / sizeof(u32);
    r0b = *(u8*)r0;
    if (r0b == 0)
    {
        r1 = (u32*)0x083CB0F0;
        r0 = (u32*)0x03001018;
        r0 = *(u32**)r0;
        r3 = 0xF9 << 5;
        r0 += r3 / sizeof(u32);
        r0b = *(u8*)r0;
        r0 = (u32*)(r0b << 5);
        r0 = (u32*)((u8*)r0 + (u8*)r1);
        r0 = (u32*)*(u16*)((u8*)r0 + 0x1C);
    }
    else
    {
        r1 = (u32*)0x083CB0F0;
        r0 = (u32*)0x03001018;
        r0 = *(u32**)r0;
        r3 = 0xF9 << 5;
        r0 += r3 / sizeof(u32);
        r0b = *(u8*)r0;
        r0 = (u32*)(r0b << 5);
        r0 = (u32*)((u8*)r0 + (u8*)r1);
        r0 = (u32*)*(u16*)((u8*)r0 + 0x1C);
        r0 -= 0x64;
    }
    *(u16*)((u8*)r2 + 0x14) = (u16)r0;
    r1 = (u32*)((u8*)r2 + 0x24);
    *(u8*)r1 = 0x02;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/set_surface_height_fields.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 get_surface_height_at_x(s32, s32);              /* extern */
s32 sub_815FACC(void *);                        /* extern */

void sub_8158E90(void *arg0, s32 arg1) {
    s32 temp_r0_18;
    s32 temp_r2_12;

    temp_r2_12 = (s32) (get_surface_height_at_x(arg1, (*(s32 *)((s8 *)(arg0) + (4)))) << 0x10) >> 8;
    (*(s32 *)((s8 *)(arg0) + (0x44))) = temp_r2_12;
    if ((s32) (*(s32 *)((s8 *)(arg0) + (8))) > temp_r2_12) {
        (*(s32 *)((s8 *)(arg0) + (8))) = temp_r2_12;
        temp_r0_18 = (*(s32 *)((s8 *)(arg0) + (4)));
        (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) (temp_r0_18 - (*(s32 *)((s8 *)(arg0) + (0xC))));
        (*(s16 *)((s8 *)(arg0) + (0x18))) = (s16) (temp_r2_12 - (*(s32 *)((s8 *)(arg0) + (0x10))));
        (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r0_18;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r2_12;
        return;
    }
    sub_815FACC(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158ECC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_815FAFC();                              /* extern */
s32 sub_815FB14(void *, s32);                   /* extern */

void sub_8158EEC(void *arg0, s32 arg1) {
    void *temp_r1_18;
    void *temp_r2_15;

    (*(s32 *)((s8 *)(arg0) + (0x30))) = 0x08CDC9F0;
    if ((*(void **)((s8 *)(arg0) + (0x3C))) != NULL) {
        sub_815FAFC();
        temp_r2_15 = (*(void **)((s8 *)(arg0) + (0x3C)));
        if (temp_r2_15 != NULL) {
            temp_r1_18 = (*(void **)((s8 *)(temp_r2_15) + (0x30)));
            (*(s32 (**)(void *, s32))((s8 *)(temp_r1_18) + (0xC)))(temp_r2_15 + (*(s16 *)((s8 *)(temp_r1_18) + (8))), 3);
        }
    }
    sub_815FB14(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158F28.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
