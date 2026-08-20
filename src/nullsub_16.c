#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_16 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_16(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018B78.s\"");
#else
extern void nullsub_16();

void sub_8018B78(u32 r0, u32 r1) {
    u32 r3 = r0;
    u32 r2 = r1;
    
    if (r2 == 0) {
        r2 = (u32)nullsub_16;
    }
    
    *(u16*)0x04000208 = 0;
    
    if (r3 == 2) {
        *(u32*)0x0300034C = 0x000008C4;
        *(u32**)0x03000014 = (u32*)r2;
    } else {
        u32* r1_ptr = (u32*)0x03000014;
        u32 offset = r3 * 4;
        *(u32*)(r1_ptr + offset) = r2;
    }
    
    *(u16*)0x04000208 = 1;
}
#endif
