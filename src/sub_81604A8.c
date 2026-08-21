#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81604A8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81604A8.s\"");
#else
void sub_81604A8(u32 r0, u16 r1, u16 r2)
{
    u16 temp;
    u32 *ptr;

    temp = r2 & 0x3FF;
    temp -= 0xA5;
    if (temp <= 0x4D)
    {
        ptr = (u32*)0x081604D0;
        ptr += temp;
        ((void(*)())(*ptr))();
    }
    else
    {
        u8 *sp = (u8*)(__builtin_frame_address(0) - 4);
        sp[1] &= 0xF0;
        sp[0] = 0x20;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81606C8.s\"");
#else
#error "TODO: write sub_81606C8 to match asm/nonmatching/sub_81606C8.s, then delete this #error"
#endif
