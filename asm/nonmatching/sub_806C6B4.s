	.syntax unified
	.text

	thumb_func_start sub_806C6B4
sub_806C6B4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	subs r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r1, _0806C768 @ =0x08198504
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0806C708
	adds r1, #0x3F
_0806C708:
	asrs r1, r1, #0x06
	lsls r1, r1, #0x03
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	bl sub_8199F30
	movs r1, #0x07
	ands r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C74A
	adds r1, r4, #0x0
	adds r1, #0xB2
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bne _0806C74A
	adds r0, r2, #0x1
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C74A:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806C752
	adds r1, #0xFF
_0806C752:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _0806C762
	adds r0, r4, #0x0
	bl sub_807C298
_0806C762:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806C768: .4byte word_8198504 @ =0x08198504
