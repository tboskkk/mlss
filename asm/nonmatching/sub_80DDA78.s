	.syntax unified
	.text

	thumb_func_start sub_80DDA78
sub_80DDA78:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DDAB2
	adds r0, r4, #0x0
	bl sub_80DD0CC
	movs r0, #0x00
	str r0, [r4, #0x6C]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DDAB8 @ =0x080DDABD
	str r0, [r4, #0x4C]
_080DDAB2:
	pop {r4}
	pop {r0}
	bx r0
_080DDAB8: .4byte sub_80DDABC
