	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DBB12
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	mov r12, r0
	mov r2, r12
	adds r2, #0xD8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x09
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x14
	strh r0, [r5, #0x00]
	ldr r0, _080DBB18 @ =0x080DBB1D
	str r0, [r4, #0x4C]
_080DBB12:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DBB18: .4byte sub_80DBB1C
