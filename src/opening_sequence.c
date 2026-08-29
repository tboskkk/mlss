#include "global.h"
#include "common.h"
#include "process.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8054378 needs.

asm_unified(".include \"asm/macros.inc\"");

// A 0x10-byte record used by sub_8054378 to look up per-"variant" sprite
// and text placement data. Field layout beyond the bytes actually
// touched by this function (field_4, field_A, field_C) is unconfirmed.
struct OpeningTableEntry {
    u8 pad_0[4];
    u16 field_4;
    u8 pad_6[4];
    u8 field_A;
    u8 pad_B[1];
    int* field_C;
    u8 pad_10[2];
};

extern struct OpeningTableEntry* dword_84F4740[];

extern u32 dword_3000D40;
extern int dword_84E8A3C;

// Referenced only for their addresses (size-of-a-blob-via-label-
// subtraction, same idiom option_screens.c's optn_init already uses for
// the same "BBWF" buffer). Not real functions from this TU's point of
// view.
extern u8 sub_8198784[];
extern u8 sub_819941C[];

// Guessed prototypes for not-yet-declared-elsewhere functions this
// function calls. Argument counts/types inferred from call sites only.
bool32 sub_81251F0(void);
int* sub_8127ECC(int, int);
void sub_81229F0(void*);
void sub_8021574(int, int, int, int, int, void*, int);
int sub_8123308(int);
void sub_81994EC(void*, void*);
void sub_8019628(int);
void sub_8022554(struct Process*, int);
void sub_8123340(void);

// New struct for this subsystem - shares the "process_add + definition
// table" idiom with COMPProcess/OPTNProcess/MarioBrosScoreVisual, and
// (field_0x28/field_0x2C in particular) the "BBWF decompressed data +
// BBWI text-render-context" pattern from optn_init, but is not literally
// either of those types. Field names are offset-based placeholders.
struct OpeningProcess {
    struct Process process;
};

/**
 * NOT CONFIRMED MATCHING - a best-effort structural translation, not a
 * byte-verified decompilation. The overall shape (field offsets, call
 * arguments, control flow) is traced from the raw disassembly with
 * reasonable confidence by cross-referencing optn_init/comp_init/
 * mbsv_init's already-matched idioms (process_add + ProcessDefinition
 * table assignment; BBWF/BBWI/BWCW-style canvas allocation), but the
 * exact statement/temp-variable shape needed for byte-identical agbcc
 * codegen has not been iterated on with asm-differ. Left as real
 * in-progress work (guard intact) rather than a placeholder #error.
 */
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8054378.s\"");
#else
struct OpeningProcess* sub_8054378(struct OpeningProcess* self_, u8 priority, char* label, u8 variant) {
    struct OpeningTableEntry* table;
    struct Process* opdr;
    void* cgdw;
    int* v5;
    int i;
    struct OpeningTableEntry* rec;
    int textPos;
    u8* field_20;
    u8* field_24;
    u8* field_28;
    struct struc_15* field_2C;
    struct Sprite* field_44;
    struct Sprite* field_48[4];
    struct Sprite* field_58[4];
    void* field_40;
    u8 field_34, field_35, field_36, field_37, field_38;
    u8 field_39[4];

    process_add(&self_->process, priority, label);
    self_->process.definition = (struct ProcessDefinition*)0x08CDC218;

    *(vu16*)0x02000050 = 0xFF;
    *(vu16*)0x02000054 = 0x10;
    *(vu16*)0x02000000 = 0;
    sub_8017E34();

    table = dword_84F4740[variant];

    *(u8*)0x03000BD5 &= ~1;

    field_34 = sub_81251F0() & 1;
    if (field_34 & 1) {
        field_40 = (void*)((u8*)dword_3000FFC + ((dword_3000D40 >> 2) & 3) * 1784 + 0x14);
    } else {
        field_40 = NULL;
    }

    field_35 = variant;
    field_37 = !(field_34 & 1);

    field_38 = 1;
    while (!(table[field_38 - 1].field_A & 2)) {
        field_38++;
    }

    field_36 = field_37;
    field_34 |= 2 * field_37;

    cgdw = alloc_Zero(0x1C, 0, (char*)table, 0);
    opdr = process_add((struct Process*)cgdw, 8, (char*)table);
    opdr->definition = (struct ProcessDefinition*)0x08CDC228;
    opdr->parentProcess = &self_->process;

