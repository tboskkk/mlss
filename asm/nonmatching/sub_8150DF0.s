	.syntax unified
	.text

	thumb_func_start sub_8150DF0
sub_8150DF0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	ldrh r2, [r4, #0x2C]
	movs r1, #0x04
	orrs r1, r2
	strh r1, [r4, #0x2C]
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	subs r0, r0, r1
	movs r1, #0x0A
	bl __divsi3
	str r0, [r4, #0x3C]
	pop {r4}
	pop {r0}
	bx r0
