	.syntax unified
	.text

	thumb_func_start sub_8072CE8
sub_8072CE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08072D26
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08072D04
	adds r1, #0xFF
_08072D04:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08072D0E
	adds r2, #0xFF
_08072D0E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08072D18
	adds r3, #0xFF
_08072D18:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08072DC4 @ =0x00002276
	bl sub_80DF024
	movs r0, #0x05
	str r0, [r4, #0x00]
_08072D26:
	ldr r4, [r5, #0x08]
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x0E
	negs r0, r0
	adds r7, r5, #0x0
	adds r7, #0xA0
	ldr r1, [r7, #0x00]
	bl __divsi3
	strh r0, [r4, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	ldr r1, [r7, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	muls r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r7, #0x00]
	cmp r1, r0
	ble _08072DBC
	movs r0, #0xC0
	lsls r0, r0, #0x08
	strh r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _08072DC8 @ =0x08072DCD
	str r0, [r5, #0x4C]
_08072DBC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08072DC4: .4byte 0x00002276
_08072DC8: .4byte sub_8072DCC
