#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082158 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082158.s\"");
#else
extern void sub_8080A40();

void sub_8082158(void* p0) {
    void** ptr = (void**)((u8*)p0 + 0x0C);
    u32* r4 = *(u32**)ptr;
    u32* r1 = (u32*)((u8*)r4 + 0x4C);
    if (*r1 == 0) {
        void (*func)(void) = (void (*)(void))*r1;
        func();
        r1 = (u32*)((u8*)r4 + 0x4C);
        if (*r1 != 0) {
            return;
        }
    }
    *(u32*)((u8*)p0 + 0x04) = (u32)&sub_8080A40;
}
#endif
