	.syntax unified
	.text

	thumb_func_start sub_814494C
sub_814494C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r6, [r0, #0x00]
	movs r2, #0x58
	adds r2, r2, r7
	mov r8, r2
	movs r3, #0xEA
	lsls r3, r3, #0x01
	adds r2, r7, r3
	ldrh r1, [r2, #0x00]
	cmp r1, #0x07
	bne _08144986
	adds r3, #0xC0
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	movs r3, #0x2C
	ldsh r0, [r0, r3]
	cmp r0, #0xE0
	ble _08144986
	adds r0, r1, #0x1
	strh r0, [r2, #0x00]
_08144986:
	movs r4, #0xBE
	lsls r4, r4, #0x01
	add r4, r8
	ldrh r2, [r4, #0x00]
	cmp r2, #0x05
	bhi _081449F0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r7, r0
	ldr r0, [r5, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081449F0
	adds r0, r2, #0x1
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x06
	bne _081449F0
	ldr r2, _08144B14 @ =0x083A05EC
	ldr r1, _08144B18 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x08
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_081449F0:
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	ldrh r0, [r1, #0x00]
	cmp r0, #0x07
	bhi _081449FE
	b _08144B7E
_081449FE:
	movs r0, #0x00
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xAC
	lsls r1, r1, #0x01
	add r1, r8
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x3A
	movs r4, #0x00
	ldsb r4, [r0, r4]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _08144B1C @ =0x0000020D
	mov r10, r2
	adds r2, r7, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08144B14 @ =0x083A05EC
	ldr r3, _08144B18 @ =0x00000216
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r5, [r1, #0x00]
	movs r0, #0x01
	mov r9, r0
	movs r1, #0x01
	ands r1, r5
	adds r1, #0x0C
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r6, #0x0
	movs r1, #0x0C
	bl sub_804790C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_804794C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	mov r3, r9
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x09
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x00]
	mov r2, r10
	adds r2, r6, r2
	ldrb r0, [r2, #0x00]
	ands r1, r0
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	subs r0, #0x20
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r3, #0x83
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldr r0, [r2, #0x00]
	ldr r1, _08144B20 @ =0xFFFC7FFF
	ands r0, r1
	str r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r7, #0x0C]
	ldr r4, [r7, #0x10]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r3, r0, r1
	cmp r5, #0x01
	beq _08144B34
	cmp r5, #0x01
	bgt _08144B24
	cmp r5, #0x00
	beq _08144B2A
	b _08144B48
	.byte 0x00, 0x00
_08144B14: .4byte 0x083A05EC
_08144B18: .4byte 0x00000216
_08144B1C: .4byte 0x0000020D
_08144B20: .4byte 0xFFFC7FFF
_08144B24:
	cmp r5, #0x02
	beq _08144B42
	b _08144B48
_08144B2A:
	ldr r0, _08144B30 @ =0xFFFFFF00
	adds r4, r4, r0
	b _08144B52
_08144B30: .4byte 0xFFFFFF00
_08144B34:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r2, r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r4, r0
	b _08144B52
_08144B42:
	movs r1, #0xC0
	lsls r1, r1, #0x02
	b _08144B50
_08144B48:
	ldr r0, _08144B90 @ =0xFFFFF800
	adds r2, r2, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
_08144B50:
	adds r4, r4, r1
_08144B52:
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r1, r2, #0x0
	adds r2, r4, #0x0
	bl sub_8047F60
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	movs r0, #0xA2
	lsls r0, r0, #0x01
	add r0, r8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r0, _08144B94 @ =0x08144B99
	str r0, [r1, #0x00]
_08144B7E:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144B90: .4byte 0xFFFFF800
_08144B94: .4byte sub_8144B98
