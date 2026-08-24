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

// sa2/tmc-style convention (see CLAUDE.md's "NONMATCHING convention"
// section): a broken draft fails the SHIPPING build immediately instead of
// silently poisoning every sibling in the translation unit the way the old
// `#ifndef NONMATCHING` guard does. Inert until a file actually uses it.
#ifdef NON_MATCHING
#define ASM_FUNC(path, decl) decl
#else
#define ASM_FUNC(path, decl) \
    NAKED decl { asm_unified(".include \"" path "\""); }
#endif

#ifdef NON_MATCHING
#define NONMATCH(path, decl) decl
#define END_NONMATCH
#else
#define NONMATCH(path, decl)                        \
    NAKED decl {                                     \
        asm_unified(".include \"" path "\"");        \
        if (0)
#define END_NONMATCH }
#endif

#endif