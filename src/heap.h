#ifndef HEAP_H
#define HEAP_H

// Explicit free-list heap allocator. Each block (free or allocated) is
// prefixed by this 0x10-byte header; sizeAndFlags packs the block's size
// (always a multiple of 4) in the high bits and a "is this block free"
// flag in bit 0 -- kept as a raw u32 (not bitfields) so the mask/shift
// ops below line up 1:1 with the original hand-written asm.
struct HeapBlock {
    struct HeapBlock* prev;
    struct HeapBlock* next;
    u32 sizeAndFlags;
    char label[4];
};

#define HEAP_BLOCK_FREE 1
#define HEAP_HEADER_SIZE 0x10

#endif
