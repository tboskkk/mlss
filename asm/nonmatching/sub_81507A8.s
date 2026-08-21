	.syntax unified
	.text

	thumb_func_start sub_81507A8
sub_81507A8:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r3, #0x18]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _081507E0
	movs r0, #0x00
	str r0, [r3, #0x18]
	ldr r0, _081507D8 @ =0x0000020D
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081507DC @ =0x08150811
	str r0, [r4, #0x00]
	b _081507E6
_081507D8: .4byte 0x0000020D
_081507DC: .4byte sub_8150810
_081507E0:
	ldr r0, [r2, #0x00]
	adds r0, #0x20
	str r0, [r2, #0x00]
_081507E6:
	pop {r4}
	pop {r0}
	bx r0
