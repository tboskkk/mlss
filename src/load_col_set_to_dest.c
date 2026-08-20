#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// load_col_set_to_dest needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/load_col_set_to_dest.s\"");
#else
extern void col_set_ptr_table();

void load_col_set_to_dest(u8* dest) {
    u8* src;
    u32* ptr;
    u8 temp;
    u32 i;

    src = (u8*)0x03000DD0;
    temp = *(src + 0x06);
    ptr = (u32*)((u8*)col_set_ptr_table + (temp << 2));
    i = 0;
    src = dest + 0xA0;
    do {
        *(u32*)((u8*)ptr + i) = *(u32*)((u8*)src + i);
        i += 4;
    } while (i <= 0xFF);
}
#endif
