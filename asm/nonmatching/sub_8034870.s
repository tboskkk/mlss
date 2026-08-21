	.syntax unified
	.text

	thumb_func_start sub_8034870
sub_8034870:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x48
	strh r0, [r5, #0x04]
	ldr r0, _08034948 @ =0x00000351
	mov r8, r0
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	movs r7, #0x40
	orrs r0, r7
	strb r0, [r1, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080348E4
	ldr r2, _0803494C @ =0x00000352
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080348D4
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r4, r6, r3
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1B
	lsrs r2, r2, #0x1F
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_802DDB4
_080348D4:
	movs r3, #0xE2
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	add r1, r8
	ldrb r0, [r1, #0x00]
	orrs r0, r7
	strb r0, [r1, #0x00]
_080348E4:
	ldr r1, _08034950 @ =0x00001002
	adds r0, r5, #0x0
	bl sub_8049000
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r3, [r0, r2]
	adds r0, r5, #0x0
	movs r1, #0x18
	movs r2, #0x75
	bl sub_80400B0
	adds r0, r5, #0x0
	bl sub_80496B4
	movs r3, #0xDB
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x03
	ldr r3, _08034954 @ =0x0000020A
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r2, #0x20
	strb r1, [r2, #0x00]
	ldr r0, _08034958 @ =0x0000020B
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08034948: .4byte 0x00000351
_0803494C: .4byte 0x00000352
_08034950: .4byte 0x00001002
_08034954: .4byte 0x0000020A
_08034958: .4byte 0x0000020B