    cgdw = alloc_zero_8018DB4(0x8000, 1, (char*)0x081E2744, 0);

    v5 = sub_8127ECC(0x25, 0);
    dword_3000C84((int*)v5, cgdw);
    CpuFastSet(cgdw, (void*)0x06004000, (sub_80198B0(v5) >> 2) & 0x1FFFFF);

    v5 = sub_8127ECC(0x2D, 0);
    dword_3000C84((int*)v5, cgdw);
    CpuFastSet(cgdw, (void*)0x0600C800, (sub_80198B0(v5) >> 2) & 0x1FFFFF);

    v5 = sub_8127ECC((*(u8*)0x03000BD4 & 6) ? 0x2C : 0x2B, 0);
    CpuFastSet(v5, (void*)0x02000080, (sub_80198B0(v5) >> 2) & 0x1FFFFF);
    *(vu16*)0x0300034E = 0xFFFF;

    v5 = sub_8127ECC(0x83A297C, 0);
    dword_3000C84((int*)v5, cgdw);
    CpuFastSet(cgdw, (void*)0x06010000, (sub_80198B0(v5) >> 2) & 0x1FFFFF);

    v5 = sub_8127ECC(6, 0);
    dword_3000C84((int*)v5, cgdw);
    sub_81229F0(cgdw);
    CpuFastSet(cgdw, (void*)0x06010400, (sub_80198B0(v5) >> 2) & 0x1FFFFF);

    dword_3000C78 = 0;
    if (cgdw) {
        free_heap_8018D9C(cgdw);
    }

    sub_8020994(0x4000, 0, 0, 0);
    sub_8021574(5, 0x6003, 0, 0, 0, field_39, -1);
    sub_8021574(5, 0x6002, 0, 0, 0, field_39, -1);
    sub_8020DD0(5, 0x6005, 1, -1, -1, -1, -1);

    field_44 = sub_8020DD0(5, 0x6005, 1, -1, -1, -1, -1);
    sub_801E150(field_44, 0, -1, 0, 0);
    sprite_show_8020CBC(field_44);
    field_44->xPosition = 0x20;
    field_44->yPosition = field_36 * 28 + 0x31;

    for (i = 0; i < 4; i++) {
        field_48[i] = sub_8020DD0(0, 0x1002 - (i == 0), 1, -1, -1, -1, -1);
        sub_801E150(field_48[i], 0, -1, 0, 0);
        field_39[i] = 0;
    }

    sprite_show_8020CBC(field_48[(field_34 >> 1) & 1]);
    sprite_show_8020CBC(field_48[((field_34 & 2) ? 1 : 0) + 1]);

    for (i = 0; i < 4; i++) {
        field_58[i] = sub_8020DD0(5, 0x6005, 1, -1, -1, -1, -1);
        sub_801E150(field_58[i], i + 3, -1, 0, 0);
        sprite_show_8020CBC(field_58[i]);
        field_58[i]->xPosition = 0;
        field_58[i]->yPosition = 0;
        field_58[i]->field_12_4 = 1;
    }

    cgdw = alloc_zero_8018DB4(sub_819941C - sub_8198784, 0, (char*)0x081E274C, 1);
    field_28 = cgdw;
    sub_81994EC(field_28, (void*)0x0851F9E8);

    field_2C = alloc_Zero(0x14, 0, (char*)0x081E2754, 1);

    field_20 = alloc_zero_8018DB4(0x201F, 1, (char*)0x081E275C, 1);
    field_24 = (u8*)(((int)field_20 + 0x1F) & ~0x1F);

    sub_8199D78(field_2C, field_24, 0x10, 0x20, 0, 0, 1, 2, 5, 0);

    if (field_37) {
        v5 = (int*)(dword_84E8A3C + 2);
        sub_8199D5C(field_2C, 0, 0x2B, (int)v5);
        do {
            u8* p = (u8*)field_2C->field_8;
            if (p[0] == 0xFF && p[1] == 0x0B && p[2] == 0x01) {
                field_2C->field_8 = (u8*)(p + 3);
            }
        } while (sub_8199624(field_2C) != 0);
    }

