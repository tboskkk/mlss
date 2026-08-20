#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// stage_room_solidity_grid needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/stage_room_solidity_grid.s\"");
#else
extern void solidity_grid_offset_table();
extern void room_solidity_index_table();

void stage_room_solidity_grid(void* p0)
{
    u16* r2 = (u16*)((u8*)p0 + 0x1E);
    u16* r1 = (u16*)((u8*)p0 + 0x26);
    u16* r0 = (u16*)((u8*)p0 + 0x28);
    u16* r3 = (u16*)((u8*)p0 + 0x1E);
    u16* r4 = (u16*)((u8*)p0 + 0x26);
    u16* r5 = (u16*)((u8*)p0 + 0x28);
    u16* r6 = (u16*)((u8*)p0 + 0x1E);
    u16* r7 = (u16*)((u8*)p0 + 0x26);
    u16* r8 = (u16*)((u8*)p0 + 0x28);
    u16* r9 = (u16*)((u8*)p0 + 0x1E);
    u16* r10 = (u16*)((u8*)p0 + 0x26);
    u16* r11 = (u16*)((u8*)p0 + 0x28);
    u16* r12 = (u16*)((u8*)p0 + 0x1E);
    u16* r13 = (u16*)((u8*)p0 + 0x26);
    u16* r14 = (u16*)((u8*)p0 + 0x28);
    u16* r15 = (u16*)((u8*)p0 + 0x1E);
    u16* r16 = (u16*)((u8*)p0 + 0x26);
    u16* r17 = (u16*)((u8*)p0 + 0x28);
    u16* r18 = (u16*)((u8*)p0 + 0x1E);
    u16* r19 = (u16*)((u8*)p0 + 0x26);
    u16* r20 = (u16*)((u8*)p0 + 0x28);
    u16* r21 = (u16*)((u8*)p0 + 0x1E);
    u16* r22 = (u16*)((u8*)p0 + 0x26);
    u16* r23 = (u16*)((u8*)p0 + 0x28);
    u16* r24 = (u16*)((u8*)p0 + 0x1E);
    u16* r25 = (u16*)((u8*)p0 + 0x26);
    u16* r26 = (u16*)((u8*)p0 + 0x28);
    u16* r27 = (u16*)((u8*)p0 + 0x1E);
    u16* r28 = (u16*)((u8*)p0 + 0x26);
    u16* r29 = (u16*)((u8*)p0 + 0x28);
    u16* r30 = (u16*)((u8*)p0 + 0x1E);
    u16* r31 = (u16*)((u8*)p0 + 0x26);
    u16* r32 = (u16*)((u8*)p0 + 0x28);
    u16* r33 = (u16*)((u8*)p0 + 0x1E);
    u16* r34 = (u16*)((u8*)p0 + 0x26);
    u16* r35 = (u16*)((u8*)p0 + 0x28);
    u16* r36 = (u16*)((u8*)p0 + 0x1E);
    u16* r37 = (u16*)((u8*)p0 + 0x26);
    u16* r38 = (u16*)((u8*)
#endif
