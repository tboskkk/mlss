	.syntax unified
	.text

	thumb_func_start sub_819AB78
sub_819AB78:
	push {r4, r5, r6, lr}
	ldrb r1, [r0, #0x12]
	movs r2, #0x03
	ands r2, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r2
	lsrs r3, r1, #0x18
	ldr r5, _0819ABB4 @ =0x04000081
	ldrb r2, [r5, #0x00]
	lsls r4, r3, #0x04
	adds r1, r3, #0x0
	orrs r1, r4
	adds r6, r2, #0x0
	bics r6, r1
	adds r1, r6, #0x0
	ldrb r0, [r0, #0x0E]
	cmp r0, #0x80
	bhi _0819ABA0
	orrs r1, r3
_0819ABA0:
	cmp r0, #0x7E
	bls _0819ABAA
	orrs r1, r4
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_0819ABAA:
	strb r1, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819ABB4: .4byte 0x04000081
