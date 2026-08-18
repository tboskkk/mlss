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
