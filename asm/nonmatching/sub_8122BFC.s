	.syntax unified
	.text

	thumb_func_start sub_8122BFC
sub_8122BFC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	movs r4, #0x00
_08122C02:
	lsls r2, r4, #0x04
	subs r2, r2, r4
	lsls r2, r2, #0x02
	ldr r0, _08122E1C @ =0x083C0578
	adds r0, r2, r0
	ldr r5, _08122E20 @ =0x03000FF4
	ldr r1, [r5, #0x00]
	adds r1, r1, r2
	movs r2, #0x1E
	bl CpuSet
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x01
	bls _08122C02
	adds r6, r5, #0x0
	ldr r4, [r6, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x32
	ldrb r1, [r2, #0x00]
	movs r7, #0x80
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08122C66
	ldr r3, _08122E24 @ =0x083BE67C
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x36
	strb r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x32
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0A]
	adds r2, #0x37
	strb r0, [r2, #0x00]
	movs r0, #0x00
	bl sub_81230D0
_08122C66:
	ldr r4, [r6, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x6E
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08122CA6
	ldr r3, _08122E24 @ =0x083BE67C
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x72
	strb r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x6E
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0A]
	adds r2, #0x73
	strb r0, [r2, #0x00]
	movs r0, #0x01
	bl sub_81230D0
_08122CA6:
	mov r1, sp
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, #0x78
	ldr r2, _08122E28 @ =0x01000008
	mov r0, sp
	bl CpuSet
	ldr r2, _08122E2C @ =0x03000FF8
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x78
	str r1, [r2, #0x00]
	adds r0, #0x88
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r4, #0x00
	adds r2, r5, #0x0
	movs r3, #0xFF
	adds r6, r2, #0x0
_08122CD0:
	ldr r0, [r2, #0x00]
	adds r0, #0x8A
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1F
	bls _08122CD0
	movs r4, #0x00
	ldr r2, _08122E20 @ =0x03000FF4
	movs r1, #0x00
_08122CEC:
	ldr r0, [r2, #0x00]
	adds r0, #0xB2
	adds r0, r0, r4
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x07
	bls _08122CEC
	movs r4, #0x00
	ldr r3, _08122E20 @ =0x03000FF4
	movs r2, #0xFF
_08122D04:
	ldr r0, [r3, #0x00]
	adds r0, #0xAA
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x07
	bls _08122D04
	movs r4, #0x00
	ldr r3, _08122E20 @ =0x03000FF4
	movs r2, #0xFF
_08122D20:
	ldr r0, [r3, #0x00]
	adds r0, #0xBA
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x37
	bls _08122D20
	movs r4, #0x00
	ldr r3, _08122E20 @ =0x03000FF4
	movs r2, #0xFF
_08122D3C:
	ldr r0, [r3, #0x00]
	adds r0, #0xF2
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x37
	bls _08122D3C
	movs r4, #0x00
	ldr r5, _08122E20 @ =0x03000FF4
	movs r3, #0x95
	lsls r3, r3, #0x01
	movs r2, #0xFF
_08122D5C:
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x0F
	bls _08122D5C
	movs r4, #0x00
	ldr r5, _08122E20 @ =0x03000FF4
	movs r3, #0x9D
	lsls r3, r3, #0x01
	movs r2, #0xFF
_08122D7C:
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x37
	bls _08122D7C
	movs r4, #0x00
	ldr r5, _08122E20 @ =0x03000FF4
	movs r3, #0xB9
	lsls r3, r3, #0x01
	movs r2, #0xFF
_08122D9C:
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x37
	bls _08122D9C
	movs r4, #0x00
	ldr r5, _08122E20 @ =0x03000FF4
	movs r3, #0xD5
	lsls r3, r3, #0x01
	movs r2, #0xFF
_08122DBC:
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x0F
	bls _08122DBC
	ldr r0, [r6, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x32
	adds r0, #0xF2
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x6E
	adds r0, #0xF2
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r1, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	movs r2, #0xB9
	lsls r2, r2, #0x01
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x6E
	ldrb r0, [r0, #0x00]
	adds r2, #0x01
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	movs r0, #0x00
	bl sub_8018A4C
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08122E1C: .4byte 0x083C0578
_08122E20: .4byte 0x03000FF4
_08122E24: .4byte 0x083BE67C
_08122E28: .4byte 0x01000008
_08122E2C: .4byte 0x03000FF8
