#include "global.h"
#include "common.h"
#include "heap.h"

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_heap.s\"");
#else
void init_heap(void)
{
    u32 *r4;
    u32 *r5;
    u32 *r6;
    u8 *r0;
    u32 r1;
    u32 r2;
    u32 r3;
    u8 r8;
    u8 r9;

    r9 = 0;
    r4 = (u32 *)0x03001BD8;
    r5 = (u32 *)0x080000F4;
    r6 = r4 + 0x80 * 4 / 4;
    r2 = r5[0] - r6;
    r2 = (r2 << 9) >> 11;
    r2 |= 0xA0 << 19;
    r0 = (u8 *)r4;
    r1 = (u32)r4;
    CpuSet(r0, r1, r2);
    r4[0] = r9;
    r4[1] = r9;
    r0 = (u8 *)(r5[0] - r6);
    r0[0] = 1 | r0[0];
    r4[2] = (u32)r0;
    r0 = (u8 *)0x081DD7C8;
    r1 = r0[0];
    r8 = r1;
    r4[3] = (u32)r1;
    r1 = r0[1];
    r4[4] = (u32)r1;
    r1 = r0[2];
    r4[5] = (u32)r1;
    r1 = r0[3];
    r4[6] = (u32)r1;
    r0 = (u8 *)r9;
    r4[7] = (u32)r0;
    r4 = (u32 *)0x02000C80;
    r2 = 0x0500FCDE;
    r0 = (u8 *)r4;
    r1 = (u32)r4;
    CpuSet(r0, r1, r2);
    r4[0] = r9;
    r4[1] = r9;
    r4[2] = 0x0003F379;
    r0 = (u8 *)0x02000C8C;
    r0[0] = r8;
    r0[1] = r4[7];
    r0[2] = r4[5];
    r0[3] = r4[6];
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/free_heap_memory_8018C68.s\"");
#else
void free_heap_memory_8018C68(u32* a0)
{
    u32* r4;
    u32* r5;
    u32* r6;
    u32* r0;
    u32 r1;
    u32 r2;
    u32 r7;
    
    if (a0 == 0)
        return;
        
    r4 = a0 - 4;
    r6 = *(u32**)(r4 + 0);
    r5 = *(u32**)(r4 + 1);
    r0 = *(u32**)(r4 + 2);
    r7 = 1;
    *r0 |= r7;
    
    r1 = a0 - 1;
    r2 = 0x081DD7C8;
    *(u8*)(r1) = *(u8*)(r2);
    r1--;
    *(u8*)(r1) = *(u8*)(r2 + 1);
    r1--;
    *(u8*)(r1) = *(u8*)(r2 + 2);
    r1--;
    *(u8*)(r1) = *(u8*)(r2 + 3);
    
    if (r5 == 0)
        return;
        
    r1 = *(u32**)(r5 + 2);
    r0 = r1 & r7;
    if (r0 == 0)
        return;
        
    r0 = -2;
    r1 &= r0;
    *r0 = *r4 + r1;
    *(u32**)(r4 + 1) = *(u32**)(r5 + 1);
    r0 = *(u32**)(r5 + 1);
    if (r0 == 0)
        return;
        
    *(u32**)(r0) = r4;
    
    if (r6 == 0)
        return;
        
    r0 = *(u32**)(r6 + 2);
    r1 = 0x02;
    r1 = -r1;
    r0 &= r1;
    *r0 = r0 + *(u32**)(r4 + 2);
    *(u32**)(r6 + 1) = *(u32**)(r4 + 1);
    r0 = *(u32**)(r4 + 1);
    if (r0 == 0)
        return;
        
    *(u32**)(r0) = r6;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/alloc_heap_8018CEC.s\"");
