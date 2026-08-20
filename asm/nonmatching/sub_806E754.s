	.syntax unified
	.text

	thumb_func_start sub_806E754
sub_806E754:
	push {lr}
	adds r1, r0, #0x0
	ldr r2, [r1, #0x30]
	ldr r0, [r1, #0x10]
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0x14]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x18]
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E774
	str r0, [r1, #0x4C]
	str r0, [r2, #0x4C]
_0806E774:
	pop {r0}
	bx r0
