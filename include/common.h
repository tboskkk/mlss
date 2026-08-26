#include "global.h"

// Structs
struct ProcessDefinition {
    u32 field_0;
    void (*field_4)(void*);
    s16 offset;
    u16 field_A;
    void (*update)(void*);
};

struct Process {
    u8 state;
    u8 priority;
    s16 flag : 1;
    s16 wait : 1;
    s16 executeMax : 4;
    u16 executeCounter : 4;
    u16 processCount : 6;
    u32 frames;
    char label[4];
    struct Process* previousProcess;
    struct Process* nextProcess;
    struct Process* parentProcess;
    struct ProcessDefinition* definition;
};

struct GameState {
    u16 field_0;
    u16 field_2;

/* The entity/process object nearly every gameplay function takes as arg0.
 * Offsets and access widths are measured, not guessed -- tools/scan_entity.py
 * over 4,151 fragments: +0x00 in 48% of them, +0x08 in 25%, +0x4C in 22%
 * (98% word-width), +0x12 and +0x7E byte-width, +0xAC half-width.
 * Gaps are padding rather than invented names; only fields the scan is
 * confident about are named. */
struct Entity {
/* 0x00 */ s32 unk00;
/* 0x04 */ s32 unk04;
/* 0x08 */ void *unk08;
/* 0x0C */ s32 unk0C;
/* 0x10 */ u8  unk10;
/* 0x11 */ u8  unk11;
/* 0x12 */ u8  unk12;
/* 0x13 */ u8  unk13;
/* 0x14 */ s32 unk14;
/* 0x18 */ s32 unk18;
/* 0x1C */ u8  pad1C[0x04];
/* 0x20 */ s32 unk20;
/* 0x24 */ u8  unk24;
/* 0x25 */ u8  pad25[0x03];
/* 0x28 */ s32 unk28;
/* 0x2C */ s32 unk2C;
/* 0x30 */ s32 unk30;
/* 0x34 */ s32 unk34;
/* 0x38 */ s32 unk38;
/* 0x3C */ s32 unk3C;
/* 0x40 */ s32 unk40;
/* 0x44 */ u8  pad44[0x08];
/* 0x4C */ s32 *handler;
/* 0x50 */ u8  pad50[0x24];
/* 0x74 */ s32 unk74;
/* 0x78 */ u8  pad78[0x06];
/* 0x7E */ u8  unk7E;
/* 0x7F */ u8  pad7F[0x01];
/* 0x80 */ u8  pad80[0x04];
/* 0x84 */ s32 unk84;
/* 0x88 */ s32 unk88;
/* 0x8C */ s32 unk8C;
/* 0x90 */ u8  pad90[0x0C];
/* 0x9C */ s32 unk9C;
/* 0xA0 */ u8  padA0[0x08];
/* 0xA8 */ s32 unkA8;
/* 0xAC */ u16 unkAC;
/* 0xAE */ u8  padAE[0x06];
};  /* 0xB4 */

    u32 field_4;
    u8 gap8[4];
    struct Process* startProcessLink;
    struct Process* nextProcess;
    struct Process* currentProcess;
    u8 processCount;
    u32 field_1C;
    u32 gap20;
    u32 playTime;
    u16 inputPressed;
    u16 field_2A;
    u16 field_2C;
    u16 field_2E;
    u8 field_30;
    u8 field_31;

    // ...
    u8 pad1[0x84E];

    int field_880;
    u32 field_884;
    u16 field_888_0 : 1;
    u16 field_888_1 : 2;
    u16 field_888_3 : 1;
    u16 field_888_4 : 4;
    u16 field_889 : 8;
    s32 field_88A_0 : 3;
    s32 field_88A_3 : 1;
    u32 field_88A_4 : 1;
    s32 field_88A_5 : 3;
    u32 field_88B_0 : 1;
    u32 field_88B_1 : 7;

