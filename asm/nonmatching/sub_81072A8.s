	.syntax unified
	.text

	thumb_func_start sub_81072A8
sub_81072A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _081072D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _081072CC
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081072CC
	bl sub_8087360
	ldr r0, _081072D8 @ =0x0810192D
	str r0, [r4, #0x04]
_081072CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081072D4: .4byte 0x03000FD8
_081072D8: .4byte sub_810192C
