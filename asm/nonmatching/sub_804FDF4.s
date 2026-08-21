	.syntax unified
	.text

	thumb_func_start sub_804FDF4
sub_804FDF4:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r5, r0, #0x1D
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r6, r0, #0x1D
	ldrh r1, [r4, #0x04]
	subs r0, r1, #0x5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x04
	bhi _0804FE26
	adds r0, r4, #0x0
	bl sub_804FCD4
	b _0804FE38
_0804FE26:
	adds r0, r1, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x02
	bhi _0804FE38
	adds r0, r4, #0x0
	bl sub_80494D4
_0804FE38:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r5, r0
	strb r5, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	orrs r1, r6
	strb r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_8047858
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
