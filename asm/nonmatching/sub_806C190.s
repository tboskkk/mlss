	.syntax unified
	.text

	thumb_func_start sub_806C190
sub_806C190:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C1A2
	adds r0, r1, #0x0
	bl sub_807C298
_0806C1A2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
