	.syntax unified
	.text

	thumb_func_start sub_8106A10
sub_8106A10:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x0C]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08106A26
	ldr r0, _08106A2C @ =0x08104D15
	str r0, [r2, #0x04]
_08106A26:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106A2C: .4byte sub_8104D14
