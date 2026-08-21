	.syntax unified
	.text

	thumb_func_start sub_80504BC
sub_80504BC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r3, #0x0
	ldr r6, [sp, #0x010]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl init_fobj_803FEB8
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _08050510 @ =0x08CDBFC8
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_80FB448
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08050514 @ =0x0000020F
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r6, [r0, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08050510: .4byte 0x08CDBFC8
_08050514: .4byte 0x0000020F
