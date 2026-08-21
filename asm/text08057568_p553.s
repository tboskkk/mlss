	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8106290
sub_8106290:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _081062A6
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _08106396
_081062A6:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106396
	movs r4, #0x00
	ldr r5, _08106368 @ =0x03000FD8
_081062B4:
	ldr r0, [r5, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x1
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x2
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x3
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r4, #0x04
	cmp r4, #0x07
	ble _081062B4
	ldr r0, _0810636C @ =0x00007009
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	ldr r5, _08106368 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807BC90
	movs r1, #0x00
	movs r0, #0x78
	strh r0, [r4, #0x00]
	ldr r0, _08106370 @ =0x0000FFF0
	strh r0, [r4, #0x02]
	strh r1, [r4, #0x0E]
	ldrb r0, [r4, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x10]
	ldrh r2, [r0, #0x14]
	ldrh r3, [r4, #0x14]
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	beq _08106374
	ldr r0, [r1, #0x10]
	ldrh r0, [r0, #0x14]
	orrs r0, r2
	orrs r0, r3
	mvns r0, r0
	b _08106378
	.byte 0x00, 0x00
_08106368: .4byte 0x03000FD8
_0810636C: .4byte 0x00007009
_08106370: .4byte 0x0000FFF0
_08106374:
	orrs r2, r3
	mvns r0, r2
_08106378:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x04
	movs r1, #0x00
	movs r2, #0x40
	ldr r3, _081063A0 @ =0x0000FFFF
	bl sub_807F708
	bl sub_810CAD0
	movs r0, #0x10
	strh r0, [r6, #0x10]
	ldr r0, _081063A4 @ =0x081066DD
	str r0, [r6, #0x04]
_08106396:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081063A0: .4byte 0x0000FFFF
_081063A4: .4byte sub_81066DC
	thumb_func_start sub_81063A8
sub_81063A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _081063BC
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _081063FE
_081063BC:
	ldr r0, _08106404 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldrh r0, [r3, #0x02]
	adds r0, #0x10
	strh r0, [r3, #0x02]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5F
	ble _081063FE
	movs r2, #0x60
	strh r2, [r3, #0x02]
	ldrb r1, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
	strh r2, [r4, #0x10]
	ldr r0, _08106408 @ =0x0810640D
	str r0, [r4, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
_081063FE:
	pop {r4}
	pop {r0}
	bx r0
_08106404: .4byte 0x03000FD8
_08106408: .4byte sub_810640C
	thumb_func_start sub_810640C
sub_810640C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	ldrh r0, [r6, #0x10]
	movs r2, #0x10
	ldsh r1, [r6, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _0810642A
	subs r0, #0x01
	strh r0, [r6, #0x10]
	b _081064C8
_0810642A:
	ldr r0, _081064D8 @ =0x03000FD8
	ldr r5, [r0, #0x00]
	movs r1, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810644E
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	lsrs r1, r0, #0x1F
_0810644E:
	lsls r0, r1, #0x02
	adds r1, r5, #0x0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, _081064DC @ =0x03000FDC
	mov r9, r0
	ldr r3, [r0, #0x00]
	ldr r1, [r2, #0x38]
	cmp r1, #0x00
	bge _0810646A
	adds r1, #0xFF
_0810646A:
	asrs r1, r1, #0x08
	ldr r7, _081064E0 @ =0x00008E10
	adds r0, r3, r7
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r2, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0810647E
	adds r0, #0xFF
_0810647E:
	asrs r0, r0, #0x08
	subs r0, #0x08
	ldr r2, _081064E4 @ =0x00008E12
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	ldr r0, _081064E8 @ =0x00008E14
	adds r1, r3, r0
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	ldr r4, _081064EC @ =0x082010BC
	movs r0, #0x44
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0xB4
	lsls r1, r1, #0x01
	str r1, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r7
	str r1, [sp, #0x004]
	mov r1, r8
	str r1, [sp, #0x008]
	movs r1, #0x37
	str r1, [sp, #0x00C]
	ldr r1, _081064F0 @ =0x08106565
	str r1, [sp, #0x010]
	movs r1, #0x07
	adds r2, r4, #0x0
	movs r3, #0x0F
	bl sub_8079D1C
	str r0, [r5, #0x00]
	ldr r0, _081064F4 @ =0x08106689
	str r0, [r6, #0x04]
_081064C8:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081064D8: .4byte 0x03000FD8
_081064DC: .4byte 0x03000FDC
_081064E0: .4byte 0x00008E10
_081064E4: .4byte 0x00008E12
_081064E8: .4byte 0x00008E14
_081064EC: .4byte 0x082010BC
_081064F0: .4byte sub_8106564
_081064F4: .4byte sub_8106688
	thumb_func_start sub_81064F8
sub_81064F8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08106530 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x40
	ldrh r0, [r1, #0x00]
	subs r2, r0, #0x1
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08106514
	adds r0, #0xFF
_08106514:
	asrs r0, r0, #0x08
	subs r0, r2, r0
	strh r0, [r1, #0x00]
	ldrh r0, [r4, #0x18]
	adds r0, #0x19
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106534
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _0810655A
_08106530: .4byte 0x03000FD8
_08106534:
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r2, #0xE8
	cmp r0, #0x00
	beq _08106548
	movs r2, #0xFA
_08106548:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	movs r0, #0x28
	strh r0, [r4, #0x10]
	ldr r0, _08106560 @ =0x08106651
	str r0, [r4, #0x04]
_0810655A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08106560: .4byte sub_8106650
	thumb_func_start sub_8106564
sub_8106564:
	push {r4, r5, lr}
	ldr r0, _081065B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x44
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r4, _081065B8 @ =0x03001034
	ldr r1, _081065BC @ =0x02000080
	movs r5, #0x80
	lsls r5, r5, #0x02
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r1, _081065C0 @ =0x02000280
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r1, _081065C4 @ =0x0300034C
	ldr r0, _081065C8 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x02]
	ldr r0, _081065CC @ =0x081065D1
	movs r1, #0x00
	bl sub_807FF48
	movs r1, #0x20
	strh r1, [r0, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
_081065B4: .4byte 0x03000FD8
_081065B8: .4byte 0x03001034
_081065BC: .4byte 0x02000080
_081065C0: .4byte 0x02000280
_081065C4: .4byte 0x0300034C
_081065C8: .4byte 0x0000FFFF
_081065CC: .4byte sub_81065D0
