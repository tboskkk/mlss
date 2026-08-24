	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	bne _080610C0
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	ldr r2, _080610C8 @ =0xFFFFD000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080610CC @ =0x080612B5
	str r0, [r5, #0x58]
	adds r1, r5, #0x0
	adds r1, #0x77
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r6, [r0, #0x00]
	subs r0, #0x04
	str r6, [r0, #0x00]
	ldr r0, _080610D0 @ =0x080612FD
	str r0, [r5, #0x4C]
_080610C0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080610C8: .4byte 0xFFFFD000
_080610CC: .4byte sub_80612B4
_080610D0: .4byte sub_80612FC
