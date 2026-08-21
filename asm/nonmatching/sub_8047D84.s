	.syntax unified
	.text

	thumb_func_start sub_8047D84
sub_8047D84:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0xCD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	subs r1, #0xC6
	adds r5, r4, r1
	ldrb r1, [r5, #0x00]
	bl sub_8115048
	ldr r0, _08047DC0 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xFF
	strb r0, [r5, #0x00]
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r0, _08047DC4 @ =0x0000FFFF
	strh r0, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08047DC0: .4byte 0x0000020E
_08047DC4: .4byte 0x0000FFFF
