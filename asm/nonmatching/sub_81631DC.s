	.syntax unified
	.text

	thumb_func_start sub_81631DC
sub_81631DC:
	push {lr}
	movs r1, #0x00
	ldr r0, [r0, #0x24]
	cmp r0, #0x00
	bne _081631E8
	movs r1, #0x01
_081631E8:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
