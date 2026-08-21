	.syntax unified
	.text

	thumb_func_start sub_8164FA4
sub_8164FA4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x9C
	adds r6, r4, #0x0
	adds r6, #0x98
	ldr r3, [r5, #0x00]
	ldr r2, [r6, #0x00]
	cmp r3, r2
	bgt _08164FEA
	ldr r0, [r4, #0x28]
	adds r1, r4, #0x0
	adds r1, #0x90
	ldr r1, [r1, #0x00]
	bl sub_8163E50
	ldr r1, [r4, #0x50]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	adds r1, r4, #0x0
	adds r1, #0x94
	ldr r1, [r1, #0x00]
	ldr r2, [r6, #0x00]
	ldr r3, [r5, #0x00]
	bl sub_8163E50
	ldr r1, [r4, #0x54]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	movs r0, #0x00
	b _08164FEC
_08164FEA:
	movs r0, #0x01
_08164FEC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