    // Sound-system state; only the fields sub_8018E24/sub_8018E88 actually
    // touch are known so far, extend as more of this region's consumers
    // get decompiled (see src/sound.c). field_88C is accessed both as a
    // plain byte (bits 1-2 set/cleared together via a mask) and as a
    // 2-bit sub-field on its own (bit-position 1, width 2) -- confirmed
    // against retail via a probe compile, see git history for sub_8018E88.
    union GameStateU88C {
        u8 field_88C;
        u16 field_88C_word; // combined field_88C (low byte) + field_88D (high byte)
        struct {
            u8 field_88C_0 : 1;
            u8 field_88C_1 : 2;
            u8 field_88C_3 : 5;
        } bits;
        struct {
            u16 field_88C_0 : 1;
            u16 field_88C_1 : 2;
            u16 field_88C_3 : 7;
            u16 field_88D_2 : 6;
        } wordBits;
    } u_88C; // logically 2 bytes (0x88C-0x88D) but the u16-bitfield sibling
             // forces 4-byte (int) storage allocation in this compiler --
             // confirmed via probe compile, see git history for sub_8018E88.
             // No explicit padding needed before field_890: this union's
             // sizeof already covers 0x88C-0x88F.
    u16 field_890;
    u8 pad892[10];
    u16 field_89C;
    u16 field_89E;
    u8 pad8A0[4];
    u16 field_8A4;
    u16 field_8A6;
};

struct struc_3000D18 {
    u8 field_0_0 : 1;
    u8 field_0_1 : 3;
    u32 field_4;
    u32 field_8;
    u32 field_C;
};

// One 24-byte record per link-cable channel (up to 4, indexed 0-3 in
// sub_801A1D4). field_0/field_2..field_12 (10 halfwords) are summed and
// the sum checked against a fixed sentinel to validate an incoming
// packet; only field_2..field_10 (8 halfwords, 16 bytes) get copied out
// to the caller's buffer. Trailing 4 bytes at field_14 unread by anything
// decompiled so far.
struct struc_3000D0C_channel {
    u16 field_0;
    u16 field_2;
    u16 field_4;
    u16 field_6;
    u16 field_8;
    u16 field_A;
    u16 field_C;
    u16 field_E;
    u16 field_10;
    u16 field_12;
    u8 field_14[4];
};

// Link-cable/multiplayer communication state, pointed to by dword_3000D0C.
// Heavily used by asm/mariobros.s (the embedded Mario Bros. minigame's
// multiplayer support, out of scope for this repo's "game proper"
// progress) and referenced once in still-raw asm/text08000000.s. Only the
// fields sub_801A1D4/sub_801A2A0 actually touch are known; field_180 (a
// zero-arg polling callback, "is there new link data?") implies the
// struct is much bigger than what's mapped here - pad1 exists purely to
// get field_180 to the right offset, not because its contents are known.
struct struc_3000D0C {
    u8 field_0;
    u8 field_1;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 field_8;
    u8 field_9;
    u8 pad_A[0xA];
    u32 field_14;
    s32 field_18;
    u32 field_1C;
    u32 field_20;
    u32 field_24;
    u32 field_28;
    struct struc_3000D0C_channel* field_2C;
    u8 pad_30[0x150];
    u8 (*field_180)(void);
};

struct Sprite {
    s16 xPosition;
    s16 yPosition;
    s16 xScale;
    s16 yScale;
    s16 field_8;
    s16 field_A;
    u8 pad[2];
    s16 field_E;
    u8 field_10;
    u8 field_11_0 : 6;
    u8 field_11_6 : 1;
    u8 field_11_7 : 1;
    u8 field_12_0 : 1;
    u8 field_12_1 : 2;
    u8 field_12_3 : 1;
    u8 field_12_4 : 1;
    u8 field_12_5 : 3;
    u8 field_13;
    u8 field_14;
    u8 field_15;
    u16 field_16;
    u16 field_18;
    u16 field_1A;
    u16 field_1C;
    u8 field_1E;
    u8 field_1F_0 : 2;
    u8 field_1F_2 : 2;
    u8 field_20[2];
    u8 field_22;
};

struct struc_203FFF8 {
    u32 field_0;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7_0 : 2;
    u8 field_7_2 : 1;
    u8 field_7_3 : 1;
    u8 field_7_4 : 3;
    u8 field_7_7 : 1;
};