    textPos = 0x45;
    rec = table;
    for (;;) {
        v5 = (int*)(*rec->field_C + 2);
        sub_8199D5C(field_2C, 0, (u8)textPos, (int)v5);
        do {
            u8* p = (u8*)field_2C->field_8;
            if (p[0] == 0xFF && p[1] == 0x0B && p[2] == 0x01) {
                field_2C->field_8 = (u8*)(p + 3);
            }
        } while (sub_8199624(field_2C) != 0);

        if (rec->field_A & 2) {
            break;
        }
        rec++;
        textPos = (u8)(textPos + 0x1A);
    }

    CpuFastSet(field_24, (void*)0x06000000, 0x800);
    dword_3001034(0, (void**)field_24, 0x1800);

    sub_8199D78(field_2C, field_24, 0x20, 0x20, 0, 0, 1, field_38, 0x0B, 3);

    if (field_37) {
        v5 = (int*)sub_8123308(0);
        sub_8199D5C(field_2C, 0, 0, (int)v5);
        do {
            u8* p = (u8*)field_2C->field_8;
            if (p[0] == 0xFF) {
                if (p[1] == 0) {
                    field_2C->field_8 = (u8*)(p + 2);
                } else if (p[1] == 0x0B && p[2] == 0x01) {
                    field_2C->field_8 = (u8*)(p + 3);
                }
            }
        } while (sub_8199624(field_2C) != 0);
    }

    for (i = 0; i < field_38; i++) {
        v5 = (int*)sub_8123308((table[i].field_4 >> 6) & 0x1FF);
        sub_8199D5C(field_2C, 0, (u8)(i + 1), (int)v5);
        do {
            u8* p = (u8*)field_2C->field_8;
            if (p[0] == 0xFF) {
                if (p[1] == 0) {
                    field_2C->field_8 = (u8*)(p + 2);
                } else if (p[1] == 0x0B && p[2] == 0x01) {
                    field_2C->field_8 = (u8*)(p + 3);
                }
            }
        } while (sub_8199624(field_2C) != 0);
    }

    CpuFastSet(field_24, (void*)0x06002000, 0x600);
    dword_3001034(0, (void**)field_20, 0x400);

    {
        u16* dst = (u16*)field_20;
        u16 v = 0xE000;
        int row;

        for (row = 0; row < 16; row++) {
            int col;
            for (col = 0; col < 16; col++) {
                *dst++ = v++;
            }
            dst += 0x10;
        }
    }

    CpuFastSet(field_20, (void*)0x0600C000, 0x200);

    {
        u16* dst = (u16*)field_20;
        u16 v = 0xE100;
        int row;

        for (row = 0; row < 6; row++) {
            int col;
            for (col = 0; col < 16; col++) {
                *dst++ = v++;
            }
        }
    }

    CpuFastSet(field_20, (u8*)0x0600C400 + (((s8)field_36) << 7), 0x20);

    dword_3000C78 = (void*)0x0800063C;

    if (*(u8*)0x03000BD4 & 6) {
        CpuFastSet((void*)0x083A2B18, (void*)0x02000400, 8);
    } else {
        CpuFastSet((void*)0x083A2AF8, (void*)0x02000400, 8);
    }

    *(vu16*)0x0300034C = 0xFFFF;
    *(vu16*)0x02000080 = 0;
    *(vu16*)0x0300034E |= 1;
    *(vu16*)0x02000050 = 0xFF;
    *(vu16*)0x02000054 = 0x10;
    *(vu16*)0x02000008 = 0x1802;
    *(vu16*)0x0200000A = 0x1906;
    *(vu16*)0x02000014 = *(vu16*)0x02000018;
    *(vu16*)0x02000018 = *(vu16*)0x0200001C;

    sub_8019308(1, 0x1E, -1);
    *(vu16*)0x0200E2C0 = 0x71C0;

    return self_;
}
#endif

