	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81368AC
sub_81368AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r6, r5, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r3, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r1, r5, r4
	adds r1, r1, r2
	ldrh r4, [r1, #0x00]
	ldr r7, _08136978 @ =0x00000239
	adds r1, r5, r7
	strb r4, [r1, #0x00]
	adds r3, #0x20
	strb r4, [r3, #0x00]
	adds r2, r6, r2
	ldrh r2, [r2, #0x00]
	ldr r3, _0813697C @ =0x0000023E
	adds r1, r5, r3
	strh r2, [r1, #0x00]
	movs r4, #0xE8
	lsls r4, r4, #0x01
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	movs r7, #0x98
	lsls r7, r7, #0x01
	adds r4, r5, r7
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x03
	movs r3, #0x09
	negs r3, r3
	ands r3, r2
	orrs r3, r1
	strb r3, [r4, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	beq _08136942
	movs r0, #0x04
	ands r3, r0
	cmp r3, #0x00
	beq _081369B0
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _08136980 @ =0x00002710
	bl sub_81DD77C
	ldr r1, _08136984 @ =0x00001387
	cmp r0, r1
	bhi _081369B0
_08136942:
	ldr r1, _08136988 @ =0x00000193
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	adds r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, _0813698C @ =0x00000131
	adds r2, r5, r3
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r7, [r2, #0x00]
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r0, #0x0
	cmp r1, r2
	bne _08136A08
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _0813699C
	cmp r0, #0x01
	bgt _08136990
	cmp r0, #0x00
	beq _08136996
	b _08136A08
	.byte 0x00, 0x00
_08136978: .4byte 0x00000239
_0813697C: .4byte 0x0000023E
_08136980: .4byte 0x00002710
_08136984: .4byte 0x00001387
_08136988: .4byte 0x00000193
_0813698C: .4byte 0x00000131
_08136990:
	cmp r0, #0x02
	beq _081369AA
	b _08136A08
_08136996:
	movs r0, #0x00
	strb r0, [r3, #0x00]
	b _08136A08
_0813699C:
	movs r0, #0x08
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r3, #0x00]
	b _08136A08
_081369AA:
	subs r0, r7, #0x1
	strb r0, [r3, #0x00]
	b _08136A08
_081369B0:
	adds r1, r6, #0x0
	adds r1, #0x93
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	adds r3, r1, #0x0
	cmp r0, #0x00
	bge _08136A08
	adds r2, r6, #0x0
	adds r2, #0x30
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _081369EC
	cmp r0, #0x01
	bgt _081369DA
	cmp r0, #0x00
	beq _081369E0
	b _08136A08
_081369DA:
	cmp r0, #0x02
	beq _081369FC
	b _08136A08
_081369E0:
	adds r0, r6, #0x0
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	b _08136A08
_081369EC:
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	adds r0, #0x02
	strb r0, [r3, #0x00]
	b _08136A08
_081369FC:
	movs r0, #0x00
	strb r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
_08136A08:
	ldrb r0, [r3, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x92
	strb r0, [r2, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	lsls r1, r1, #0x01
	adds r0, r6, #0x0
	adds r0, #0x32
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x01
	add r4, r8
	strh r0, [r4, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	lsls r1, r1, #0x01
	adds r0, r6, #0x0
	adds r0, #0x52
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x01
	add r3, r8
	strh r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08136A48
	adds r1, #0xFF
_08136A48:
	asrs r1, r1, #0x08
	movs r0, #0xB2
	lsls r0, r0, #0x01
	add r0, r8
	strh r1, [r0, #0x00]
	movs r7, #0x00
	ldsh r2, [r4, r7]
	lsls r2, r2, #0x08
	movs r0, #0x00
	ldsh r3, [r3, r0]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r5, #0x0
	bl sub_81382A8
	ldr r0, _08136A80 @ =0x08139759
	mov r1, r9
	str r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08136A80: .4byte sub_8139758
	thumb_func_start sub_8136A84
sub_8136A84:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r5, #0x00
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08136AA0
	adds r0, r4, #0x0
	bl sub_81381D4
	b _08136AB4
_08136AA0:
	movs r1, #0x00
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _08136AB2
	movs r1, #0x01
_08136AB2:
	adds r5, r1, #0x0
_08136AB4:
	ldr r1, _08136ACC @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08136AD0
	adds r0, r4, #0x0
	bl sub_81385A8
	b _08136ADE
	.byte 0x00, 0x00
_08136ACC: .4byte 0x000002B5
_08136AD0:
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08136ADE:
	cmp r5, #0x00
	beq _08136B28
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08136B24
	ldr r1, _08136B1C @ =0x00000137
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r4, #0x0
	bl sub_8047364
	ldr r0, _08136B20 @ =0x0813B1E9
	b _08136B26
	.byte 0x00, 0x00
_08136B1C: .4byte 0x00000137
_08136B20: .4byte sub_813B1E8
_08136B24:
	ldr r0, [r6, #0x04]
_08136B26:
	str r0, [r6, #0x00]
_08136B28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8136B30
sub_8136B30:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08136B5A
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_08136B5A:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	ldr r2, _08136B94 @ =0x083A05EC
	ldr r1, _08136B98 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08136BCC
	cmp r0, #0x01
	bgt _08136B9C
	cmp r0, #0x00
	beq _08136BA0
	b _08136BCC
	.byte 0x00, 0x00
_08136B94: .4byte 0x083A05EC
_08136B98: .4byte 0x00000216
_08136B9C:
	cmp r0, #0x02
	bne _08136BCC
_08136BA0:
	ldr r1, [r4, #0x0C]
	ldr r0, [r3, #0x0C]
	cmp r1, r0
	ble _08136BAE
	movs r2, #0x80
	lsls r2, r2, #0x18
	b _08136BB4
_08136BAE:
	cmp r1, r0
	bge _08136BC4
	ldr r2, _08136BC0 @ =0x000FFFFF
_08136BB4:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_81378CC
	b _08136C0E
_08136BC0: .4byte 0x000FFFFF
_08136BC4:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r7, r0
	b _08136BEE
_08136BCC:
	ldr r1, [r4, #0x10]
	ldr r0, [r3, #0x10]
	cmp r1, r0
	ble _08136BE4
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_81378CC
	b _08136C0E
_08136BE4:
	cmp r1, r0
	blt _08136C02
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r7, r1
_08136BEE:
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x04]
	str r0, [r6, #0x00]
	b _08136C2C
_08136C02:
	ldr r3, _08136C34 @ =0x000FFFFF
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_81378CC
_08136C0E:
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _08136C38 @ =0x08136D81
	str r0, [r6, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
_08136C2C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08136C34: .4byte 0x000FFFFF
_08136C38: .4byte sub_8136D80
	thumb_func_start sub_8136C3C
sub_8136C3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0x0
	mov r8, r2
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	ldrb r4, [r5, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_8047364
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8047258
	adds r0, r5, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r7, #0x01
	lsls r4, r4, #0x06
	ldrb r1, [r5, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #0x11]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08136CD4
	ldr r0, _08136CCC @ =0x0813B1A5
	mov r1, r8
	str r0, [r1, #0x00]
	subs r2, #0x26
	adds r1, r6, r2
	ldr r0, _08136CD0 @ =0x081392CD
	str r0, [r1, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08136CF2
_08136CCC: .4byte sub_813B1A4
_08136CD0: .4byte sub_81392CC
_08136CD4:
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _08136CFC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
_08136CF2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08136CFC: .4byte 0x0000FBFF
	thumb_func_start sub_8136D00
sub_8136D00:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_81390AC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r3, r4, r1
	strh r0, [r3, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	orrs r1, r0
	movs r0, #0x02
	negs r0, r0
	ands r1, r0
	strb r1, [r2, #0x00]
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08136D5C
	ldr r0, _08136D58 @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _08136D74
	.byte 0x00, 0x00
_08136D58: .4byte sub_813B1E8
_08136D5C:
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _08136D7C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
_08136D74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08136D7C: .4byte 0x0000FBFF
	thumb_func_start sub_8136D80
sub_8136D80:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	beq _08136D98
	b _08136EDC
_08136D98:
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08136DBC
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_08136DBC:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	ldr r2, _08136DF4 @ =0x083A05EC
	ldr r1, _08136DF8 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08136E6C
	cmp r0, #0x01
	bgt _08136DFC
	cmp r0, #0x00
	beq _08136E00
	b _08136E6C
_08136DF4: .4byte 0x083A05EC
_08136DF8: .4byte 0x00000216
_08136DFC:
	cmp r0, #0x02
	bne _08136E6C
_08136E00:
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	blt _08136E1C
	ldr r0, [r4, #0x0C]
	ldr r3, [r3, #0x0C]
	cmp r0, r3
	blt _08136EF4
	movs r0, #0x00
	ldsh r2, [r1, r0]
	b _08136E2A
_08136E1C:
	ldr r0, [r4, #0x0C]
	ldr r3, [r3, #0x0C]
	cmp r0, r3
	bge _08136EF4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r2, r0
_08136E2A:
	ldr r0, [r4, #0x34]
	subs r1, r0, r2
	adds r5, r0, #0x0
	cmp r1, r3
	bge _08136E44
	adds r0, r5, r2
	cmp r0, r3
	ble _08136E44
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	b _08136E56
_08136E44:
	movs r2, #0xB3
	lsls r2, r2, #0x02
	adds r1, r4, r2
	adds r2, #0x0C
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r0, r5, r0
	str r0, [r1, #0x00]
_08136E56:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	b _08136EF4
_08136E6C:
	ldr r0, _08136E88 @ =0x000002DA
	adds r1, r4, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	blt _08136E8C
	ldr r0, [r4, #0x10]
	ldr r3, [r3, #0x10]
	cmp r0, r3
	blt _08136EF4
	movs r0, #0x00
	ldsh r2, [r1, r0]
	b _08136E9A
	.byte 0x00, 0x00
_08136E88: .4byte 0x000002DA
_08136E8C:
	ldr r0, [r4, #0x10]
	ldr r3, [r3, #0x10]
	cmp r0, r3
	bge _08136EF4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r2, r0
_08136E9A:
	ldr r0, [r4, #0x38]
	subs r1, r0, r2
	adds r5, r0, #0x0
	cmp r1, r3
	bge _08136EB4
	adds r0, r5, r2
	cmp r0, r3
	ble _08136EB4
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	b _08136EC6
_08136EB4:
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	adds r2, #0x0A
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r0, r5, r0
	str r0, [r1, #0x00]
_08136EC6:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	b _08136EF4
_08136EDC:
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
	ldr r0, [r6, #0x04]
	str r0, [r6, #0x00]
_08136EF4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8136EFC
sub_8136EFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r7, r0
	movs r1, #0xE2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xDC
	lsls r2, r2, #0x01
	adds r5, r7, r2
	strh r0, [r5, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	movs r6, #0xDD
	lsls r6, r6, #0x01
	adds r6, r6, r7
	mov r8, r6
	strh r0, [r6, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0F
	movs r3, #0x84
	lsls r3, r3, #0x01
	adds r1, r7, r3
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	ldr r6, _08136FA8 @ =0x00000239
	adds r1, r7, r6
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r4, r4, r0
	ldrh r1, [r4, #0x00]
	ldr r2, _08136FAC @ =0x0000023E
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r3, #0x00
	ldsh r2, [r5, r3]
	lsls r2, r2, #0x08
	mov r6, r8
	movs r0, #0x00
	ldsh r3, [r6, r0]
	lsls r3, r3, #0x08
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r7, #0x0
	bl sub_81382A8
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08136FB0 @ =0x08139365
	mov r2, r9
	str r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08136FA8: .4byte 0x00000239
_08136FAC: .4byte 0x0000023E
_08136FB0: .4byte sub_8139364
	thumb_func_start sub_8136FB4
sub_8136FB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081370B4
	adds r0, r4, #0x0
	bl sub_80473DC
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813704C @ =0x08139261
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x54
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x2C]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	mov r8, r0
	ands r0, r1
	cmp r0, #0x00
	bne _08137050
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r6, #0x06
	ands r6, r0
	cmp r6, #0x00
	bne _08137050
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	b _081370AA
_0813704C: .4byte sub_8139260
_08137050:
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x30]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r7, #0x01
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081370AA
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r6, #0x06
	ands r6, r0
	cmp r6, #0x00
	bne _081370AA
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r3, r3, r0
	str r7, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
_081370AA:
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	movs r0, #0x78
	strh r0, [r1, #0x00]
_081370B4:
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81370C4
sub_81370C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r0, #0x58
	add r0, r8
	mov r10, r0
	movs r4, #0x80
	lsls r4, r4, #0x01
	add r4, r8
	mov r1, r8
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _081370EC
	adds r0, #0xFF
_081370EC:
	asrs r6, r0, #0x08
	mov r2, r8
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _081370F8
	adds r0, #0xFF
_081370F8:
	asrs r7, r0, #0x08
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r1, #0x98
	lsls r1, r1, #0x01
	add r1, r8
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	mov r9, r1
	cmp r5, #0x03
	bls _081371AA
	movs r0, #0x9B
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r0, [r0, #0x00]
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	muls r0, r1
	movs r5, #0x00
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	subs r0, r7, r2
	mov r12, r0
	movs r1, #0x38
	ldsh r0, [r4, r1]
	cmp r12, r0
	ble _08137146
	movs r0, #0x00
	movs r5, #0x01
	str r0, [sp, #0x000]
_08137146:
	adds r0, r7, r2
	mov r12, r0
	movs r1, #0x3A
	ldsh r0, [r4, r1]
	cmp r12, r0
	bge _08137160
	adds r0, r5, #0x0
	adds r1, r0, #0x1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x02
	add r0, sp
	str r3, [r0, #0x00]
_08137160:
	subs r1, r6, r2
	movs r3, #0x3C
	ldsh r0, [r4, r3]
	cmp r1, r0
	ble _0813717A
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x02
	str r0, [r1, #0x00]
_0813717A:
	adds r1, r6, r2
	movs r2, #0x3E
	ldsh r0, [r4, r2]
	cmp r1, r0
	bge _08137194
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x03
	str r0, [r1, #0x00]
_08137194:
	cmp r5, #0x00
	beq _08137282
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	lsls r0, r0, #0x02
	add r0, sp
	ldrh r5, [r0, #0x00]
_081371AA:
	lsrs r0, r5, #0x01
	muls r6, r0
	cmp r0, #0x00
	beq _081371B4
	movs r7, #0x00
_081371B4:
	cmp r5, #0x01
	beq _081371E2
	cmp r5, #0x01
	bgt _081371C2
	cmp r5, #0x00
	beq _081371CC
	b _08137222
_081371C2:
	cmp r5, #0x02
	beq _081371F8
	cmp r5, #0x03
	beq _0813720E
	b _08137222
_081371CC:
	mov r3, r9
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	subs r1, r7, r2
	movs r3, #0x38
	ldsh r0, [r4, r3]
	subs r7, r0, r7
	cmp r1, r0
	blt _08137222
	negs r7, r2
	b _08137222
_081371E2:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r7, r2
	movs r3, #0x3A
	ldsh r0, [r4, r3]
	subs r7, r0, r7
	cmp r1, r0
	bgt _08137222
	adds r7, r2, #0x0
	b _08137222
_081371F8:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	subs r1, r6, r2
	movs r3, #0x3C
	ldsh r0, [r4, r3]
	subs r6, r0, r6
	cmp r1, r0
	blt _08137222
	negs r6, r2
	b _08137222
_0813720E:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r6, r2
	movs r3, #0x3E
	ldsh r0, [r4, r3]
	subs r6, r0, r6
	cmp r1, r0
	bgt _08137222
	adds r6, r2, #0x0
_08137222:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	mov r12, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x01
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	ldr r0, _08137294 @ =0x00000239
	add r0, r8
	movs r2, #0x00
	mov r9, r2
	strb r3, [r0, #0x00]
	mov r2, r12
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r1, r4, r1
	ldrh r1, [r1, #0x00]
	ldr r0, _08137298 @ =0x0000023E
	add r0, r8
	strh r1, [r0, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	strh r5, [r0, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x01
	add r0, r10
	strh r6, [r0, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x01
	add r0, r10
	strh r7, [r0, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x01
	add r0, r10
	mov r3, r9
	strh r3, [r0, #0x00]
_08137282:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08137294: .4byte 0x00000239
_08137298: .4byte 0x0000023E
	thumb_func_start sub_813729C
sub_813729C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r5
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r3, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r1, r5, r4
	adds r1, r1, r2
	ldrh r4, [r1, #0x00]
	ldr r6, _081373A0 @ =0x00000239
	adds r1, r5, r6
	strb r4, [r1, #0x00]
	adds r3, #0x20
	strb r4, [r3, #0x00]
	add r2, r8
	ldrh r2, [r2, #0x00]
	ldr r3, _081373A4 @ =0x0000023E
	adds r1, r5, r3
	strh r2, [r1, #0x00]
	movs r4, #0xE8
	lsls r4, r4, #0x01
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	subs r6, #0xA7
	adds r4, r5, r6
	ldrb r0, [r4, #0x00]
	ldr r2, _081373A8 @ =0x00000193
	adds r1, r5, r2
	strb r0, [r1, #0x00]
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	movs r3, #0x99
	lsls r3, r3, #0x01
	adds r0, r5, r3
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	adds r6, #0x26
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	subs r2, #0x41
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r3, #0x88
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _0813732E
	adds r1, #0xFF
_0813732E:
	asrs r1, r1, #0x08
	movs r6, #0xDE
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r7, r5, r0
	ldrb r1, [r7, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x01
	adds r6, r5, r2
	ldrb r1, [r6, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _08137372
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081373E0
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _081373AC @ =0x00002710
	bl sub_81DD77C
	ldr r1, _081373B0 @ =0x00001387
	cmp r0, r1
	bhi _081373E0
_08137372:
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r3, _081373B4 @ =0x00000131
	adds r1, r5, r3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r2, [r1, #0x00]
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bne _08137436
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _081373C4
	cmp r0, #0x01
	bgt _081373B8
	cmp r0, #0x00
	beq _081373BE
	b _08137436
_081373A0: .4byte 0x00000239
_081373A4: .4byte 0x0000023E
_081373A8: .4byte 0x00000193
_081373AC: .4byte 0x00002710
_081373B0: .4byte 0x00001387
_081373B4: .4byte 0x00000131
_081373B8:
	cmp r0, #0x02
	beq _081373D2
	b _08137436
_081373BE:
	movs r0, #0x00
	strb r0, [r4, #0x00]
	b _08137436
_081373C4:
	movs r0, #0x08
	orrs r0, r1
	strb r0, [r6, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x02
	strb r0, [r4, #0x00]
	b _08137436
_081373D2:
	subs r0, r2, #0x1
	strb r0, [r4, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r7, #0x00]
	b _08137436
_081373E0:
	mov r1, r8
	adds r1, #0x92
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _08137436
	mov r2, r8
	adds r2, #0x30
	ldrb r3, [r2, #0x00]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _0813741A
	cmp r0, #0x01
	bgt _08137408
	cmp r0, #0x00
	beq _0813740E
	b _08137436
_08137408:
	cmp r0, #0x02
	beq _0813742A
	b _08137436
_0813740E:
	mov r0, r8
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	b _08137436
_0813741A:
	movs r0, #0x09
	negs r0, r0
	ands r0, r3
	strb r0, [r2, #0x00]
	ldrb r0, [r1, #0x00]
	adds r0, #0x02
	strb r0, [r1, #0x00]
	b _08137436
_0813742A:
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
_08137436:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8137440
sub_8137440:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0xE6
	lsls r1, r1, #0x01
	adds r2, r5, r1
	lsls r0, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r1, r5, r3
	adds r1, r1, r0
	movs r4, #0x00
	ldsh r0, [r1, r4]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r3, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r1, r5, r4
	adds r1, r1, r2
	ldrh r4, [r1, #0x00]
	adds r3, #0x20
	strb r4, [r3, #0x00]
	ldr r3, _081374CC @ =0x00000239
	adds r1, r5, r3
	strb r4, [r1, #0x00]
	adds r2, r6, r2
	ldrh r2, [r2, #0x00]
	ldr r4, _081374D0 @ =0x0000023E
	adds r1, r5, r4
	strh r2, [r1, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081374D4
	mov r1, sp
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0x04
	b _081374DC
_081374CC: .4byte 0x00000239
_081374D0: .4byte 0x0000023E
_081374D4:
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r1, sp
	movs r0, #0x06
_081374DC:
	strb r0, [r1, #0x01]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	add r0, sp
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_80478AC
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldr r0, [r5, #0x0C]
	str r0, [r2, #0x00]
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _08137530
	cmp r0, #0x02
	bhi _08137520
	cmp r0, #0x00
	beq _0813752A
	b _08137548
_08137520:
	cmp r0, #0x04
	beq _08137536
	cmp r0, #0x06
	beq _08137540
	b _08137548
_0813752A:
	movs r2, #0x38
	ldsh r0, [r6, r2]
	b _0813753A
_08137530:
	movs r3, #0x3E
	ldsh r0, [r6, r3]
	b _08137544
_08137536:
	movs r4, #0x3A
	ldsh r0, [r6, r4]
_0813753A:
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	b _08137548
_08137540:
	movs r1, #0x3C
	ldsh r0, [r6, r1]
_08137544:
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
_08137548:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8137550
sub_8137550:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r9, r0
	adds r0, #0x58
	str r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x01
	add r2, r9
	str r2, [sp, #0x014]
	mov r3, r9
	ldr r0, [r3, #0x0C]
	cmp r0, #0x00
	bge _08137574
	adds r0, #0xFF
_08137574:
	asrs r6, r0, #0x08
	mov r4, r9
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08137580
	adds r0, #0xFF
_08137580:
	asrs r7, r0, #0x08
	ldr r2, [r1, #0x10]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0813758C
	adds r0, #0xFF
_0813758C:
	asrs r3, r0, #0x08
	ldr r4, [sp, #0x014]
	ldrh r0, [r4, #0x38]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp, #0x014]
	ldrh r0, [r2, #0x3A]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r1, [r1, #0x0C]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _081375B0
	adds r0, #0xFF
_081375B0:
	asrs r2, r0, #0x08
	ldr r3, [sp, #0x014]
	ldrh r0, [r3, #0x3C]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	ldr r4, [sp, #0x014]
	ldrh r0, [r4, #0x3E]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r1, #0x98
	lsls r1, r1, #0x01
	add r1, r9
	adds r1, r1, r0
	movs r0, #0x9B
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r2, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r2
	movs r2, #0x00
	ldsh r4, [r1, r2]
	muls r0, r4
	movs r5, #0x00
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	subs r0, r7, r2
	mov r12, r0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x020]
	cmp r12, r0
	ble _08137610
	movs r0, #0x00
	movs r5, #0x01
	str r0, [sp, #0x000]
_08137610:
	adds r0, r7, r2
	mov r8, r0
	mov r1, r10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x024]
	cmp r8, r0
	bge _0813762E
	adds r0, r5, #0x0
	adds r1, r0, #0x1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x02
	add r0, sp
	str r3, [r0, #0x00]
_0813762E:
	subs r1, r6, r2
	ldr r3, [sp, #0x018]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
	cmp r1, r10
	ble _0813764C
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x02
	str r0, [r1, #0x00]
_0813764C:
	adds r1, r6, r2
	ldr r2, [sp, #0x01C]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	cmp r1, r8
	bge _0813766A
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x03
	str r0, [r1, #0x00]
_0813766A:
	cmp r5, #0x00
	beq _08137734
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	lsls r0, r0, #0x02
	add r0, sp
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r0, r0, #0x11
	muls r6, r0
	cmp r0, #0x00
	beq _0813768E
	movs r7, #0x00
_0813768E:
	cmp r5, #0x01
	beq _081376B4
	cmp r5, #0x01
	bgt _0813769C
	cmp r5, #0x00
	beq _081376A6
	b _081376DC
_0813769C:
	cmp r5, #0x02
	beq _081376C2
	cmp r5, #0x03
	beq _081376D0
	b _081376DC
_081376A6:
	subs r0, r7, r4
	ldr r3, [sp, #0x020]
	subs r7, r3, r7
	cmp r0, r3
	blt _081376DC
	negs r7, r4
	b _081376DC
_081376B4:
	adds r0, r7, r4
	ldr r1, [sp, #0x024]
	subs r7, r1, r7
	cmp r0, r1
	bgt _081376DC
	adds r7, r4, #0x0
	b _081376DC
_081376C2:
	subs r0, r6, r4
	mov r2, r10
	subs r6, r2, r6
	cmp r0, r10
	blt _081376DC
	negs r6, r4
	b _081376DC
_081376D0:
	adds r0, r6, r4
	mov r3, r8
	subs r6, r3, r6
	cmp r0, r8
	bgt _081376DC
	adds r6, r4, #0x0
_081376DC:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	add r1, r9
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x01
	ldr r0, [sp, #0x014]
	adds r0, #0x08
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	ldr r0, _08137744 @ =0x00000239
	add r0, r9
	movs r4, #0x00
	strb r3, [r0, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	ldr r0, [sp, #0x014]
	adds r1, r0, r1
	ldrh r1, [r1, #0x00]
	ldr r0, _08137748 @ =0x0000023E
	add r0, r9
	strh r1, [r0, #0x00]
	ldr r1, [sp, #0x010]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r5, [r0, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x01
	adds r0, r1, r3
	strh r6, [r0, #0x00]
	subs r2, #0x16
	adds r0, r1, r2
	strh r7, [r0, #0x00]
	adds r3, #0x04
	adds r0, r1, r3
	strh r4, [r0, #0x00]
_08137734:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08137744: .4byte 0x00000239
_08137748: .4byte 0x0000023E
	thumb_func_start sub_813774C
sub_813774C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	mov r8, r1
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r7
	mov r10, r1
	movs r2, #0xA3
	lsls r2, r2, #0x01
	adds r4, r7, r2
	adds r1, r4, #0x0
	movs r6, #0x08
	movs r5, #0x00
_08137776:
	movs r3, #0x00
	ldsh r0, [r1, r3]
	adds r5, r5, r0
	adds r1, #0x02
	lsls r0, r6, #0x10
	ldr r2, _081378B8 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _08137776
	movs r6, #0x00
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	adds r5, r0, #0x0
	movs r3, #0x00
	ldsh r0, [r4, r3]
	mov r1, r10
	adds r1, #0x3E
	str r1, [sp, #0x004]
	mov r2, r10
	adds r2, #0x08
	str r2, [sp, #0x000]
	cmp r5, r0
	ble _081377C4
_081377AE:
	subs r5, r5, r0
	adds r4, #0x02
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r5, r0
	bgt _081377AE
_081377C4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x20
	bl sub_81DD77C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x0B
	subs r1, #0x40
	mov r2, r8
	ldrb r2, [r2, #0x02]
	adds r1, r1, r2
	adds r1, r1, r0
	subs r1, #0x10
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x004]
	adds r0, r3, r0
	movs r4, #0x00
	ldsh r0, [r0, r4]
	lsls r2, r0, #0x04
	adds r6, r2, #0x0
	mov r1, r8
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08137808
	adds r0, #0xFF
_08137808:
	asrs r4, r0, #0x08
	ldr r0, _081378BC @ =0x08198584
	movs r1, #0xFF
	ands r1, r5
	lsls r3, r1, #0x01
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	muls r0, r2
	cmp r0, #0x00
	bge _08137822
	ldr r2, _081378C0 @ =0x00003FFF
	adds r0, r0, r2
_08137822:
	asrs r0, r0, #0x0E
	adds r0, r4, r0
	movs r1, #0xB0
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	mov r4, r8
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08137838
	adds r0, #0xFF
_08137838:
	asrs r1, r0, #0x08
	ldr r0, _081378C4 @ =0x08198504
	adds r0, r3, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r6
	cmp r0, #0x00
	bge _0813784C
	ldr r3, _081378C0 @ =0x00003FFF
	adds r0, r0, r3
_0813784C:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	movs r2, #0xB1
	lsls r2, r2, #0x01
	add r2, r9
	strh r0, [r2, #0x00]
	ldr r1, [r7, #0x14]
	cmp r1, #0x00
	bge _08137860
	adds r1, #0xFF
_08137860:
	asrs r1, r1, #0x08
	movs r0, #0xB2
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xBC
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x0F
	ldr r3, [sp, #0x000]
	adds r1, r3, r0
	ldrh r3, [r1, #0x00]
	subs r4, #0x5B
	adds r1, r7, r4
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	add r0, r10
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r2, _081378C8 @ =0x0000023E
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081378B8: .4byte 0xFFFF0000
_081378BC: .4byte 0x08198584
_081378C0: .4byte 0x00003FFF
_081378C4: .4byte 0x08198504
_081378C8: .4byte 0x0000023E
	thumb_func_start sub_81378CC
sub_81378CC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r6, r4, #0x0
	adds r6, #0x58
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	bge _081378E0
	adds r1, #0xFF
_081378E0:
	asrs r1, r1, #0x08
	movs r7, #0xE2
	lsls r7, r7, #0x01
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _081378F2
	adds r0, #0xFF
_081378F2:
	asrs r0, r0, #0x08
	movs r7, #0xE3
	lsls r7, r7, #0x01
	adds r1, r4, r7
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137908
	adds r1, #0xFF
_08137908:
	asrs r1, r1, #0x08
	movs r7, #0xE4
	lsls r7, r7, #0x01
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	cmp r5, #0x01
	bne _0813791E
	ldr r0, [r4, #0x0C]
	adds r2, r2, r0
	ldr r0, [r4, #0x10]
	adds r3, r3, r0
_0813791E:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r4, r5
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	movs r7, #0xB3
	lsls r7, r7, #0x02
	adds r0, r4, r7
	str r2, [r0, #0x00]
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	cmp r2, r0
	ble _08137954
	ldr r2, _08137950 @ =0x0000023E
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	b _0813796A
_08137950: .4byte 0x0000023E
_08137954:
	cmp r2, r0
	bge _08137968
	ldr r5, _08137964 @ =0x0000023E
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	negs r1, r0
	b _0813796A
	.byte 0x00, 0x00
_08137964: .4byte 0x0000023E
_08137968:
	movs r1, #0x00
_0813796A:
	ldr r7, _08137988 @ =0x00000242
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r3, r0
	ble _08137990
	ldr r3, _0813798C @ =0x0000023E
	adds r0, r4, r3
	ldrh r2, [r0, #0x00]
	b _081379A6
	.byte 0x00, 0x00
_08137988: .4byte 0x00000242
_0813798C: .4byte 0x0000023E
_08137990:
	cmp r3, r0
	bge _081379A4
	ldr r5, _081379A0 @ =0x0000023E
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	negs r2, r0
	b _081379A6
	.byte 0x00, 0x00
_081379A0: .4byte 0x0000023E
_081379A4:
	movs r2, #0x00
_081379A6:
	movs r7, #0x91
	lsls r7, r7, #0x02
	adds r0, r4, r7
	movs r1, #0x00
	strh r2, [r0, #0x00]
	ldr r0, _081379E4 @ =0x000002DA
	adds r3, r4, r0
	strh r2, [r3, #0x00]
	ldr r2, _081379E8 @ =0x000002DE
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r5, #0xB6
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _081379EC
	movs r7, #0x00
	ldsh r0, [r2, r7]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _081379EE
	.byte 0x00, 0x00
_081379E4: .4byte 0x000002DA
_081379E8: .4byte 0x000002DE
_081379EC:
	movs r0, #0xFF
_081379EE:
	strb r0, [r4, #0x02]
	ldr r3, _08137A48 @ =0x03001038
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r4, r5
	movs r7, #0xAF
	lsls r7, r7, #0x02
	adds r1, r4, r7
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	subs r5, #0x0C
	adds r2, r4, r5
	ldr r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	adds r7, r1, #0x0
	muls r7, r1
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	movs r2, #0xBA
	lsls r2, r2, #0x01
	adds r1, r6, r2
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08137A48: .4byte 0x03001038
	thumb_func_start sub_8137A4C
sub_8137A4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	ldr r1, [r6, #0x0C]
	cmp r1, #0x00
	bge _08137A68
	adds r1, #0xFF
_08137A68:
	asrs r1, r1, #0x08
	movs r5, #0xE2
	lsls r5, r5, #0x01
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _08137A7A
	adds r0, #0xFF
_08137A7A:
	asrs r0, r0, #0x08
	movs r5, #0xE3
	lsls r5, r5, #0x01
	adds r1, r6, r5
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137A90
	adds r1, #0xFF
_08137A90:
	asrs r1, r1, #0x08
	movs r5, #0xE4
	lsls r5, r5, #0x01
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	cmp r4, #0x01
	bne _08137AA6
	ldr r0, [r6, #0x0C]
	adds r2, r2, r0
	ldr r0, [r6, #0x10]
	adds r3, r3, r0
_08137AA6:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r6, r5
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r5, #0x10
	adds r0, r6, r5
	str r3, [r0, #0x00]
	ldr r0, [r6, #0x0C]
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08137AD2
	adds r0, #0x03
_08137AD2:
	asrs r0, r0, #0x02
	ldr r1, _08137B74 @ =0x00000242
	adds r1, r1, r6
	mov r8, r1
	strh r0, [r1, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x10]
	subs r1, r3, r0
	cmp r1, #0x00
	bge _08137AEE
	adds r1, #0x03
_08137AEE:
	asrs r1, r1, #0x02
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r7, r6, r3
	strh r1, [r7, #0x00]
	ldr r5, _08137B78 @ =0x000002DA
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	ldr r5, _08137B7C @ =0x03001038
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	movs r2, #0x00
	ldsh r1, [r7, r2]
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	ldr r0, _08137B80 @ =0x0819832C
	ldr r1, _08137B84 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r0
	ldr r5, _08137B88 @ =0x0000023E
	adds r0, r6, r5
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, r4, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x02
	adds r5, #0xA2
	adds r1, r6, r5
	strh r0, [r1, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x01
	adds r0, r6, r1
	lsls r4, r4, #0x02
	str r4, [r0, #0x00]
	ldr r2, _08137B8C @ =0x000002DE
	adds r1, r6, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r7, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08137B90
	movs r5, #0x00
	ldsh r0, [r3, r5]
	movs r2, #0x00
	ldsh r1, [r7, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08137B92
_08137B74: .4byte 0x00000242
_08137B78: .4byte 0x000002DA
_08137B7C: .4byte 0x03001038
_08137B80: .4byte 0x0819832C
_08137B84: .4byte 0x08198220
_08137B88: .4byte 0x0000023E
_08137B8C: .4byte 0x000002DE
_08137B90:
	movs r0, #0xFF
_08137B92:
	strb r0, [r6, #0x02]
	mov r2, r9
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8137BB0
sub_8137BB0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, [r5, #0x0C]
	cmp r1, #0x00
	bge _08137BC0
	adds r1, #0xFF
_08137BC0:
	asrs r1, r1, #0x08
	movs r6, #0xE2
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08137BD2
	adds r0, #0xFF
_08137BD2:
	asrs r0, r0, #0x08
	movs r6, #0xE3
	lsls r6, r6, #0x01
	adds r1, r5, r6
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137BE8
	adds r1, #0xFF
_08137BE8:
	asrs r1, r1, #0x08
	movs r6, #0xE4
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	cmp r4, #0x01
	bne _08137BFE
	ldr r0, [r5, #0x0C]
	adds r2, r2, r0
	ldr r0, [r5, #0x10]
	adds r3, r3, r0
_08137BFE:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r6, #0xB4
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r2, [r0, #0x00]
	subs r6, #0x10
	adds r0, r5, r6
	str r3, [r0, #0x00]
	ldr r4, _08137CC4 @ =0x03001038
	ldr r0, [r5, #0x0C]
	subs r2, r2, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08137C2E
	adds r0, r2, #0x3
_08137C2E:
	asrs r0, r0, #0x02
	muls r0, r2
	cmp r0, #0x00
	bge _08137C38
	adds r0, #0x03
_08137C38:
	asrs r2, r0, #0x02
	ldr r0, [r5, #0x10]
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08137C46
	adds r0, r3, #0x3
_08137C46:
	asrs r0, r0, #0x02
	muls r0, r3
	cmp r0, #0x00
	bge _08137C50
	adds r0, #0x03
_08137C50:
	asrs r0, r0, #0x02
	adds r0, r2, r0
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r0, _08137CC8 @ =0x0000023E
	adds r2, r5, r0
	ldrh r3, [r2, #0x00]
	movs r6, #0xB6
	lsls r6, r6, #0x02
	adds r0, r5, r6
	strh r3, [r0, #0x00]
	ldrh r3, [r2, #0x00]
	subs r6, #0x96
	adds r0, r5, r6
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r3, [r2, r0]
	lsls r1, r1, #0x03
	adds r1, r3, r1
	ldr r0, _08137CCC @ =0x0819832C
	ldr r2, _08137CD0 @ =0x08198220
	subs r0, r0, r2
	ldr r4, [r4, #0x00]
	adds r4, r4, r0
	negs r0, r3
	muls r0, r3
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r4
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r5, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08137CA6
	movs r0, #0x01
	str r0, [r1, #0x00]
_08137CA6:
	ldr r3, _08137CD4 @ =0x000002DE
	adds r1, r5, r3
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xF8
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x04
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08137CC4: .4byte 0x03001038
_08137CC8: .4byte 0x0000023E
_08137CCC: .4byte 0x0819832C
_08137CD0: .4byte 0x08198220
_08137CD4: .4byte 0x000002DE
	thumb_func_start sub_8137CD8
sub_8137CD8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r12, r1
	adds r7, r4, #0x0
	adds r7, #0x58
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	bge _08137CEE
	adds r1, #0xFF
_08137CEE:
	asrs r1, r1, #0x08
	movs r5, #0xE2
	lsls r5, r5, #0x01
	adds r0, r4, r5
	movs r5, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08137D02
	adds r0, #0xFF
_08137D02:
	asrs r0, r0, #0x08
	movs r6, #0xE3
	lsls r6, r6, #0x01
	adds r1, r4, r6
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137D18
	adds r1, #0xFF
_08137D18:
	asrs r1, r1, #0x08
	movs r6, #0xE4
	lsls r6, r6, #0x01
	adds r0, r4, r6
	strh r1, [r0, #0x00]
	mov r0, r12
	cmp r0, #0x01
	bne _08137D30
	ldr r0, [r4, #0x0C]
	adds r2, r2, r0
	ldr r0, [r4, #0x10]
	adds r3, r3, r0
_08137D30:
	movs r6, #0xAF
	lsls r6, r6, #0x02
	adds r1, r4, r6
	str r5, [r1, #0x00]
	adds r6, #0x04
	adds r0, r4, r6
	str r5, [r0, #0x00]
	adds r6, #0x0C
	adds r0, r4, r6
	str r2, [r0, #0x00]
	adds r6, #0x04
	adds r0, r4, r6
	str r3, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	cmp r2, r0
	ble _08137D5C
	ldr r1, _08137D58 @ =0x0000023E
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	b _08137D74
_08137D58: .4byte 0x0000023E
_08137D5C:
	cmp r2, r0
	bge _08137D70
	ldr r2, _08137D6C @ =0x0000023E
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	negs r1, r0
	b _08137D74
	.byte 0x00, 0x00
_08137D6C: .4byte 0x0000023E
_08137D70:
	str r5, [r1, #0x00]
	movs r1, #0x00
_08137D74:
	ldr r5, _08137D90 @ =0x00000242
	adds r0, r4, r5
	strh r1, [r0, #0x00]
	movs r6, #0xB6
	lsls r6, r6, #0x02
	adds r0, r4, r6
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r3, r0
	ble _08137D98
	ldr r1, _08137D94 @ =0x0000023E
	adds r0, r4, r1
	ldrh r2, [r0, #0x00]
	b _08137DB8
_08137D90: .4byte 0x00000242
_08137D94: .4byte 0x0000023E
_08137D98:
	cmp r3, r0
	bge _08137DAC
	ldr r2, _08137DA8 @ =0x0000023E
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	negs r2, r0
	b _08137DB8
	.byte 0x00, 0x00
_08137DA8: .4byte 0x0000023E
_08137DAC:
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r1, r4, r3
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r2, #0x00
_08137DB8:
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r0, r4, r5
	movs r1, #0x00
	strh r2, [r0, #0x00]
	ldr r6, _08137DF4 @ =0x000002DA
	adds r3, r4, r6
	strh r2, [r3, #0x00]
	ldr r2, _08137DF8 @ =0x000002DE
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r5, #0x94
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08137DFC
	movs r6, #0x00
	ldsh r0, [r2, r6]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08137DFE
	.byte 0x00, 0x00
_08137DF4: .4byte 0x000002DA
_08137DF8: .4byte 0x000002DE
_08137DFC:
	movs r0, #0xFF
_08137DFE:
	strb r0, [r4, #0x02]
	ldr r3, _08137E4C @ =0x03001038
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x0C]
	subs r0, r0, r1
	adds r6, r0, #0x0
	muls r6, r0
	adds r0, r6, #0x0
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	ldr r2, [r4, #0x10]
	subs r1, r1, r2
	adds r5, r1, #0x0
	muls r5, r1
	adds r1, r5, #0x0
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	movs r6, #0xBA
	lsls r6, r6, #0x01
	adds r1, r7, r6
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08137E4C: .4byte 0x03001038