struct EeprStruct1 {
    char name[8];
    u8 field_8_0 : 3;
    u8 field_8_3 : 1;
    u8 field_8_4 : 1;
    u8 field_8_5 : 1;
    u8 field_8_6 : 1;
};

struct MarioBrosScoreVisual {
    struct Process process;
    char topScore[6];
    char pScore[2];
};

struct struc_11 {
    u16 field_0;
    u16 field_2;
    u16 field_4;
    u16 field_6;
    u32 field_8;
    u32 field_C;
    struct struc_11* field_10;
};

struct struc_203FFB8 {
    u8 field_0_0 : 2;
    u8 field_0_2 : 1;
    u8 field_1;
    u8 field_2;
    u8 field_3;

    u8 pad1[0x34];

    struct struc_11* field_38;
    u32 field_3C;
};

struct WindowAttr {
    // Made this a bitfield to match optn_update.
    u8 field_0_0 : 1;
    s8 field_1;
    u8 xStart;
    u8 yStart;
    u8 xSize;
    u8 ySize;
};

struct struc_15 {
    u32 field_0;
    u32 field_4;
    // Probably a char string but not sure.
    u8* field_8;
    u32 field_C;
    u32 field_10;
    u32 field_14;
    u32 field_18;
    u32 field_1C;
    u32 field_20;
};

struct OPTNProcess {
    struct Process process;
    s8 brightness;
    s8 field_1D;
    struct Process* odtr;
    u8* bwcw;
    u8* field_28;
    u8* field_2C;
    u16* bwsw;
    int* bbwf;
    struct struc_15* bbwi;
    s8 options_0 : 1;
    s8 options_1 : 3;
    u8 options_4 : 3;
    s8 selection;
    int* winw;
    u8 okButtonPosX;
    u8 okButtonPosY;
    struct WindowAttr field_48;
    struct Sprite* sprite;
};

// Function prototypes
void sub_800063C();
void sub_8017E34(void);
void sub_8018218(void*, void*, size_t, int, int);
void sub_8018B78(int, void (*)(void));
void* alloc_heap_8018CEC(bool32 heapId, u32 size, char* tag);
void free_heap_8018D9C(void*);
void free_heap_8018DA8(void* ptr);
void* alloc_zero_8018DB4(u32 size, bool32 heapId, char* tag, u8 clear);
void* alloc_Zero(u32 size, bool32 heapId, char* tag, u8 clear);
void sub_8018E24(void);
void sub_8018E88(int, int);
void sub_819A43C(void);
void sub_819AFA8(void*);
void sub_80196BC(void);
void sub_80193B4(int, int, int);
void play_sfx_80195B4(int, int);
u32 sub_80198B0(int*);
void sub_801A6B0(void);
void sub_801ABE8(u16, u16, int);
void sub_801AFE4(int);
void sub_801E150(struct Sprite*, int, int, int, int);
void sub_8020994(int, int, int, int);
void sub_8020A78(void);
void sprite_show_8020CBC(struct Sprite*);
struct Sprite* sub_8020DD0(int, int, int, int, int, int, int);
void sub_80210A8(struct Sprite*, int, int, int, int, int, int, int);
void sub_80213A0(int, int, int, int);
void sprite_hide_8021F20(struct Sprite*);
void sub_8021F7C(void);
void sub_8021FD4(void);
void sub_8051EE0(struct WindowAttr*);
struct OPTNProcess* optn_init(struct OPTNProcess*, u8, char*, int);
int try_save_options(struct OPTNProcess*);
void sub_8052EFC(struct OPTNProcess*);
void sub_805420C(struct OPTNProcess*);
void option_screen_set_ok_button(struct OPTNProcess*, int, int);
struct TitleScreen* open_init_8055A00(struct TitleScreen*, u8, char*, int);
void open_8055F74(struct TitleScreen*, int);
void open_8056224();
void sub_80574B4(void);
void sub_80574FC(void);
int sub_812454C(void);
struct struc_203FFF8* sub_81251DC();
u8 sub_8124740(struct struc_203FFF8*, u8);
struct MarioBrosScoreVisual* mbsv_init(struct MarioBrosScoreVisual*, u8, char*, u32, u8);
void sub_8019308(int, int, int);
u8 sub_801A1D4(void* dest);
void sub_801A2A0(void);
void sub_801A548(void);
void sub_81994EC(void*, void*);
void sub_8052B54(struct OPTNProcess*, int);
void sub_8052C50(struct OPTNProcess*, int);
struct Process* load_init_812538C(struct Process*, u8, char*, int);
u16 sub_8199624(struct struc_15*);
void sub_8199D5C(struct struc_15*, int, u8, int);
void sub_8199D78(struct struc_15*, u8*, int, int, int, int, int, int, int, int);
void sub_81DA6C8(int);

