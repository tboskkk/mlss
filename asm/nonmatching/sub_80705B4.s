	.syntax unified
	.text

	thumb_func_start sub_80705B4
sub_80705B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080705F2
	adds r0, r4, #0x0
	movs r1, #0x1B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0xA8
	movs r1, #0x01
	ands r1, r0
	str r1, [r2, #0x00]
	ldr r1, _080705F8 @ =0x03000E3C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080705FC @ =0x08070425
	str r0, [r4, #0x60]
	ldr r0, _08070600 @ =0x08070535
	str r0, [r4, #0x4C]
_080705F2:
	pop {r4}
	pop {r0}
	bx r0
_080705F8: .4byte 0x03000E3C
_080705FC: .4byte sub_8070424
_08070600: .4byte sub_8070534
