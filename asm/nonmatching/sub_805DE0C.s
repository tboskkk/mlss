	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	adds r3, r4, #0x0
	adds r3, #0x84
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
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DE88 @ =0x0805DE91
	str r0, [r4, #0x4C]
	ldr r0, _0805DE8C @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DE88: .4byte sub_805DE90
_0805DE8C: .4byte 0x0000011B
