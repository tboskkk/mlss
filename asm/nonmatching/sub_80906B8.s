	.syntax unified
	.text

	thumb_func_start sub_80906B8
sub_80906B8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080906D8
	ldr r2, _080906E0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080906D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080906E0: .4byte 0x0000204D
