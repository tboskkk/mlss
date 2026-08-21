	.syntax unified
	.text

	thumb_func_start sub_80F1230
sub_80F1230:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r3, #0x0
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _080F1266
	ldr r0, [r4, #0x04]
	lsls r3, r0, #0x04
	str r3, [r4, #0x04]
	ldr r0, [r4, #0x08]
	lsls r2, r0, #0x04
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x00
	bne _080F1266
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r4, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x08
	str r0, [r4, #0x08]
_080F1266:
	ldr r1, [r4, #0x04]
	lsls r1, r1, #0x08
	ldr r2, [r4, #0x08]
	lsls r2, r2, #0x08
	ldr r3, [r4, #0x0C]
	lsls r3, r3, #0x08
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	movs r3, #0x00
	ldr r2, [r6, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F12A8
	adds r0, r2, #0x0
	adds r0, #0xFA
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1B
	adds r1, r5, #0x0
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _080F12A8
	movs r3, #0x01
_080F12A8:
	ldr r0, [r4, #0x14]
	ands r3, r0
	cmp r3, #0x00
	beq _080F12BE
	ldr r0, [r6, #0x14]
	adds r1, r5, #0x0
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	bl sub_80284B0
_080F12BE:
	movs r0, #0x00
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
