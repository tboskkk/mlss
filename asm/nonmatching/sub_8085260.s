	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldrb r0, [r4, #0x02]
	cmp r0, #0x00
	beq _08085320
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _0808529C
	ldr r2, [r4, #0x0C]
	cmp r2, #0x00
	beq _08085320
	ldrb r0, [r4, #0x05]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r1, r7, r3
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r1, r2, #0x0
	bl sub_80E9384
	b _080852A0
_0808529C:
	ldr r0, [r4, #0x0C]
	str r0, [r4, #0x10]
_080852A0:
	movs r0, #0x00
	str r0, [r4, #0x0C]
	ldrb r3, [r4, #0x03]
	movs r0, #0xA2
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldrh r0, [r4, #0x08]
	lsls r0, r0, #0x01
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	subs r3, #0x01
	cmp r3, #0x00
	blt _08085316
_080852BA:
	ldrb r2, [r4, #0x02]
	subs r2, #0x01
	subs r6, r3, #0x1
	adds r5, r1, #0x0
	adds r5, #0x40
	cmp r2, #0x00
	blt _0808530E
	movs r3, #0x00
	lsls r0, r2, #0x01
	adds r1, r0, r1
	movs r0, #0x03
	bics r0, r2
	cmp r2, #0x00
	blt _080852EE
	cmp r0, #0x00
	beq _080852F8
	cmp r0, #0x03
	bge _080852EE
	cmp r0, #0x02
	bge _080852E8
	strh r3, [r1, #0x00]
	subs r1, #0x02
	subs r2, #0x01
_080852E8:
	strh r3, [r1, #0x00]
	subs r1, #0x02
	subs r2, #0x01
_080852EE:
	strh r3, [r1, #0x00]
	subs r1, #0x02
	subs r2, #0x01
	cmp r2, #0x00
	blt _0808530E
_080852F8:
	strh r3, [r1, #0x00]
	subs r0, r1, #0x2
	strh r3, [r0, #0x00]
	subs r0, r1, #0x4
	strh r3, [r0, #0x00]
	subs r0, r1, #0x6
	strh r3, [r0, #0x00]
	subs r1, #0x08
	subs r2, #0x04
	cmp r2, #0x00
	bge _080852F8
_0808530E:
	adds r1, r5, #0x0
	adds r3, r6, #0x0
	cmp r3, #0x00
	bge _080852BA
_08085316:
	ldrh r1, [r4, #0x08]
	ldrh r2, [r4, #0x06]
	adds r0, r7, #0x0
	bl sub_8084614
_08085320:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
