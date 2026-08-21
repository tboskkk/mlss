	.syntax unified
	.text

	thumb_func_start sub_80DAF6C
sub_80DAF6C:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DAF7E
	adds r0, r1, #0x0
	bl sub_8087540
_080DAF7E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
