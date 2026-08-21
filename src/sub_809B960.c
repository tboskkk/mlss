#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809B960 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B960.s\"");
#else
extern void sub_809BA44();

void sub_809B960(void* p0) {
    u32* ptr = (u32*)((u8*)p0 + 0x14);
    *ptr += 0x100;
    *(u32*)((u8*)p0 + 0x18) = 0x2600;
    u32* ptr2 = (u32*)((u8*)p0 + 0x28);
    u16 val = *(s16*)((u8*)*ptr2 + 0xF6);
    if (val != 0) {
        u32* ptr3 = (u32*)0x03001038;
        u32* ptr4 = (u32*)0x0819832C;
        u32* ptr5 = (u32*)0x08198220;
        u32 diff = *ptr4 - *ptr5;
        u32* ptr6 = (u32*)((u8*)*ptr3 + diff);
        void (*func)(void) = (void (*)(void))(*ptr6);
        func();
        *(u16*)((u8*)p0 + 0x7A) = 0;
        *(u16*)((u8*)p0 + 0x7E) = 0;
        u8* ptr7 = (u8*)p0 + 0x79;
        *(u8*)ptr7 &= 0xDF;
    }
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_809BA44;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B9CC.s\"");
#else
#error "TODO: write sub_809B9CC to match asm/nonmatching/sub_809B9CC.s, then delete this #error"
#endif
