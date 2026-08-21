	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813DC54
sub_813DC54:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DD20
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	ldr r2, [r0, #0x0C]
	ldr r1, [r4, #0x0C]
	subs r2, r2, r1
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813DCAC
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0813DCB0
_0813DCAC:
	movs r3, #0x01
	negs r3, r3
_0813DCB0:
	adds r2, r4, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r0
	orrs r1, r3
	strb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x12]
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _0813DD2C @ =0x0813DD31
	str r3, [r7, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
_0813DD20:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813DD2C: .4byte sub_813DD30
	thumb_func_start sub_813DD30
sub_813DD30:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r6, r4, r2
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0813DDC6
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DDA2
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x9B
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r6, #0x00]
	ldrb r0, [r5, #0x12]
	movs r1, #0x09
	negs r1, r1
	ands r1, r0
	strb r1, [r5, #0x12]
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0813DDD0
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x12]
	b _0813DE06
_0813DDA2:
	movs r1, #0x2C
	ldsh r0, [r5, r1]
	cmp r0, #0x7F
	ble _0813DDB6
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r0, #0x14
	strh r0, [r1, #0x00]
	b _0813DE06
_0813DDB6:
	cmp r0, #0x3F
	ble _0813DE06
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x0C
	strh r0, [r1, #0x00]
	b _0813DE06
_0813DDC6:
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813DE06
_0813DDD0:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x08
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x12]
	ldr r3, _0813DE10 @ =0x0813DE15
	str r3, [r7, #0x00]
	mov r0, r8
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
_0813DE06:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813DE10: .4byte sub_813DE14
	thumb_func_start sub_813DE14
sub_813DE14:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DE94
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0813DE60 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813DE68
	ldr r0, _0813DE64 @ =0x0813B1E9
	str r0, [r5, #0x00]
	b _0813DEDE
_0813DE60: .4byte 0x0000020E
_0813DE64: .4byte sub_813B1E8
_0813DE68:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _0813DE90 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0813DEDE
	.byte 0x00, 0x00
_0813DE90: .4byte 0x0000FBFF
_0813DE94:
	movs r1, #0x2C
	ldsh r0, [r2, r1]
	cmp r0, #0x7F
	ble _0813DED0
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x04
	b _0813DEDC
_0813DED0:
	cmp r0, #0x3F
	ble _0813DEDE
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x0C
_0813DEDC:
	strh r0, [r1, #0x00]
_0813DEDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_813DEE4
sub_813DEE4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _0813DF50 @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813DF54 @ =0x0000020D
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813DFA4
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813DF50: .4byte 0x0000033E
_0813DF54: .4byte 0x0000020D
