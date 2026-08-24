	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	bl sub_80614B4
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061746
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r5, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	adds r4, r2, #0x0
	adds r4, #0xE0
	ldr r3, _0806174C @ =0x083B869C
	lsls r2, r5, #0x03
	adds r2, r2, r5
	lsls r2, r2, #0x02
	adds r0, r3, #0x0
	adds r0, #0x14
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r6, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x79
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	adds r3, #0x18
	adds r2, r2, r3
	ldr r1, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	bl sub_807F4FC
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061750 @ =0x08061755
	str r0, [r7, #0x4C]
_08061746:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806174C: .4byte 0x083B869C
_08061750: .4byte sub_8061754
