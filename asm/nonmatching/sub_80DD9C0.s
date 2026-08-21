	.syntax unified
	.text

	thumb_func_start sub_80DD9C0
sub_80DD9C0:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DDA2A
	adds r1, r5, #0x0
	adds r1, #0x98
	ldr r0, [r5, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	adds r1, #0x18
	adds r2, r5, #0x0
	adds r2, #0xB2
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080DDA34 @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0xFD
	str r3, [sp, #0x010]
	str r4, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DDA38 @ =0x080DC71D
	str r0, [r5, #0x4C]
_080DDA2A:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DDA34: .4byte 0x000004CC
_080DDA38: .4byte sub_80DC71C