// EWRAM
extern struct struc_203FFB8 stru_203FFB8;
extern struct struc_203FFF8 stru_203FFF8;
// Some kind of sound-driver shared state word, read/written under
// REG_IME==0 critical sections by the sound wrapper in src/sound.c;
// reloaded every access in retail code so treated as volatile here.
extern vu16 word_2000004;

// The buffer open_init_8055A00 allocates into dword_3000DA0 (340 bytes,
// tag "ORST") - only the fields open_8056224 actually touches are known
// so far; extend as more of its consumers get decompiled.
struct struc_3000DA0 {
    s8 field_0[5];
    u8 field_5[0xF];
    u16 field_14;
    u16 field_16;
};

// IWRAM
extern struct struc_3000D0C* dword_3000D0C;
extern void (*dword_3000D48)(int, int);
extern int (*dword_3000D4C)(int, int);
extern struct struc_3000DA0* dword_3000DA0;
extern struct EeprStruct1* dword_3000FFC;
extern struct GameState gGameState;
extern void (*dword_3000C78)();
extern void (*dword_3000C84)(int*, void*);
extern struct struc_3000D18 stru_3000D18;
extern void (*dword_3001034)(int, void**, int);
extern int (*dword_3001038)();

// ROM
extern int loc_8198220();
extern int loc_819832C(int, int);
// Address-only idiom (see src/opening_sequence.c's identical externs) -- used
// only via pointer subtraction (sub_8198784 - sub_819941C) for a blob size,
// never dereferenced.
extern u8 sub_8198784[];
extern u8 sub_819941C[];
extern u8 str_FREE_81DD7C8[4];
extern u8 dword_81DD7F4[];
extern u8 dword_81DD9F4[16384];
extern u8 dword_81E19F4[1280];
extern int dword_83A0E94[];
extern int dword_83A13A0[];
extern int dword_83A1BA0[];
extern int dword_83A1D80[];
extern int dword_83A1F60[];
extern int off_83A2880[];
extern int off_83A28C0[];
extern u16 word_83A2900[];
extern int* off_83A2920[];
extern int dword_83A2B48[];
extern int dword_83A2F98[];
extern int dword_83A3498[];
extern int dword_83A34B8[];
extern int dword_83A3860[];
extern int dword_83A3D60[];
extern int dword_83A3D80[];
extern int dword_83A4874[];
extern int dword_83A575C[];
extern int dword_83A5C5C[];
extern int dword_83A6C5C[];
extern int dword_83A7140[];
extern int dword_83A7300[];
extern u16 word_83A74C0[];
extern u8 dword_83A74E4[];
extern u8 byte_83A74E9[];
extern s16 word_83A74EC[];
extern s16 word_83A7530[];
extern s16 word_83A7574[];
extern s16 word_83A75B8[];
extern s16 word_83A75C8[];
extern u8* off_839EC80;
// 518-entry pointer table, code-confirmed (see docs/formats/README.md).
extern void* off_851F9E8[];
extern struct ProcessDefinition stru_8CDBD68;
extern struct ProcessDefinition stru_8CDBD78;
extern struct ProcessDefinition stru_8CDC1F8;
extern struct ProcessDefinition stru_8CDC208;
extern struct ProcessDefinition stru_8CDC238;
extern struct ProcessDefinition stru_8CDC248;
extern struct ProcessDefinition stru_8CDC258;
extern struct ProcessDefinition stru_8CDC268;
