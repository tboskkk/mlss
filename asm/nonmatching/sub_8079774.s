	.syntax unified
	.text

	thumb_func_start sub_8079774
sub_8079774:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	bne _08079784
	adds r0, r1, #0x0
	bl sub_807C298
_08079784:
	pop {r0}
	bx r0
