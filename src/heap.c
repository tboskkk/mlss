#include "global.h"
#include "common.h"
#include "heap.h"

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_heap.s\"");
#else
#error "TODO: write init_heap to match asm/nonmatching/init_heap.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/free_heap_memory_8018C68.s\"");
#else
#error "TODO: write free_heap_memory_8018C68 to match asm/nonmatching/free_heap_memory_8018C68.s, then delete this #error"
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
