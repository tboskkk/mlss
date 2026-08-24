	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063F5C
	adds r4, r5, #0x0
	adds r4, #0xAE
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	beq _08063F5C
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r4, #0x00]
_08063F5C:
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063F70
	ldr r0, [r5, #0x10]
	ldr r1, _08063F6C @ =0xFFFFFDE7
	b _08063F74
_08063F6C: .4byte 0xFFFFFDE7
_08063F70:
	ldr r0, [r5, #0x10]
	ldr r1, _08063FBC @ =0xFFFFFECD
_08063F74:
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r4, r5, #0x0
	adds r4, #0xA4
	adds r0, r5, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	ldr r1, [r4, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08063FA6
	adds r1, #0xFF
_08063FA6:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08063FB6
	adds r0, r5, #0x0
	bl sub_807C298
_08063FB6:
	pop {r4, r5}
	pop {r0}
	bx r0
_08063FBC: .4byte 0xFFFFFECD
