	.syntax unified
	.text

	thumb_func_start sub_816D6F0
sub_816D6F0:
	push {lr}
	adds r1, r0, #0x0
	adds r1, #0x88
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0816D70A
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x97
	bl play_sfx_80195B4
_0816D70A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
