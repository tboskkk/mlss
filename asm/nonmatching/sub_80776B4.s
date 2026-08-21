	.syntax unified
	.text

	thumb_func_start sub_80776B4
sub_80776B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080776FA
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	strh r1, [r0, #0x00]
	movs r0, #0x32
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x14
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r3, [r0, #0x00]
	adds r1, #0x12
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08077700 @ =0x08076C15
	str r0, [r4, #0x4C]
_080776FA:
	pop {r4}
	pop {r0}
	bx r0
_08077700: .4byte sub_8076C14