/**
 * NOT CONFIRMED MATCHING. The update/state-machine companion to
 * sub_8054378 (switches on self->process.state, same shape as
 * comp_update/optn_update). Cases 0-2 are traced instruction-by-
 * instruction against a raw objdump of the real bytes and are high
 * confidence; the teardown sequence in cases 3/4 closely mirrors the
 * already-matched sub_8057458/sub_805737C idiom (definition reset +
 * conditional process_remove/free_heap + sub_8021FD4 + process_remove)
 * and is also high confidence. The "still counting down" shared tail
 * reached by both case 3 and case 4 before their countdown hits zero
 * (a single physical block the compiler tail-merged, reached by two
 * different branches) is a lower-confidence guess - the "16 - counter"
 * computation is clear from the bytes, but which hardware register it
 * writes to, and the very last few instructions of case 4's completion
 * path (looks like a BgAffineSrcData/BgAffineDstData field copy) were
 * not fully resolved by hand-disassembly in the time available.
 */
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8054D70.s\"");
#else
void sub_8054D70(struct OpeningProcess* self_) {
    u8* self = (u8*)self_;
#define S_STATE  self_->process.state
#define S_1C     (*(u16*)(self + 0x1C))
#define S_20     (*(void**)(self + 0x20))
#define S_28     (*(void**)(self + 0x28))
#define S_2C     (*(void**)(self + 0x2C))
#define S_30     (*(struct Process**)(self + 0x30))
#define S_34     (*(u8*)(self + 0x34))
#define S_36     (*(s8*)(self + 0x36))
#define S_37     (*(u8*)(self + 0x37))
#define S_38     (*(u8*)(self + 0x38))
#define S_48(i)  (((struct Sprite**)(self + 0x48))[i])

    switch (S_STATE) {
        case 0:
            S_STATE = 1;
            break;

        case 1: {
            u8* p = off_839EC80 + 0x54;
            S_1C--;
            *p = (*p & ~0x1F) | (S_1C & 0x1F);
            if (*p & 0x1F) {
                break;
            }
            S_1C = 0x3C;
            S_STATE++;
            break;
        }

        case 2:
            if (gGameState.field_2A & 1) {  /* A_BUTTON */
                S_1C = 0x10;
                sub_80193B4(1, 0, 32);
                play_sfx_80195B4(10, -1);
                S_STATE = S_36 ? 4 : 3;
            } else {
                s8 oldSel = S_36;
                u8 oldBit1;

                if (gGameState.field_2E & DPAD_UP) {
                    S_36--;
                    if (S_36 < S_37) {
                        S_36 = S_38;
                    }
                    play_sfx_80195B4(95, -1);
                } else if (gGameState.field_2E & DPAD_DOWN) {
                    S_36++;
                    if (S_36 > S_38) {
                        S_36 = S_37;
                    }
                    play_sfx_80195B4(95, -1);
                }

                oldBit1 = (S_34 >> 1) & 1;
                S_34 = (S_34 & ~2) | ((S_36 != 0) << 1);
                if (((S_34 >> 1) & 1) != oldBit1) {
                    sprite_show_8020CBC(S_48(oldBit1 * 2));
                    sprite_show_8020CBC(S_48((((S_34 & 2) ? 1 : 0)) + 1));
                    sprite_hide_8021F20(S_48(oldBit1 * 2));
                    sprite_hide_8021F20(S_48(oldBit1 * 2 + 1));
                }

                if (S_36 != oldSel) {
                    /* TODO: not fully resolved - writes something derived
                     * from (S_36 * 128) added to S_20, via sub_8018218
                     * (sub_8018218-style buffer fill?). */
                    sub_8018218((void*)((u8*)S_20 + S_36 * 128), (void*)0, 0, 128, 32);
                }
            }
            break;

        case 3:
            S_1C--;
            if (S_1C != 0) {
                /* Shared "still fading" tail with case 4 - TODO: confirm
                 * exact destination register, and whether anything else
                 * happens before returning without the sub_8021F7C() call
                 * below. */
                *(vu16*)0x04000028 = 16 - S_1C;
                return;
            }
            sub_8019628(1);
            if (self_) {
                self_->process.definition = (struct ProcessDefinition*)0x08CDC218;
                if (S_30) {
                    process_remove(S_30, 3);
                }
                if (S_20) {
                    free_heap_8018D9C(S_20);
                }
                if (S_28) {
                    free_heap_8018D9C(S_28);
                }
                free_heap_8018DA8(S_2C);
                sub_8021FD4();
                process_remove(&self_->process, 3);
            }
            if (self_->process.parentProcess) {
                sub_8022554(self_->process.parentProcess, 3);
            }
            sub_8123340();
            /* TODO: remaining ~40 bytes of case 3 (dword_839EC80+0x50 bit
             * clear, dword_3000D40 bit set, dword_3001034(...) call,
             * sub_81DAA74/sub_80FC198/sub_812335C calls, a compressed-
             * size-via-label-subtraction alloc/decompress) not fully
             * traced by hand - see raw asm/nonmatching/sub_8054D70.s. */
            return;

        case 4:
            S_1C--;
            if (S_1C != 0) {
                *(vu16*)0x04000028 = 16 - S_1C;
                return;
            }
            /* TODO: rest of case 4's completion path (mirrors case 3's
             * teardown, then a BgAffineSrcData/BgAffineDstData-shaped
             * field copy) not fully traced by hand. */
            sub_8019628(1);
            if (self_) {
                self_->process.definition = (struct ProcessDefinition*)0x08CDC218;
                if (S_30) {
                    process_remove(S_30, 3);
                }
                if (S_20) {
                    free_heap_8018D9C(S_20);
                }
                if (S_28) {
                    free_heap_8018D9C(S_28);
                }
                free_heap_8018DA8(S_2C);
                sub_8021FD4();
                process_remove(&self_->process, 3);
            }
            return;
    }

    sub_8021F7C();

#undef S_STATE
#undef S_1C
#undef S_20
#undef S_28
#undef S_2C
#undef S_30
#undef S_34
#undef S_36
#undef S_37
#undef S_38
#undef S_48
}
#endif

