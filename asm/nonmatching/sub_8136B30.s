	.syntax unified
	.text

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
