#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8048040 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8048040(void* p0, u32 p1)
{
    u32* ptr = (u32*)((u8*)p0 + 0x338);
    *ptr = 0x08CDBDE8;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8048064.s\"");
#else
s32 init_fobj_803FEB8();                        /* extern */

void *sub_8048064(void *arg0) {
    init_fobj_803FEB8();
    (*(s32 *)((s8 *)(arg0) + (0x338))) = 0x08CDBE88;
    (*(s8 *)((s8 *)(arg0) + (0x355))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x33C))) | 0x7F);
    (*(u8 *)((s8 *)(arg0) + (0x33D))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x33D))) | 0x7F);
    (*(s8 *)((s8 *)(arg0) + (0x33E))) = 0xFF;
    (*(s8 *)((s8 *)(arg0) + (0x346))) = 0xE;
    (*(s8 *)((s8 *)(arg0) + (0x347))) = 7;
    (*(s8 *)((s8 *)(arg0) + (0x340))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x351))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x351))));
    (*(u8 *)((s8 *)(arg0) + (0x358))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x358))));
    (*(u8 *)((s8 *)(arg0) + (0x358))) = (s16) (0xFFFFF00F & (u16) (*(u8 *)((s8 *)(arg0) + (0x358))));
    (*(u8 *)((s8 *)(arg0) + (0x359))) = (u8) (-0x11 & (*(u8 *)((s8 *)(arg0) + (0x359))));
    (*(u8 *)((s8 *)(arg0) + (0x352))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x352))) & ~2 & ~4 & ~8 & ~0x10 & ~0x20);
    (*(u8 *)((s8 *)(arg0) + (0x211))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x211))) | 1);
    (*(u8 *)((s8 *)(arg0) + (0x210))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x210))) | 0x80);
    (*(u8 *)((s8 *)(arg0) + (0x353))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x353))) | 8);
    (*(s32 *)((s8 *)(arg0) + (0x36C))) = 0;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8048174.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
