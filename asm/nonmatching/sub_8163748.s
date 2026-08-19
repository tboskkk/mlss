	.syntax unified
	.text

	thumb_func_start sub_8163748
sub_8163748:
	push {lr}
	movs r1, #0x00
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08163754
	movs r1, #0x01
_08163754:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
