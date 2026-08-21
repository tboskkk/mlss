	.syntax unified
	.text

	thumb_func_start sub_81102A0
sub_81102A0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r7, r4, #0x0
	adds r7, #0xAC
	movs r2, #0x00
	ldsh r0, [r7, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	ldr r5, [r4, #0x28]
	adds r1, r5, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r2, #0x00
	ldsh r0, [r7, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0xE0
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r7, #0x00]
	adds r0, #0x01
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x00
	ldsh r1, [r6, r2]
	cmp r0, r1
	ble _0811036A
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	movs r1, #0x04
	cmp r0, #0x01
	beq _08110330
	movs r1, #0x15
_08110330:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r0, #0x40
	strh r0, [r7, #0x00]
	movs r0, #0x8A
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _08110370 @ =0x08110375
	str r0, [r4, #0x4C]
_0811036A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08110370: .4byte sub_8110374
