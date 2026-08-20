	.syntax unified
	.text

	thumb_func_start sub_816127C
sub_816127C:
	push {r4, lr}
	ldr r4, [r0, #0x0C]
	ldr r2, [r0, #0x14]
	ldr r3, [r1, #0x00]
	subs r2, r2, r3
	asrs r2, r2, #0x08
	strh r2, [r4, #0x00]
	ldr r2, [r0, #0x0C]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x04]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
	pop {r4}
	pop {r0}
	bx r0
