	.syntax unified
	.text

	thumb_func_start sub_81065D0
sub_81065D0:
	push {r4, lr}
	adds r3, r0, #0x0
	ldrh r0, [r3, #0x10]
	movs r1, #0x10
	ldsh r4, [r3, r1]
	cmp r4, #0x00
	beq _081065E4
	subs r0, #0x01
	strh r0, [r3, #0x10]
	b _081065F8
_081065E4:
	ldr r0, _08106600 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _08106604 @ =0x000002BF
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	str r4, [r3, #0x04]
_081065F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106600: .4byte 0x03000FD8
_08106604: .4byte 0x000002BF
