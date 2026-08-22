	.syntax unified
	.text

	thumb_func_start sub_802FAE4
sub_802FAE4:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r7, r2, #0x0
	cmp r1, #0x01
	bne _0802FBA0
	ldr r1, _0802FB94 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x08
	beq _0802FAFE
	b _0802FD64
_0802FAFE:
	ldr r0, _0802FB98 @ =0x0000020A
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r1, [r5, #0x00]
	ldr r3, _0802FB9C @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r2, #0x04
	ldsh r0, [r1, r2]
	cmp r0, #0x64
	ble _0802FB3A
	b _0802FD64
_0802FB3A:
	cmp r7, #0x00
	beq _0802FB8A
	adds r0, r6, #0x0
	bl sub_802DC0C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802FB8A
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r1, #0x0C]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r1, #0x14]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x34]
	str r0, [r1, #0x34]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [r1, #0x38]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x3C]
	str r0, [r1, #0x3C]
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x40]
	str r0, [r1, #0x40]
_0802FB8A:
	adds r0, r6, #0x0
	bl sub_8035974
	b _0802FD64
	.byte 0x00, 0x00
_0802FB94: .4byte 0x00000246
_0802FB98: .4byte 0x0000020A
_0802FB9C: .4byte 0x00000351
_0802FBA0:
	ldr r0, _0802FC08 @ =0x00000246
	adds r4, r6, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x08
	bne _0802FBB0
	b _0802FD64
_0802FBB0:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r3, r6, r1
	ldr r0, [r3, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bhi _0802FBC8
	b _0802FD64
_0802FBC8:
	ldr r0, _0802FC0C @ =0x0000020A
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r3, #0x00]
	ldr r3, _0802FC10 @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1D
	cmp r0, #0x06
	bls _0802FBFE
	b _0802FD64
_0802FBFE:
	lsls r0, r0, #0x02
	ldr r1, _0802FC14 @ =lbl_0802FC18
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0802FC08: .4byte 0x00000246
_0802FC0C: .4byte 0x0000020A
_0802FC10: .4byte 0x00000351
_0802FC14: .4byte lbl_0802FC18
lbl_0802FC18:
	.4byte _0802FD64
	.4byte _0802FC34
	.4byte _0802FD64
	.4byte _0802FC58
	.4byte _0802FD12
	.4byte _0802FD46
	.4byte _0802FD46
_0802FC34:
	movs r2, #128 @ 0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0, #0]
	movs r1, #214 @ 0xd6
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq.n _0802FC4E
	b.n _0802FD64
_0802FC4E:
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_8031650
	b.n _0802FD64
_0802FC58:
	cmp r7, #0
	beq.n _0802FCB6
	movs r2, #129 @ 0x81
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r1, [r4, #0]
	adds r0, r6, #0
	bl sub_802DC0C
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _0802FCB6
	ldr r2, [r4, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1, #0]
	ldr r0, [r0, #12]
	str r0, [r2, #12]
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #16]
	str r0, [r2, #16]
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #20]
	str r0, [r2, #20]
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #24]
	str r0, [r2, #24]
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #52] @ 0x34
	str r0, [r2, #52] @ 0x34
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #56] @ 0x38
	str r0, [r2, #56] @ 0x38
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #60] @ 0x3c
	str r0, [r2, #60] @ 0x3c
	ldr r2, [r4, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #64] @ 0x40
	str r0, [r2, #64] @ 0x40
_0802FCB6:
	ldr r1, [r6, #44] @ 0x2c
	ldrh r2, [r1, #4]
	adds r0, r2, #0
	subs r0, #64 @ 0x40
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #5
	bls.n _0802FCD8
	adds r0, r2, #0
	subs r0, #59 @ 0x3b
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #2
	bls.n _0802FCD8
	adds r0, r6, #0
	bl sub_8033B98
_0802FCD8:
	ldr r2, [r6, #40] @ 0x28
	movs r1, #131 @ 0x83
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq.n _0802FD64
	ldrh r1, [r2, #4]
	subs r0, r1, #5
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #4
	bhi.n _0802FCFE
	adds r0, r2, #0
	bl sub_804FCD4
	b.n _0802FD64
_0802FCFE:
	adds r0, r1, #0
	subs r0, #10
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #2
	bhi.n _0802FD64
	adds r0, r2, #0
	bl sub_80494D4
	b.n _0802FD64
_0802FD12:
	movs r2, #128 @ 0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #4]
	subs r0, #73 @ 0x49
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #2
	bls.n _0802FD64
	movs r2, #218 @ 0xda
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	cmp r0, #10
	bne.n _0802FD3C
	adds r0, r6, #0
	bl sub_8034FE8
	b.n _0802FD64
_0802FD3C:
	ldr r1, [r6, #44] @ 0x2c
	adds r0, r6, #0
	bl sub_8034870
	b.n _0802FD64
_0802FD46:
	ldr r0, [pc, #36] @ (0x802fd6c)
	bl stop_sfx_80195A8
	movs r0, #135 @ 0x87
	bl stop_sfx_80195A8
	movs r0, #219 @ 0xdb
	bl stop_sfx_80195A8
	movs r0, #218 @ 0xda
	bl stop_sfx_80195A8
	movs r0, #218 @ 0xda
	bl stop_sfx_80195A8
_0802FD64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x57, 0x01, 0x00, 0x00
