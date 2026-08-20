	.syntax unified
	.text

	thumb_func_start sub_8163A08
sub_8163A08:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _08163A1C
	ldr r0, [r1, #0x40]
	cmp r0, #0x01
	beq _08163A1C
	movs r0, #0x00
	b _08163A1E
_08163A1C:
	movs r0, #0x01
_08163A1E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
