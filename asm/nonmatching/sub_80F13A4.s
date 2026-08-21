	.syntax unified
	.text

	thumb_func_start sub_80F13A4
sub_80F13A4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r4, r3, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080F13C8
	ldr r0, [r4, #0x08]
	lsls r0, r0, #0x04
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x04
	str r0, [r4, #0x10]
_080F13C8:
	ldr r0, [r4, #0x04]
	asrs r0, r0, #0x01
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080F13FA
	ldr r1, [r4, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F13E6
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080F13E8
_080F13E6:
	lsls r0, r1, #0x08
_080F13E8:
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x14]
	cmp r1, #0x00
	beq _080F13FA
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0x0
	bl sub_804794C
_080F13FA:
	ldr r2, [r4, #0x04]
	asrs r1, r2, #0x01
	movs r0, #0x03
	ands r1, r0
	movs r0, #0x01
	ands r2, r0
	ldr r3, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x004]
	ldrh r0, [r4, #0x14]
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_8045A94
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F1424
	movs r0, #0x01
	b _080F1432
_080F1424:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	adds r2, r7, #0x0
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
_080F1432:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
