	.syntax unified
	.text

	thumb_func_start sub_80DEDB0
sub_80DEDB0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DEDE0
	adds r0, r4, #0x0
	movs r1, #0x0B
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
	ldr r0, _080DEDE8 @ =0x080DE4A5
	str r0, [r4, #0x4C]
_080DEDE0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DEDE8: .4byte sub_80DE4A4
