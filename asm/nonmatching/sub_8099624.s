	.syntax unified
	.text

	thumb_func_start sub_8099624
sub_8099624:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, _080996B4 @ =0xFFFFFD34
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _08099672
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08099654
	adds r1, #0xFF
_08099654:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0809965E
	adds r2, #0xFF
_0809965E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08099668
	adds r3, #0xFF
_08099668:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080996B8 @ =0x00000D1D
	bl sub_80DF024
_08099672:
	ldr r0, [r6, #0x08]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x30
	negs r0, r0
	cmp r1, r0
	bge _080996E2
	ldr r0, _080996BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0x90
	lsls r2, r2, #0x09
	adds r0, r0, r2
	str r0, [r6, #0x10]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x14]
	ldr r5, [r1, #0x00]
	movs r7, #0x00
	movs r0, #0x41
	negs r0, r0
	mov r8, r0
	b _080996C2
	.byte 0x00, 0x00
_080996B4: .4byte 0xFFFFFD34
_080996B8: .4byte 0x00000D1D
_080996BC: .4byte 0x03000FD8
_080996C0:
	ldr r5, [r5, #0x00]
_080996C2:
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r5, #0x0
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	mov r2, r8
	ands r0, r2
	strb r0, [r1, #0x00]
	str r7, [r4, #0x2C]
	str r7, [r4, #0x6C]
	ldr r0, [r6, #0x28]
	cmp r5, r0
	bne _080996C0
_080996E2:
	ldr r0, [r6, #0x28]
	adds r0, #0xD8
	ldr r1, [r6, #0x38]
	ldr r2, [r0, #0x00]
	cmp r1, r2
	blt _08099710
	ldr r0, [r6, #0x10]
	cmp r2, r0
	blt _08099710
	str r2, [r6, #0x10]
	movs r1, #0x01
	negs r1, r1
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
	str r0, [r6, #0x4C]
_08099710:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
