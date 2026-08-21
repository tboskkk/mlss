	.syntax unified
	.text

	thumb_func_start sub_80F11D0
sub_80F11D0:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r3, #0x00]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	ldr r2, [r4, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F1226
	adds r0, r2, #0x0
	adds r0, #0xFA
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x1B
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _080F1226
	adds r0, r2, #0x0
	movs r2, #0x00
	bl sub_80284B0
_080F1226:
	movs r0, #0x00
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
