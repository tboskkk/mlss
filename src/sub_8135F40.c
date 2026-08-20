#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8135F40 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8135F40.s\"");
#else
u32* sub_8135F40(u32* p0) {
    *(u32*)((u8*)p0 + 0x00) = 0x100;
    *(u32*)((u8*)p0 + 0x04) = 0;
    *(u32*)((u8*)p0 + 0x08) = 0;
    *(u32*)((u8*)p0 + 0x0C) = 0;
    *(u32*)((u8*)p0 + 0x10) = 0;
    *(u32*)((u8*)p0 + 0x14) = 0x100;
    *(u32*)((u8*)p0 + 0x18) = 0;
    *(u32*)((u8*)p0 + 0x1C) = 0;
    *(u32*)((u8*)p0 + 0x20) = 0;
    *(u32*)((u8*)p0 + 0x24) = 0;
    *(u32*)((u8*)p0 + 0x28) = 0x100;
    *(u32*)((u8*)p0 + 0x2C) = 0;
    *(u32*)((u8*)p0 + 0x30) = 0;
    *(u32*)((u8*)p0 + 0x34) = 0;
    *(u32*)((u8*)p0 + 0x38) = 0;
    *(u32*)((u8*)p0 + 0x3C) = 0x100;
    return p0;
}
#endif
