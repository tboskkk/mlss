	.syntax unified
	.text

	thumb_func_start sub_80EE594
sub_80EE594:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EE5B4
	ldr r0, [r5, #0x08]
	lsls r0, r0, #0x04
	str r0, [r5, #0x08]
	ldr r0, [r5, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r5, #0x0C]
_080EE5B4:
	ldr r0, [r5, #0x00]
	asrs r0, r0, #0x01
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080EE5D6
	ldr r1, [r5, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080EE5D2
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080EE5D4
_080EE5D2:
	lsls r0, r1, #0x08
_080EE5D4:
	str r0, [r5, #0x10]
_080EE5D6:
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0x04]
	add r3, sp, #0x00C
	add r2, sp, #0x008
	bl get_fobj_screen_pos
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0x00]
	asrs r1, r1, #0x01
	movs r2, #0x03
	ands r1, r2
	ldr r3, [sp, #0x008]
	ldr r2, [r5, #0x08]
	adds r3, r3, r2
	subs r3, #0x78
	ldr r2, [sp, #0x00C]
	ldr r4, [r5, #0x0C]
	adds r2, r2, r4
	subs r2, #0x70
	str r2, [sp, #0x000]
	movs r4, #0x10
	ldsh r2, [r5, r4]
	str r2, [sp, #0x004]
	movs r2, #0x01
	bl sub_8028AFC
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r1}
	bx r1
