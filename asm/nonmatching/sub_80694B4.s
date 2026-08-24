	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r6, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r6, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _08069544
	movs r4, #0x00
	str r4, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806954C @ =0x0806A1E9
	str r0, [r5, #0x58]
	ldr r0, _08069550 @ =0x0806A1CD
	str r0, [r5, #0x5C]
	ldr r0, _08069554 @ =0x0806A24D
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08069544:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806954C: .4byte sub_806A1E8
_08069550: .4byte sub_806A1CC
_08069554: .4byte sub_806A24C
