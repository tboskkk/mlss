	.syntax unified
	.text

	thumb_func_start sub_807536C
sub_807536C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080753E6
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, #0xF8
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x0A
	bl sub_8117C50
	adds r5, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	adds r6, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	subs r3, r5, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080753B0
	adds r1, #0xFF
_080753B0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080753BA
	adds r2, #0xFF
_080753BA:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r6, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080753F0 @ =0x08075D51
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x20
	strh r0, [r1, #0x00]
_080753E6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080753F0: .4byte sub_8075D50
