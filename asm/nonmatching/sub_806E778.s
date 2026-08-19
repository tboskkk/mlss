	.syntax unified
	.text

	thumb_func_start sub_806E778
sub_806E778:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0806E78A
	str r1, [r2, #0x4C]
	ldr r0, [r2, #0x30]
	str r1, [r0, #0x4C]
_0806E78A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
