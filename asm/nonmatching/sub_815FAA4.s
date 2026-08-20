	.syntax unified
	.text

	thumb_func_start sub_815FAA4
sub_815FAA4:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0815FAC6
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x04]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldr r1, [r4, #0x04]
	ldr r0, [r3, #0x08]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
_0815FAC6:
	pop {r4}
	pop {r0}
	bx r0