#else
void* alloc_heap_8018CEC(bool32 heapId, u32 size, char* tag) {
    u8* new_var;
    struct HeapBlock* block;
    struct HeapBlock* newBlock;
    u32 pureSize;
    void* ret;
    char* label;

    if (size == 0) {
        return NULL;
    }

    block = (struct HeapBlock*)0x02000C80;
    if (heapId == 0) {
        block = (struct HeapBlock*)0x03001BD8;
    }

    size = (size + 3) & ~3;

    // The nested do-while(0) here (and around the "FREE" tag copy below) is
    // not idiomatic, but it's load-bearing for matching: agbcc's register
    // allocator produces measurably different (worse) code without this
    // exact block scoping, even though it's a behavioral no-op. Confirmed
    // via asm-differ against the retail .o -- don't "clean this up".
    do {
        do {
            if ((block->sizeAndFlags & HEAP_BLOCK_FREE) && block->sizeAndFlags >= size + HEAP_HEADER_SIZE) {
                pureSize = block->sizeAndFlags & ~HEAP_BLOCK_FREE;

                if (pureSize > size + 0x20) {
                    newBlock = (struct HeapBlock*)((u8*)block + size + HEAP_HEADER_SIZE);
                    newBlock->sizeAndFlags = (pureSize - HEAP_HEADER_SIZE - size) | HEAP_BLOCK_FREE;
                    newBlock->prev = block;
                    new_var = (u8*)block;
                    newBlock->next = block->next;
                    label = block->label;
                    ret = new_var + HEAP_HEADER_SIZE;
                    do {
                        new_var = str_FREE_81DD7C8;
                        newBlock->label[0] = str_FREE_81DD7C8[0];
                        newBlock->label[1] = str_FREE_81DD7C8[1];
                        newBlock->label[2] = new_var[2];
                        newBlock->label[3] = str_FREE_81DD7C8[3];
                    } while (0);

                    if (newBlock->next != NULL) {
                        newBlock->next->prev = newBlock;
                    }

                    block->sizeAndFlags = size + HEAP_HEADER_SIZE;
                    block->next = newBlock;
                } else {
                    block->sizeAndFlags = pureSize;
                    label = block->label;
                    ret = (u8*)block + HEAP_HEADER_SIZE;
                }

                COPY_LABEL(label, tag);
                return ret;
            }
            block = block->next;
        } while (0);
    } while (block != NULL);

    return NULL;
}
#endif

void free_heap_8018D9C(void* ptr) {
    free_heap_memory_8018C68(ptr);
}

void free_heap_8018DA8(void* ptr) {
    free_heap_memory_8018C68(ptr);
}

// The overnight autopilot's C attempt here had two compounding bugs, found
// by re-deriving the true parameter order straight from the assembly
// rather than trusting the existing (plausible-looking, wrong) attempt:
// param order was actually (size, heapId, tag, clear), not (heapId, clear,
// tag, size) -- the retail code shuffles r0/r1 before calling
// alloc_heap_8018CEC specifically to swap this function's own (size,
// heapId) into that callee's (heapId, size) order, which is easy to
// misread as "this function's params are already in callee order" if you
// don't trace the register moves carefully. That single swap cascaded:
// the old attempt used the shift-computed word-count value as CpuSet's
// SOURCE POINTER (cast an integer to void*) instead of a real address, and
// used the wrong local variable (heapId instead of size) in the shift
// itself. Per the assembly: source is &local zero-initialized u32 (mov r0,
// sp after storing 0 there), not a bit-mangled pointer.
void* alloc_zero_8018DB4(u32 size, bool32 heapId, char* tag, u8 clear) {
    // Unused, but load-bearing for matching: declaring it here (before
    // alloc_heap_8018CEC's call) is what gets agbcc's register allocator to
    // assign r5/r6 the same way retail does (size in r5, ptr in r6) --
    // without it they land swapped. Confirmed via decomp-permuter search,
    // not guessed; same category of "not idiomatic but load-bearing" quirk
    // documented on alloc_heap_8018CEC just above.
    int unused;
    void* ptr = alloc_heap_8018CEC(heapId, size, tag);

    if (clear) {
        u32 zero = 0;
        unused = 19;
        CpuSet(&zero, ptr, ((size << 9) >> 11) | (0xA0 << unused));
    }

    return ptr;
}

// Same fix as alloc_zero_8018DB4 immediately above -- this is a byte-for-
// byte identical sibling function in the retail binary (adjacent address,
// same instruction sequence), so the same parameter-order/CpuSet-argument
// bug applied here too. Verified independently against this function's
// own asm/nonmatching/alloc_Zero.s rather than assumed from the sibling.
void* alloc_Zero(u32 size, bool32 heapId, char* tag, u8 clear) {
    // See alloc_zero_8018DB4's identical comment above -- same load-bearing
    // register-allocation nudge, confirmed independently for this function.
    int unused;
    void* ptr = alloc_heap_8018CEC(heapId, size, tag);

    if (clear) {
        u32 zero = 0;
        unused = 19;
        CpuSet(&zero, ptr, ((size << 9) >> 11) | (0xA0 << unused));
    }

    return ptr;
}
