	.syntax unified
	.text

	thumb_func_start sub_806DE28
sub_806DE28:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAE
	ldrb r1, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _0806DE8A
	adds r0, #0xFF
_0806DE8A:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x14]
	cmp r0, #0x00
	bge _0806DE98
	adds r0, #0xFF
_0806DE98:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bge _0806DEAA
	adds r0, #0xFF
_0806DEAA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x00]
	subs r6, r1, r0
	ldr r2, _0806DF24 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xE0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806DEFA
	movs r0, #0x02
_0806DEFA:
	negs r0, r0
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806DF28 @ =0x0806DF2D
	str r0, [r4, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806DF24: .4byte 0x03001038
_0806DF28: .4byte sub_806DF2C
