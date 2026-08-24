	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r1, [r5, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r0, r1
	str r0, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0806A720
	adds r0, r6, #0x0
	bl sub_807F47C
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r6, #0x14]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r2, [r6, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	ldr r0, _0806A728 @ =0x0806A7A1
	str r0, [r6, #0x4C]
	ldr r0, _0806A72C @ =0x00000111
	bl stop_sfx_80195A8
_0806A720:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A728: .4byte sub_806A7A0
_0806A72C: .4byte 0x00000111
