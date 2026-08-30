	.syntax unified
	.text

	thumb_func_start sub_80FA6DC
sub_80FA6DC:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, [r2, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FA6F2
	ldr r0, [r3, #0x14]
	bl sub_81219EC
	b _080FA6F8
_080FA6F2:
	ldr r0, [r3, #0x14]
	bl sub_8121A20
_080FA6F8:
	movs r0, #0x01
	pop {r1}
	bx r1
