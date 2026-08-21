	.syntax unified
	.text

	thumb_func_start sub_80F3ECC
sub_80F3ECC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r6, #0x2C]
	ldr r1, _080F3EE8 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F3EEC
	subs r0, #0x01
	b _080F3EEE
	.byte 0x00, 0x00
_080F3EE8: .4byte 0x0000179C
_080F3EEC:
	subs r0, #0x07
_080F3EEE:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080F3F0A
	ldr r0, [r4, #0x08]
	lsls r0, r0, #0x04
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x04
	str r0, [r4, #0x10]
_080F3F0A:
	ldr r2, [r4, #0x14]
	movs r3, #0x00
	ldr r0, [r4, #0x04]
	asrs r0, r0, #0x01
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080F3F1C
	movs r3, #0x01
_080F3F1C:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_80F6AC0
	ldr r1, [r4, #0x08]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x04]
	movs r4, #0x01
	eors r0, r4
	ands r0, r4
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80F76FC
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_80F7644
	adds r2, r7, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
