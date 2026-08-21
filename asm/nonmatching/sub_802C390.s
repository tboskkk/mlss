	.syntax unified
	.text

	thumb_func_start sub_802C390
sub_802C390:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, _0802C3D8 @ =0x0000020A
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	subs r1, #0x8A
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _0802C3BC
	cmp r1, #0x00
	bne _0802C3E0
	ldr r0, _0802C3DC @ =0x0300034C
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x33
	ands r0, r1
	cmp r0, #0x00
	bne _0802C3E0
_0802C3BC:
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrh r3, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	movs r0, #0x38
	negs r0, r0
	cmp r1, r0
	ble _0802C41A
	adds r0, r3, #0x0
	subs r0, #0x08
	strh r0, [r2, #0x00]
	b _0802C41A
_0802C3D8: .4byte 0x0000020A
_0802C3DC: .4byte 0x0300034C
_0802C3E0:
	ldr r1, _0802C420 @ =0x0000020A
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	subs r1, #0x8A
	ands r1, r0
	cmp r1, #0x80
	beq _0802C404
	cmp r1, #0x00
	bne _0802C41A
	ldr r0, _0802C424 @ =0x0300034C
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x33
	ands r0, r1
	cmp r0, #0x00
	beq _0802C41A
_0802C404:
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _0802C41A
	adds r0, r2, #0x0
	adds r0, #0x08
	strh r0, [r1, #0x00]
_0802C41A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802C420: .4byte 0x0000020A
_0802C424: .4byte 0x0300034C