extern int loc_8198350();

extern void* dword_3000FF4;
extern void* dword_300370;  // *(0x0300034C + 0x24)

struct AffineParam {
    s16 a, b, c;
    s16 pad;
};

void* sub_8122198(struct AffineParam*, u8, u8, int);
void* sub_8121F1C(void*, int, int, u16);
void* sub_8122098(u8, u8);

/**
 * NOT CONFIRMED MATCHING. A helper for the OpeningProcess subsystem's
 * companion ("opdr"-style) process - self is that companion, a bare
 * struct Process (opdr->parentProcess, set up in sub_8054378, points
 * back to the OpeningProcess). Traced instruction-by-instruction from a
 * raw objdump; the `(dword_3001038 + (&loc_X - &loc_Y))(args)` calls
 * mirror the exact idiom title_screen.c's open_update already uses for
 * the same dword_3001038/loc_8198220/loc_819832C trio, which is what
 * gives this one higher confidence than sub_8054378/sub_8054D70 despite
 * being unverified - but it has not been run through asm-differ.
 */
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805516C.s\"");
#else
void sub_805516C(struct Process* self) {
    struct Process* parent = self->parentProcess;
    int slotOff = 0x88 << 4;
    struct AffineParam* aff = *(struct AffineParam**)(0x0300034C + slotOff);
    u8* base;
    void* r6;
    u8* idxPtr;
    void* r7;
    u8 r4;
    u8 r2;

    aff[0].a = 0x4000;
    aff[0].b = 0x8080;
    aff[0].c = 0xC000;
    aff[1].a = 0x4000;
    aff[1].b = 0x80A0;
    aff[1].c = 0xC008;

    if (!(*(u8*)((u8*)parent + 0x34) & 2)) {
        base = *(u8**)((u8*)parent + 0x40) + 0x1C;
    } else {
        base = dword_3000FF4;
    }

    if (!(*(u8*)((u8*)parent + 0x34) & 2)) {
        r6 = *(void**)(*(u8**)((u8*)parent + 0x40) + 0x6EC);
    } else {
        r6 = dword_300370;
    }

    idxPtr = (u8*)parent + 0x39 + ((*(u8*)((u8*)parent + 0x34) & 2) ? 2 : 0);

    r7 = sub_8122198(aff, base[0x30], base[0x6C], 0);

    r6 = (void*)(dword_3001038 + (&loc_819832C - &loc_8198220))((int)r6, 0xE10);
    r4 = (u8)(int)(dword_3001038 + (&loc_819832C - &loc_8198220))((int)r6, 0x3C);
    r2 = (u8)(int)(dword_3001038 + (&loc_8198350 - &loc_8198220))((int)r6, 0x3C);

    r7 = sub_8121F1C(r7, r4, r2, *(u16*)(base + 0x88));

    sub_8020A78();
    dword_3000D48(stru_203FFB8.field_3C, stru_203FFB8.field_3C + 0xA14);
    r7 = (void*)dword_3000D4C(stru_203FFB8.field_3C, (int)r7);

    r7 = sub_8122098(idxPtr[0], idxPtr[1]);

    *(void**)(0x0300034C + (0x88 << 4)) = r7;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80552DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8055324.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
