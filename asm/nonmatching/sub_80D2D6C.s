	.syntax unified
	.text

	thumb_func_start sub_80D2D6C
sub_80D2D6C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2D9E
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080D2D9E:
	pop {r4}
	pop {r0}
	bx r0
