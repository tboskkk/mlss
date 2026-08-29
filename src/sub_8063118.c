#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8063118 needs.

asm_unified(".include \"asm/macros.inc\"");





void sub_8063524(void *arg0);

s32 sub_8063B80(struct Entity *arg0);
void sub_8063BA8(struct Entity *arg0);
s32 sub_8086858();

void sub_8063568(void *arg0);                       /* extern */
int sub_8082B00();

void sub_8063AD4(void *arg0);
s32 sub_8082E1C();
ASM_FUNC("asm/nonmatching/sub_8063118.s", void sub_8063118(void *arg0));
u8 sub_801B1C8(void *, s32, s32);                   /* extern */
s32 sub_807C298(void *);                        /* extern */
s32 sub_807FC08(s32 *, s32 *, s32 *, s32);      /* extern */

void sub_8063248(struct Entity *arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 temp_r2_22;
    s32 var_r0_20;
    s32 var_r0_30;
    s32 var_r0_37;

    if (sub_801B1C8(*(void **)0x03000E18, 0x03000E40, 0x03000E44) == 1) {
        var_r0_20 = *(s32 *)0x03000E40;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_20;
        temp_r2_22 = *(s32 *)0x03000E44;
        (*(s32 *)((s8 *)(arg0) + (0x14))) = temp_r2_22;
        if (var_r0_20 < 0) {
            var_r0_20 += 0xFF;
        }
        sp0 = var_r0_20 >> 8;
        var_r0_30 = temp_r2_22;
        if (var_r0_30 < 0) {
            var_r0_30 += 0xFF;
        }
        sp4 = var_r0_30 >> 8;
        var_r0_37 = arg0->unk18;
        if (var_r0_37 < 0) {
            var_r0_37 += 0xFF;
        }
        sp8 = var_r0_37 >> 8;
        sub_807FC08(&sp0, &sp4, &sp8, 0);
        return;
    }
    free_heap_8018DA8(*(void **)0x03000E18);
    sub_807C298(arg0);
}

ASM_FUNC("asm/nonmatching/sub_80632C0.s", s32 sub_80632C0(void *arg0));
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_810DD7C(void *, s32, s32);              /* extern */
void sub_80633D0(void *arg0);                       /* extern */

s32 sub_80632E4(struct Entity *arg0) {
    sub_810DD7C(arg0, (*(s32 *)((s8 *)(arg0) + (0x2C))), 0xFF);
    arg0->handler = (s32 *) &sub_80633D0;
    stop_sfx_80195A8(0x11C);
    return 0;
}

extern s32 sub_808750C;

void sub_8063308(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        play_sfx_80195B4(0xD8, -1);
        sub_8082E1C(arg0, 8, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806333C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_8063384.s", void sub_8063384(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80633D0.s", void sub_80633D0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8063420.s", void sub_8063420(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8063474.s", void sub_8063474(void *arg0));
void sub_80634DC(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        if (arg0->unk9C == 0) {
            sub_8082E1C(arg0, 4, 0, 0);
        } else {
            sub_8082E1C(arg0, 5, 0, 0);
        }
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 1;
        arg0->handler = (s32 *) &sub_8063524;
    }
}

extern s32 sub_8062FD4;
void sub_8063524(void *arg0)
{
  u16 temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      sub_8082E1C(arg0, 6, 0, 0);
      play_sfx_80195B4(0xAE, -1);
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8062FD4;
    }
  }
}

ASM_FUNC("asm/nonmatching/sub_8063568.s", void sub_8063568(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80635FC.s", void sub_80635FC(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_806386C.s", void sub_806386C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8063920.s", s32 sub_8063920(void *arg0, void *arg1));
void sub_806398C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0x0A, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x03;
        arg0->handler = (s32 *) &sub_8063AD4;
    }
}

ASM_FUNC("asm/nonmatching/sub_80639C0.s", void sub_80639C0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8063A24.s", void sub_8063A24(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8063A74.s", void sub_8063A74(void *arg0));
void sub_8063AD4(void *arg0)
{
  u16 temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      sub_8082E1C(arg0, 0xB, 0, 0);
      sub_8086858(arg0, 0x1471);
      *((s32 **) (((s8 *) arg0) + 0x5C)) = (s32 *) &sub_8063B80;
      play_sfx_80195B4(0x83, -1);
      *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8063BA8;
    }
  }
}

extern s32 sub_8063BF0;

void sub_8063B2C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 7, 0, 0);
        arg0->handler = &sub_8063BF0;
    }
}

void sub_8063B58(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x03, 0, 0);
        arg0->handler = (s32 *) &sub_8063568;
    }
}

s32 sub_8086C64();                                  /* extern */
extern s32 sub_8063C24;

s32 sub_8063B80(struct Entity *arg0) {
    s32 temp_r0_8;

    temp_r0_8 = sub_8086C64();
    if (temp_r0_8 == 0) {
        arg0->handler = &sub_8063C24;
        arg0->unk84 = 0x10;
    }
    return temp_r0_8;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8086858(void *, s32);                   /* extern */
s32 sub_8063B80(struct Entity *arg0);
extern s32 sub_8063C8C;

void sub_8063BA8(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0xC, 0, 0);
        sub_8086858(arg0, 0x1485);
        (*(s32 **)((s8 *)(arg0) + (0x5C))) = (s32 *) &sub_8063B80;
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 3;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8063C8C;
    }
}
