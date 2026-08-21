	.syntax unified
	.text

	thumb_func_start sub_806B3AC
sub_806B3AC:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r2, #0x10]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0806B3CA
	adds r0, r2, #0x0
	bl sub_807C298
_0806B3CA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
