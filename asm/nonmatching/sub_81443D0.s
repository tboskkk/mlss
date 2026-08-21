	.syntax unified
	.text

	thumb_func_start sub_81443D0
sub_81443D0:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08144418
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r0, _08144420 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_804790C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08144424 @ =0x081434F5
	str r0, [r5, #0x00]
_08144418:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144420: .4byte 0x0000020E
_08144424: .4byte sub_81434F4
