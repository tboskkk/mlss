	.syntax unified
	.text

	thumb_func_start sub_805516C
sub_805516C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, [r0, #0x14]
	ldr r2, _080551C0 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r2, r1
	ldr r7, [r0, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r1, r4, #0x0
	strh r1, [r7, #0x00]
	ldr r4, _080551C4 @ =0x00008080
	adds r0, r4, #0x0
	strh r0, [r7, #0x02]
	movs r4, #0xC0
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	strh r0, [r7, #0x04]
	adds r7, #0x08
	strh r1, [r7, #0x00]
	ldr r1, _080551C8 @ =0x000080A0
	adds r0, r1, #0x0
	strh r0, [r7, #0x02]
	adds r4, #0x08
	adds r0, r4, #0x0
	strh r0, [r7, #0x04]
	adds r7, #0x08
	adds r0, r3, #0x0
	adds r0, #0x34
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	bne _080551CC
	ldr r0, [r3, #0x40]
	adds r0, #0x1C
	b _080551D0
_080551C0: .4byte 0x0300034C
_080551C4: .4byte 0x00008080
_080551C8: .4byte 0x000080A0
_080551CC:
	ldr r0, _080551EC @ =0x03000FF4
	ldr r0, [r0, #0x00]
_080551D0:
	mov r9, r0
	adds r2, r3, #0x0
	adds r2, #0x34
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080551F4
	ldr r0, [r3, #0x40]
	ldr r1, _080551F0 @ =0x000006EC
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	b _080551F6
	.byte 0x00, 0x00
_080551EC: .4byte 0x03000FF4
_080551F0: .4byte 0x000006EC
_080551F4:
	ldr r6, [r4, #0x24]
_080551F6:
	movs r4, #0x39
	adds r4, r4, r3
	mov r10, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0805520A
	adds r3, #0x3B
	mov r10, r3
_0805520A:
	mov r0, r9
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	adds r0, #0x3C
	ldrb r2, [r0, #0x00]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_8122198
	adds r7, r0, #0x0
	ldr r5, _080552B8 @ =0x03001038
	ldr r4, _080552BC @ =0x0819832C
	ldr r0, _080552C0 @ =0x08198220
	mov r8, r0
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r1, #0xE1
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r1, #0x3C
	bl _call_via_r2
	adds r4, r0, #0x0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080552C4 @ =0x08198350
	mov r1, r8
	subs r0, r0, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	movs r1, #0x3C
	bl _call_via_r2
	adds r2, r0, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, r9
	adds r0, #0x88
	ldrh r3, [r0, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8121F1C
	adds r7, r0, #0x0
	bl sub_8020A78
	ldr r2, _080552C8 @ =0x03000D48
	ldr r4, _080552CC @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _080552D0 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _080552D4 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r4, r10
	ldrb r1, [r4, #0x00]
	ldrb r2, [r4, #0x01]
	bl sub_8122098
	adds r7, r0, #0x0
	ldr r0, _080552D8 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r7, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080552B8: .4byte 0x03001038
_080552BC: .4byte 0x0819832C
_080552C0: .4byte 0x08198220
_080552C4: .4byte 0x08198350
_080552C8: .4byte 0x03000D48
_080552CC: .4byte 0x0203FFB8
_080552D0: .4byte 0x00000A14
_080552D4: .4byte 0x03000D4C
_080552D8: .4byte 0x0300034C

@ WARNING: everything below this point is NOT part of sub_805516C.
@ text080542C4.s's original raw file ended right here with this being its
@ last remaining function, so split_func.py correctly pulled every
@ trailing byte along with it (needed for front-to-back correctness) --
@ but ~100 of those bytes are actually a second, real, never-labeled
@ function (starts with what reads as a push{r4,lr}-shaped prologue),
@ not padding and not sub_805516C's own tail. Do NOT delete this whole
@ fragment once sub_805516C matches -- decode and split this trailing
@ function out first (same treatment as sub_801A33C got for the mirror-
@ image case in text08019CA4.s), or these bytes get silently dropped
@ from the ROM. See CLAUDE.md's "split_func.py silently corrupted the
@ ROM" landmine for the general shape of this bug class.
