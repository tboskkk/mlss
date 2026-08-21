	.syntax unified
	.text

	thumb_func_start sub_814BA70
sub_814BA70:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r4, #0x0
	movs r1, #0x40
	bl sub_813A5C8
	movs r1, #0xD8
	lsls r1, r1, #0x07
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814BAC4 @ =0x0814BA11
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BAC4: .4byte sub_814BA10
