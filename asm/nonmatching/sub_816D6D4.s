	.syntax unified
	.text

	thumb_func_start sub_816D6D4
sub_816D6D4:
	push {lr}
	adds r1, r0, #0x0
	adds r1, #0x88
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0816D6EA
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x97
	bl stop_sfx_80195A8
_0816D6EA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
