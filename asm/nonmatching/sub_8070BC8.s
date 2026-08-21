	.syntax unified
	.text

	thumb_func_start sub_8070BC8
sub_8070BC8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x23
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x8C
	lsls r0, r0, #0x09
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	ldr r0, _08070C24 @ =0x00000199
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070C28 @ =0x08070F05
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070C24: .4byte 0x00000199
_08070C28: .4byte sub_8070F04
