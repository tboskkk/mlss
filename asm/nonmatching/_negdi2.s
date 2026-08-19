	.syntax unified
	.text

	thumb_func_start _negdi2
_negdi2:
	push {r4, lr}
	negs r2, r0
	adds r3, r2, #0x0
	negs r1, r1
	cmp r2, #0x00
	beq _081DC7C2
	subs r1, #0x01
_081DC7C2:
	adds r4, r1, #0x0
	adds r1, r4, #0x0
	adds r0, r3, #0x0
	pop {r4, pc}
	.byte 0x00, 0x00
