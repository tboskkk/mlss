#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114380 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114380.s\"");
#else
extern void sub_8114680();

void sub_8114380(void* p0) {
    u32* r3;
    u32* r0;
    u32* r1;
    u32* r2;
    s16 r4;
    
    r3 = (u32*)((u8*)p0 + 0x00);
    r0 = (u32*)((u8*)p0 + 0x9C);
    r0 = *(u32**)r0;
    if (r0 == NULL) {
        goto _081143AC;
    }
    
    r2 = (u32*)0x03000FD8;
    r1 = *(u32**)r2;
    r0 = *(u32**)((u8*)p0 + 0x2C);
    r0 = *(u32**)((u8*)r0 + 0x28);
    r0 = (u32*)((u8*)r0 + 0xEC);
    r4 = *(s16*)((u8*)r0 + 0x00);
    r0 = (u32*)((u8*)r0 + 0x02);
    r0 = (u32*)((u8*)r0 + ((u32)r4 << 2));
    r1 = (u32*)((u8*)r1 + 0x80);
    r1 = (u32*)((u8*)r1 + (u32)r0);
    r0 = *(u32**)r1;
    r0 = (u32*)((u8*)r0 + 0x08);
    
_081143AC:
    *(u32*)((u8*)p0 + 0x2C) = r0;
    *(u32*)((u8*)p0 + 0x4C) = (u32)0x081141F5;
    
    r0 = *(u32**)r2;
    r2 = *(u32**)((u8*)r0 + 0x58);
    r1 = (u32*)0x00000113;
    r1 = (u32*)((u8*)r2 + (u32)r1);
    *(u8*)((u8*)r1 + 0x00) = 0x03;
    
    r0 = *(u32*)((u8*)p0 + 0x2C);
    *(u32*)((u8*)r2 + 0x34) = r0;
    
    r1 = (u32*)((u8*)r2 + 0xA4);
    r0 = (u32*)((u8*)p0 + 0x9C);
    r0 = *(u32**)r0;
    *(u32*)((u8*)r1 + 0x00) = r0;
    
    r1 = (u32*)((u8*)r1 + 0x04);
    r0 = (u32*)((u8*)p0 + 0xA0);
    r0 = *(u32**)r0;
    *(u32*)((u8*)r1 + 0x00) = r0;
    
    r1 = (u32*)((u8*)r1 + 0x04);
    r0 = (u32*)((u8*)p0 + 0xA4);
    r0 = *(u32**)r0;
    *(u32*)((u8*)r1 + 0x00) = r0;
    
    *(u32*)((u8*)r2 + 0x54) = (u32)sub_8114680;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114404.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811448C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81144CC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114528.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
