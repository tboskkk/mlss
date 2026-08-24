	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	bne _080DBBBC
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DBBBC
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080DBBC4 @ =0x080DBC3D
	str r0, [r5, #0x5C]
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r4, r2, #0x0
	adds r4, #0xD8
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	str r0, [r5, #0x10]
	adds r3, r2, #0x0
	adds r3, #0xDC
	ldr r0, [r3, #0x00]
	str r0, [r5, #0x3C]
	str r0, [r5, #0x14]
	adds r2, #0xE0
	ldr r0, [r2, #0x00]
	str r0, [r5, #0x40]
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DBBC8 @ =0x080DBBCD
	str r0, [r5, #0x4C]
_080DBBBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DBBC4: .4byte sub_80DBC3C
_080DBBC8: .4byte sub_80DBBCC
