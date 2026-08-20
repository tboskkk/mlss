#ifndef GLOBAL_H
#define GLOBAL_H

#include "gba/gba.h"
#include "buffer_io_reg.h"
// Typedefs/macros used by m2c-generated seed C (tools/factory/m2c_bridge.py).
// Pure typedefs and macros -- emits no code, so it cannot affect the built
// ROM; verified byte-identical after adding. Included globally rather than
// per-candidate so a generated function needs no preamble of its own.
#include "m2c_macros.h"

// Figure out if we need these defines later.
// #define OFFSET_OF(type, element) ((int)&(((type *)0)->element))
// #define GET_PROCESS_PARENT(type, proc) (type*)(((unsigned char*)proc) - OFFSET_OF(type, process))

#define COPY_LABEL(dest, src)                                                                          \
    do {                                                                                               \
        dest[0] = src[0];                                                                              \
        dest[1] = src[1];                                                                              \
        dest[2] = src[2];                                                                              \
        dest[3] = src[3];                                                                              \
    } while (0)

// To help with decompiling.
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) __asm__(".syntax unified\n" x "\n.syntax divided")
#define NAKED          __attribute__((naked))

#endif