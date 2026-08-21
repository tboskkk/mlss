	.syntax unified
	.text

	thumb_func_start sub_8086C64
sub_8086C64:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	cmp r2, #0x03
	bne _08086CF0
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08086C8E
	ldr r0, [r4, #0x6C]
	cmp r0, #0x00
	beq _08086C8E
	ldrb r1, [r0, #0x09]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08086CF0
_08086C8E:
	movs r0, #0x2A
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r3, #0x01
	negs r3, r3
	cmp r0, r3
	bne _08086CBA
	ldr r0, _08086CEC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x08]
_08086CBA:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08086CDC
	ldr r0, _08086CEC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x08]
_08086CDC:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r3
	bne _08086CFC
	b _08086CF4
	.byte 0x00, 0x00
_08086CEC: .4byte 0x03000FD8
_08086CF0:
	movs r0, #0x01
	b _08086D72
_08086CF4:
	ldr r0, _08086CF8 @ =0x04021010
	b _08086CFE
_08086CF8: .4byte 0x04021010
_08086CFC:
	ldr r0, _08086D60 @ =0x04021011
_08086CFE:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	cmp r0, #0x00
	bgt _08086D72
	ldr r1, [r4, #0x28]
	cmp r1, #0x00
	beq _08086D70
	movs r2, #0x00
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r4, r0
	beq _08086D3A
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	beq _08086D36
	cmp r4, r0
	beq _08086D3A
_08086D2A:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	beq _08086D36
	cmp r4, r0
	bne _08086D2A
	movs r2, #0x01
_08086D36:
	cmp r2, #0x00
	beq _08086D70
_08086D3A:
	adds r1, r4, #0x0
	adds r1, #0x80
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08086D64 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _08086D68 @ =0x000002F9
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _08086D6C
	str r5, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_8095028
	movs r0, #0x01
	negs r0, r0
	b _08086D72
	.byte 0x00, 0x00
_08086D60: .4byte 0x04021011
_08086D64: .4byte 0x03000FD8
_08086D68: .4byte 0x000002F9
_08086D6C:
	ldr r0, _08086D7C @ =0x08087525
	str r0, [r4, #0x4C]
_08086D70:
	movs r0, #0x00
_08086D72:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08086D7C: .4byte sub_8087524
