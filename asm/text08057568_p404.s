	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80759E8
sub_80759E8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075A4E
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _08075A54 @ =0x08075A59
	str r0, [r4, #0x4C]
_08075A4E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075A54: .4byte sub_8075A58
	thumb_func_start sub_8075A58
sub_8075A58:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08075AD4 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075AAA
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075A86
	adds r1, #0xFF
_08075A86:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075A90
	adds r2, #0xFF
_08075A90:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075A9A
	adds r3, #0xFF
_08075A9A:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08075AD8 @ =0x00002499
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075AAA:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08075ACA
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075ADC @ =0x08075BE9
	str r0, [r4, #0x4C]
_08075ACA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075AD4: .4byte 0xFFFFF000
_08075AD8: .4byte 0x00002499
_08075ADC: .4byte sub_8075BE8
	thumb_func_start sub_8075AE0
sub_8075AE0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075B48
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08075B50 @ =0x08075B55
	str r0, [r4, #0x4C]
_08075B48:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075B50: .4byte sub_8075B54
	thumb_func_start sub_8075B54
sub_8075B54:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08075B6E
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08075B6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8075B74
sub_8075B74:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8086C64
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08075BB0
	movs r0, #0x8C
	bl stop_sfx_80195A8
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x08]
	strh r4, [r0, #0x0C]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08075BAC @ =0x08075AE1
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _08075BB2
	.byte 0x00, 0x00
_08075BAC: .4byte sub_8075AE0
_08075BB0:
	adds r0, r4, #0x0
_08075BB2:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8075BB8
sub_8075BB8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08075BE4 @ =0x080759E9
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075BE4: .4byte sub_80759E8
	thumb_func_start sub_8075BE8
sub_8075BE8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075C08
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075C08:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8075C10
sub_8075C10:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08075C3C
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _08075C44 @ =0x080757C1
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08075C3C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075C44: .4byte sub_80757C0
	thumb_func_start sub_8075C48
sub_8075C48:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08075C60 @ =0x08075C8D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075C60: .4byte sub_8075C8C
	thumb_func_start sub_8075C64
sub_8075C64:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075C84
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075C84:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8075C8C
sub_8075C8C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075CDE
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075CE8 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075CBC
	adds r1, #0xFF
_08075CBC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075CC6
	adds r2, #0xFF
_08075CC6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075CD0
	adds r3, #0xFF
_08075CD0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075CEC @ =0x00002479
	bl sub_80DF024
	ldr r0, _08075CF0 @ =0x080756A5
	str r0, [r4, #0x4C]
_08075CDE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075CE8: .4byte 0x0000012B
_08075CEC: .4byte 0x00002479
_08075CF0: .4byte sub_80756A4
	thumb_func_start sub_8075CF4
sub_8075CF4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075D3C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r0, #0x45
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08075D44 @ =0x08087541
	str r0, [r4, #0x68]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08075D48 @ =0x08075C11
	str r0, [r4, #0x60]
	ldr r0, _08075D4C @ =0x0807560D
	str r0, [r4, #0x4C]
_08075D3C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075D44: .4byte sub_8087540
_08075D48: .4byte sub_8075C10
_08075D4C: .4byte sub_807560C
	thumb_func_start sub_8075D50
sub_8075D50:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, _08075D94 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8082D00
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075D8E
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082D24
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075D8E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075D94: .4byte 0x03000FD8
	thumb_func_start sub_8075D98
sub_8075D98:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08075DE4
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075DEC @ =0x0807536D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075DBC
	adds r1, #0xFF
_08075DBC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075DC6
	adds r2, #0xFF
_08075DC6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075DD0
	adds r3, #0xFF
_08075DD0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075DF0 @ =0x000023DE
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
_08075DE4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08075DEC: .4byte sub_807536C
_08075DF0: .4byte 0x000023DE
	thumb_func_start sub_8075DF4
sub_8075DF4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08075E10
	adds r0, r2, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	ldr r3, _08075E38 @ =0xFFFFFA00
	adds r1, r1, r3
	str r1, [r0, #0x00]
	ldr r0, [r2, #0x08]
	strh r1, [r0, #0x0C]
_08075E10:
	adds r1, r2, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08075E24
	subs r0, #0x08
	str r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
_08075E24:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075E34
	adds r0, r2, #0x0
	bl sub_807C298
_08075E34:
	pop {r0}
	bx r0
_08075E38: .4byte 0xFFFFFA00
	thumb_func_start sub_8075E3C
sub_8075E3C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075E7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075E5A
	adds r1, #0xFF
_08075E5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075E64
	adds r2, #0xFF
_08075E64:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075E6E
	adds r3, #0xFF
_08075E6E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075E94 @ =0x000023CC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075E7C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075E8A
	ldr r0, _08075E98 @ =0x08074EED
	str r0, [r4, #0x4C]
_08075E8A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075E94: .4byte 0x000023CC
_08075E98: .4byte sub_8074EEC
	thumb_func_start sub_8075E9C
sub_8075E9C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075EDC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075EBA
	adds r1, #0xFF
_08075EBA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075EC4
	adds r2, #0xFF
_08075EC4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075ECE
	adds r3, #0xFF
_08075ECE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075EF4 @ =0x000023CC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075EDC:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075EEA
	ldr r0, _08075EF8 @ =0x08074D1D
	str r0, [r4, #0x4C]
_08075EEA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075EF4: .4byte 0x000023CC
_08075EF8: .4byte sub_8074D1C
	thumb_func_start sub_8075EFC
sub_8075EFC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08075F3E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075F12
	adds r1, #0xFF
_08075F12:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075F1C
	adds r2, #0xFF
_08075F1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075F26
	adds r3, #0xFF
_08075F26:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075F48 @ =0x00002423
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x8C
	bl stop_sfx_80195A8
	movs r0, #0x00
_08075F3E:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075F48: .4byte 0x00002423
	thumb_func_start sub_8075F4C
sub_8075F4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075F6C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075F6C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x0D, 0x60, 0x07, 0x08, 0x00, 0xB5
	.byte 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x03, 0x20, 0x08, 0x60
	.byte 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x11, 0x1C, 0xA8, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C, 0xA8, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x35, 0x60
	.byte 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x8D, 0x60, 0x07, 0x08, 0x02, 0x1C
	.byte 0xAE, 0x32, 0x02, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x60
	.byte 0x07, 0x08, 0x02, 0x1C, 0xAE, 0x32, 0x01, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20
	.byte 0x70, 0x47, 0xA9, 0x60, 0x07, 0x08, 0x02, 0x1C, 0xAE, 0x32, 0x00, 0x21, 0x11, 0x80, 0x01, 0x49
	.byte 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x60, 0x07, 0x08
	thumb_func_start sub_807600C
sub_807600C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076030 @ =0x080758BD
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08076030: .4byte sub_80758BC
	thumb_func_start sub_8076034
sub_8076034:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076080 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076056
	adds r1, #0xFF
_08076056:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076060
	adds r2, #0xFF
_08076060:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807606A
	adds r3, #0xFF
_0807606A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076084 @ =0x0000243D
	bl sub_80DF024
	ldr r0, _08076088 @ =0x080754D9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08076080: .4byte 0x0000012B
_08076084: .4byte 0x0000243D
_08076088: .4byte sub_80754D8
	thumb_func_start sub_807608C
sub_807608C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080760A4 @ =0x080760F5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080760A4: .4byte sub_80760F4
	thumb_func_start sub_80760A8
sub_80760A8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080760BC
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
_080760BC:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080760D2
	cmp r0, #0x01
	beq _080760D8
	adds r0, r4, #0x0
	movs r1, #0x0A
	b _080760DC
_080760D2:
	adds r0, r4, #0x0
	movs r1, #0x02
	b _080760DC
_080760D8:
	adds r0, r4, #0x0
	movs r1, #0x06
_080760DC:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080760F0 @ =0x08076149
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080760F0: .4byte sub_8076148
	thumb_func_start sub_80760F4
sub_80760F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807613A
	ldr r0, _08076140 @ =0x00000157
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x10
	strh r0, [r1, #0x00]
	subs r1, #0x28
	movs r0, #0x32
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r2, [r0, #0x00]
	ldr r0, _08076144 @ =0x080761AD
	str r0, [r4, #0x4C]
	adds r1, #0x2A
	movs r0, #0x20
	strh r0, [r1, #0x00]
_0807613A:
	pop {r4}
	pop {r0}
	bx r0
_08076140: .4byte 0x00000157
_08076144: .4byte sub_80761AC
	thumb_func_start sub_8076148
sub_8076148:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080761A0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08076178
	cmp r0, #0x01
	beq _0807617E
	adds r0, r4, #0x0
	movs r1, #0x0B
	b _08076182
_08076178:
	adds r0, r4, #0x0
	movs r1, #0x03
	b _08076182
_0807617E:
	adds r0, r4, #0x0
	movs r1, #0x07
_08076182:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x28
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080761A8 @ =0x08074745
	str r0, [r4, #0x4C]
_080761A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080761A8: .4byte sub_8074744
	thumb_func_start sub_80761AC
sub_80761AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080761E0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r2, #0x00
	bl sub_8082D00
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080761DA
	ldr r0, _080761E4 @ =0x080752BD
	str r0, [r4, #0x4C]
_080761DA:
	pop {r4}
	pop {r0}
	bx r0
_080761E0: .4byte 0x03000FD8
_080761E4: .4byte sub_80752BC
	thumb_func_start sub_80761E8
sub_80761E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076202
	b _0807630E
_08076202:
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r6, #0x00
	ldr r0, _0807631C @ =0x00004047
	mov r9, r0
	mov r8, r6
	adds r7, r5, #0x0
	adds r7, #0x9C
_0807621A:
	ldr r0, _08076320 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r4, [r5, #0x28]
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076238
	adds r0, #0xFF
_08076238:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076246
	adds r0, #0xFF
_08076246:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076254
	adds r0, #0xFF
_08076254:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	bl sub_807BF34
	lsls r4, r6, #0x02
	add r4, sp
	adds r4, #0x0C
	str r0, [r4, #0x00]
	ldr r1, [r7, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	ldr r2, [r4, #0x00]
	str r2, [r5, #0x30]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	adds r3, #0x20
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, _08076324 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r1, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r1, #0x2C]
	ldr r0, [r4, #0x00]
	bl sub_807F4FC
	ldr r1, [r4, #0x00]
	ldr r0, _08076328 @ =0x08077201
	str r0, [r1, #0x58]
	ldr r0, [r7, #0x00]
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldr r4, [r4, #0x00]
	mov r0, r8
	str r0, [r4, #0x4C]
	ldr r0, _0807632C @ =0x000024C2
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080762DE
	adds r1, #0xFF
_080762DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080762E8
	adds r2, #0xFF
_080762E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080762F2
	adds r3, #0xFF
_080762F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	bl sub_80DF024
	adds r6, #0x01
	cmp r6, #0x01
	ble _0807621A
	ldr r0, _08076330 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08076334 @ =0x080773ED
	str r0, [r5, #0x4C]
_0807630E:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0807631C: .4byte 0x00004047
_08076320: .4byte 0x03000FD8
_08076324: .4byte sub_8087540
_08076328: .4byte sub_8077200
_0807632C: .4byte 0x000024C2
_08076330: .4byte 0x00000119
_08076334: .4byte sub_80773EC
	thumb_func_start sub_8076338
sub_8076338:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080763FC
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076364
	adds r0, #0xFF
_08076364:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076372
	adds r0, #0xFF
_08076372:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076380
	adds r0, #0xFF
_08076380:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08076404 @ =0x00008031
	bl sub_807BF34
	adds r6, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	str r0, [r6, #0x30]
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076408 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r0, _0807640C @ =0x08077291
	str r0, [r6, #0x4C]
	adds r0, r7, #0x0
	adds r0, #0xA4
	str r5, [r0, #0x00]
	ldr r0, _08076410 @ =0x08077391
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xA8
	movs r0, #0x0A
	str r0, [r1, #0x00]
_080763FC:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076404: .4byte 0x00008031
_08076408: .4byte sub_8087540
_0807640C: .4byte sub_8077290
_08076410: .4byte sub_8077390
	thumb_func_start sub_8076414
sub_8076414:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080764C2
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807643A
	adds r1, #0xFF
_0807643A:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08076444
	adds r0, #0xFF
_08076444:
	asrs r0, r0, #0x08
	adds r2, r0, #0x5
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076450
	adds r3, #0xFF
_08076450:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080764CC @ =0x00002503
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076468
	adds r0, #0xFF
_08076468:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x48
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807647A
	adds r0, #0xFF
_0807647A:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807648A
	adds r0, #0xFF
_0807648A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080764D0 @ =0x00004046
	bl sub_807BF34
	ldr r1, [r4, #0x30]
	str r1, [r0, #0x30]
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	ldr r0, _080764D4 @ =0x08077351
	str r0, [r4, #0x4C]
_080764C2:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080764CC: .4byte 0x00002503
_080764D0: .4byte 0x00004046
_080764D4: .4byte sub_8077350
	thumb_func_start sub_80764D8
sub_80764D8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0807656C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08076510
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _08076510
	adds r5, r4, #0x0
	adds r5, #0xAE
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08076510
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_08076510:
	ldr r0, _0807656C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08076544
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _08076544
	adds r5, r4, #0x0
	adds r5, #0xB0
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08076544
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_08076544:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08076564
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076570 @ =0x080772F1
	str r0, [r4, #0x4C]
_08076564:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807656C: .4byte 0x03000FD8
_08076570: .4byte sub_80772F0
	thumb_func_start sub_8076574
sub_8076574:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076588
	b _08076738
_08076588:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807659C
	adds r1, #0xFF
_0807659C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080765A6
	adds r2, #0xFF
_080765A6:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080765B0
	adds r3, #0xFF
_080765B0:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08076678 @ =0x00002539
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765C8
	adds r0, #0xFF
_080765C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765DA
	adds r0, #0xFF
_080765DA:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765EC
	adds r0, #0xFF
_080765EC:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0807667C @ =0x00004048
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076680 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08076684 @ =0x08076751
	str r0, [r5, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	subs r1, r3, #0x3
	adds r7, r0, #0x0
	cmp r1, #0x01
	bhi _08076688
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	b _080766A6
_08076678: .4byte 0x00002539
_0807667C: .4byte 0x00004048
_08076680: .4byte sub_8087540
_08076684: .4byte sub_8076750
_08076688:
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08076740 @ =0x083B876C
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r1, _08076744 @ =0x083B878C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
_080766A6:
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r5, #0xA0
	str r4, [r5, #0x00]
	ldr r1, _08076740 @ =0x083B876C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x10
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080766FC
	adds r0, #0xFF
_080766FC:
	asrs r0, r0, #0x08
	subs r2, r2, r0
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807670C
	adds r0, #0xFF
_0807670C:
	asrs r0, r0, #0x08
	movs r1, #0x08
	negs r1, r1
	subs r1, r1, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	ldr r1, _08076748 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0807674C @ =0x080771D9
	str r0, [r6, #0x4C]
_08076738:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076740: .4byte 0x083B876C
_08076744: .4byte 0x083B878C
_08076748: .4byte 0xFFFFC000
_0807674C: .4byte sub_80771D8
	thumb_func_start sub_8076750
sub_8076750:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080767F4
	ldr r0, [r4, #0x08]
	strh r5, [r0, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	ble _080767B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807677E
	adds r1, #0xFF
_0807677E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076788
	adds r2, #0xFF
_08076788:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076792
	adds r3, #0xFF
_08076792:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080767B0 @ =0x0000254E
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	b _080767F4
	.byte 0x00, 0x00
_080767B0: .4byte 0x0000254E
_080767B4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080767BC
	adds r1, #0xFF
_080767BC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080767C6
	adds r2, #0xFF
_080767C6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080767D0
	adds r3, #0xFF
_080767D0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080767FC @ =0x00002541
	bl sub_80DF024
	str r5, [r4, #0x4C]
	str r5, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
_080767F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080767FC: .4byte 0x00002541
	thumb_func_start sub_8076800
sub_8076800:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x22
	bhi _08076820
	movs r6, #0x00
	b _08076838
_08076820:
	cmp r0, #0x45
	bhi _08076828
	movs r6, #0x01
	b _08076838
_08076828:
	bl sub_8199F30
	movs r1, #0x06
	bl __umodsi3
	adds r0, #0x02
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08076838:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r6, r0
	bne _0807684A
	cmp r6, #0x01
	bhi _0807684A
	adds r0, r6, #0x2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0807684A:
	cmp r6, #0x00
	beq _08076864
	cmp r6, #0x01
	beq _080768B0
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r0, #0x00
	bge _080768FC
	adds r0, #0xFF
	b _080768FC
_08076864:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076872
	adds r0, #0xFF
_08076872:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076884
	adds r0, #0xFF
_08076884:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076892
	adds r0, #0xFF
_08076892:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080768AC @ =0x0000404A
	b _08076934
_080768AC: .4byte 0x0000404A
_080768B0:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768BE
	adds r0, #0xFF
_080768BE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768D0
	adds r0, #0xFF
_080768D0:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768DE
	adds r0, #0xFF
_080768DE:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080768F8 @ =0x0000404B
	b _08076934
	.byte 0x00, 0x00
_080768F8: .4byte 0x0000404B
_080768FC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807690E
	adds r0, #0xFF
_0807690E:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807691C
	adds r0, #0xFF
_0807691C:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080769EC @ =0x0000404C
_08076934:
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, _080769F0 @ =0x083B87AC
	lsls r1, r6, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _080769F4 @ =0x083B87CC
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xB3
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080769F8 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080769FC @ =0x08077141
	str r0, [r4, #0x58]
	ldr r0, _08076A00 @ =0x08076A09
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080769C2
	adds r0, #0xFF
_080769C2:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080769D6
	adds r0, #0xFF
_080769D6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, _08076A04 @ =0x08077189
	str r0, [r4, #0x4C]
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080769EC: .4byte 0x0000404C
_080769F0: .4byte 0x083B87AC
_080769F4: .4byte 0x083B87CC
_080769F8: .4byte sub_8087540
_080769FC: .4byte sub_8077140
_08076A00: .4byte sub_8076A08
_08076A04: .4byte sub_8077188
	thumb_func_start sub_8076A08
sub_8076A08:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	mov r8, r0
	cmp r0, #0x00
	bne _08076B0E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076A24
	adds r1, #0xFF
_08076A24:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076A2E
	adds r2, #0xFF
_08076A2E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076A38
	adds r3, #0xFF
_08076A38:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076B1C @ =0x000025D5
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r6, #0x00
	ldsh r0, [r3, r6]
	lsls r0, r0, #0x08
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08076A78
	adds r0, #0xFF
_08076A78:
	asrs r0, r0, #0x08
	mov r2, r12
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08076A86
	adds r0, #0xFF
_08076A86:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08076A92
	adds r0, #0xFF
_08076A92:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	mov r6, r12
	movs r2, #0x00
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r5, r1, r0
	ldr r2, _08076B20 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08076ACA
	ldr r2, _08076B24 @ =0x000003FF
	adds r0, r0, r2
_08076ACA:
	asrs r7, r0, #0x0A
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xE0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08076AE4
	movs r0, #0x02
_08076AE4:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r3, r8
	strh r3, [r0, #0x00]
	ldr r0, _08076B28 @ =0x08076B2D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x8C
	mov r6, r8
	str r6, [r0, #0x00]
	movs r0, #0x00
_08076B0E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08076B1C: .4byte 0x000025D5
_08076B20: .4byte 0x03001038
_08076B24: .4byte 0x000003FF
_08076B28: .4byte sub_8076B2C
	thumb_func_start sub_8076B2C
sub_8076B2C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	ldr r2, _08076C0C @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xE0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	blt _08076C04
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08076BD0
	adds r1, #0xFF
_08076BD0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08076BDA
	adds r2, #0xFF
_08076BDA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08076BE4
	adds r3, #0xFF
_08076BE4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08076C10 @ =0x000025C7
	bl sub_80DF024
	adds r0, r6, #0x0
	bl sub_807C298
	ldr r0, [r6, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0xCC
	bl play_sfx_80195B4
_08076C04:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08076C0C: .4byte 0xFFFFF800
_08076C10: .4byte 0x000025C7
	thumb_func_start sub_8076C14
sub_8076C14:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08076C7C
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08076C2C
	adds r2, #0xFF
_08076C2C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08076C36
	adds r3, #0xFF
_08076C36:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08076C4C
	movs r0, #0x13
	b _08076C4E
_08076C4C:
	movs r0, #0x12
_08076C4E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08076C78 @ =0x080770BD
	str r0, [r4, #0x4C]
	subs r1, #0x06
	movs r0, #0x10
	str r0, [r1, #0x00]
	b _08076CF4
_08076C78: .4byte sub_80770BC
_08076C7C:
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08076CBC
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x00
	ldsh r1, [r6, r0]
	adds r0, r4, #0x0
	bl sub_8076800
	strh r0, [r6, #0x00]
	movs r0, #0x32
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08076CB2
	ldr r0, _08076CFC @ =0x08076D05
	str r0, [r4, #0x4C]
_08076CB2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_08076CBC:
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08076CF4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076CD2
	adds r1, #0xFF
_08076CD2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076CDC
	adds r2, #0xFF
_08076CDC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076CE6
	adds r3, #0xFF
_08076CE6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076D00 @ =0x000025A3
	bl sub_80DF024
	movs r0, #0x14
	str r0, [r5, #0x00]
_08076CF4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08076CFC: .4byte sub_8076D04
_08076D00: .4byte 0x000025A3
	thumb_func_start sub_8076D04
sub_8076D04:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08076D6C
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08076D1C
	adds r2, #0xFF
_08076D1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08076D26
	adds r3, #0xFF
_08076D26:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08076D3C
	movs r0, #0x13
	b _08076D3E
_08076D3C:
	movs r0, #0x12
_08076D3E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08076D68 @ =0x080770BD
	str r0, [r4, #0x4C]
	subs r1, #0x06
	movs r0, #0x11
	str r0, [r1, #0x00]
	b _08076D82
_08076D68: .4byte sub_80770BC
_08076D6C:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08076D82
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076D8C @ =0x08077119
	str r0, [r4, #0x4C]
_08076D82:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08076D8C: .4byte sub_8077118
	thumb_func_start sub_8076D90
sub_8076D90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r9, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076DAC
	b _08076F7C
_08076DAC:
	mov r0, r9
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DBC
	adds r0, #0xFF
_08076DBC:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DCA
	adds r0, #0xFF
_08076DCA:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DD8
	adds r0, #0xFF
_08076DD8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08076E98 @ =0x00004049
	bl sub_807BF34
	adds r5, r0, #0x0
	mov r1, r9
	ldr r0, [r1, #0x30]
	str r0, [r5, #0x30]
	str r5, [r1, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076E9C @ =0x08087541
	str r0, [r5, #0x68]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r2, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r3, [r5, #0x10]
	mov r10, r3
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x00C]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x84
	subs r7, r1, r3
	str r7, [r4, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [sp, #0x00C]
	subs r2, r0, r2
	mov r8, r2
	str r2, [r6, #0x00]
	mov r0, r9
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08076EA4
	mov r0, r9
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08076EA0 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	adds r4, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	str r0, [r4, #0x00]
	adds r2, r4, #0x0
	b _08076EF8
_08076E98: .4byte 0x00004049
_08076E9C: .4byte sub_8087540
_08076EA0: .4byte 0x03001038
_08076EA4:
	mov r0, r9
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r4, #0x00]
	mov r1, r8
	lsls r0, r1, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r6, #0x00]
	ldr r7, [r4, #0x00]
	mov r8, r0
	ldr r2, _08076F8C @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x8C
	cmp r6, #0x00
	bge _08076EEC
	ldr r1, _08076F90 @ =0x000001FF
	adds r0, r6, r1
_08076EEC:
	asrs r0, r0, #0x09
	str r0, [r2, #0x00]
	cmp r0, #0x2F
	bgt _08076EF8
	movs r0, #0x30
	str r0, [r2, #0x00]
_08076EF8:
	mov r0, r10
	cmp r0, #0x00
	bge _08076F00
	adds r0, #0xFF
_08076F00:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r3, #0x00
	mov r10, r3
	strh r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _08076F14
	adds r1, #0xFF
_08076F14:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r1, _08076F94 @ =0x000001B3
	adds r0, r6, #0x0
	str r2, [sp, #0x010]
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r1, r4, #0x1F
	adds r1, r4, r1
	asrs r1, r1, #0x01
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08076F4A
	movs r0, #0x02
_08076F4A:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	mov r3, r8
	str r3, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r0, _08076F98 @ =0x08076FA1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _08076F9C @ =0x08077095
	mov r2, r9
	str r0, [r2, #0x4C]
_08076F7C:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076F8C: .4byte 0x03001038
_08076F90: .4byte 0x000001FF
_08076F94: .4byte 0x000001B3
_08076F98: .4byte sub_8076FA0
_08076F9C: .4byte sub_8077094
	thumb_func_start sub_8076FA0
sub_8076FA0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08076FAC
	adds r1, #0xFF
_08076FAC:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08076FBE
	adds r0, r5, #0x0
	bl sub_807C298
	b _0807708C
_08076FBE:
	ldr r1, [r5, #0x08]
	movs r2, #0xC0
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r2, #0x00
	ldsh r1, [r7, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r3, r5, #0x0
	adds r3, #0xB0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	ble _0807708C
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08077064
	adds r0, #0xFF
_08077064:
	asrs r0, r0, #0x08
	cmp r0, #0x07
	bgt _0807708C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08077078
	adds r0, #0xFF
_08077078:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077084
	adds r0, #0xFF
_08077084:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	movs r0, #0x00
	strh r0, [r6, #0x00]
_0807708C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077094
sub_8077094:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080770B4
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080770B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80770BC
sub_80770BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807710C
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080770E4
	adds r0, r4, #0x0
	bl sub_8086700
	b _0807710C
_080770E4:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r2, r0, #0x0
	cmp r1, #0x10
	bne _08077104
	ldr r0, _08077100 @ =0x08076C15
	b _08077106
_08077100: .4byte sub_8076C14
_08077104:
	ldr r0, _08077114 @ =0x08076D05
_08077106:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r2, #0x00]
_0807710C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077114: .4byte sub_8076D04
	thumb_func_start sub_8077118
sub_8077118:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077138
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08077138:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077140
sub_8077140:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077154
	adds r1, #0xFF
_08077154:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807715E
	adds r2, #0xFF
_0807715E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077168
	adds r3, #0xFF
_08077168:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077184 @ =0x000025B9
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08077184: .4byte 0x000025B9
	thumb_func_start sub_8077188
sub_8077188:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080771CC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807719E
	adds r1, #0xFF
_0807719E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080771A8
	adds r2, #0xFF
_080771A8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080771B2
	adds r3, #0xFF
_080771B2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080771D4 @ =0x000025AB
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x76
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080771CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080771D4: .4byte 0x000025AB
	thumb_func_start sub_80771D8
sub_80771D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080771F8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080771F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077200
sub_8077200:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0807724C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08077248 @ =0x08077571
	str r0, [r5, #0x4C]
	adds r1, r6, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _08077282
_08077248: .4byte sub_8077570
_0807724C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0807725E
	adds r1, #0xFF
_0807725E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08077268
	adds r2, #0xFF
_08077268:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08077272
	adds r3, #0xFF
_08077272:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0807728C @ =0x000024CB
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
_08077282:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807728C: .4byte 0x000024CB
	thumb_func_start sub_8077290
sub_8077290:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080772EA
	movs r0, #0x3C
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	cmp r1, #0x00
	bne _080772E0
	ldr r0, [r5, #0x28]
	adds r0, #0xAC
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080772EA
_080772E0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA8
	bl play_sfx_80195B4
_080772EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80772F0
sub_80772F0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077340
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807731E
	adds r1, #0xFF
_0807731E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077328
	adds r2, #0xFF
_08077328:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077332
	adds r3, #0xFF
_08077332:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077348 @ =0x00002515
	bl sub_80DF024
	ldr r0, _0807734C @ =0x080775A5
	str r0, [r4, #0x4C]
_08077340:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077348: .4byte 0x00002515
_0807734C: .4byte sub_80775A4
	thumb_func_start sub_8077350
sub_8077350:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077386
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x14
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	ldr r0, _0807738C @ =0x080764D9
	str r0, [r4, #0x4C]
_08077386:
	pop {r4}
	pop {r0}
	bx r0
_0807738C: .4byte sub_80764D8
	thumb_func_start sub_8077390
sub_8077390:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080773CE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080773AC
	adds r1, #0xFF
_080773AC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080773B6
	adds r2, #0xFF
_080773B6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080773C0
	adds r3, #0xFF
_080773C0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080773E4 @ =0x000024E9
	bl sub_80DF024
	movs r0, #0x0A
	str r0, [r5, #0x00]
_080773CE:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080773DC
	ldr r0, _080773E8 @ =0x08077611
	str r0, [r4, #0x4C]
_080773DC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080773E4: .4byte 0x000024E9
_080773E8: .4byte sub_8077610
	thumb_func_start sub_80773EC
sub_80773EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077434
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077412
	adds r1, #0xFF
_08077412:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807741C
	adds r2, #0xFF
_0807741C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077426
	adds r3, #0xFF
_08077426:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807743C @ =0x000025F5
	bl sub_80DF024
	ldr r0, _08077440 @ =0x08076339
	str r0, [r4, #0x4C]
_08077434:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0807743C: .4byte 0x000025F5
_08077440: .4byte sub_8076338
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA5, 0x74, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xE5, 0x74, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x55, 0x75, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x39, 0x75, 0x07, 0x08
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x0A, 0x1C, 0x9C, 0x32, 0x10, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x05, 0x20
	.byte 0x10, 0x60, 0x0A, 0x1C, 0xA0, 0x32, 0x10, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x04, 0x20, 0x10, 0x60
	.byte 0x02, 0x48, 0xC8, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x69, 0x76, 0x07, 0x08
	thumb_func_start sub_80774A4
sub_80774A4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0x9C
	movs r1, #0x01
	ands r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080774C8
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080774D4
_080774C8:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080774D4:
	ldr r0, _080774E0 @ =0x08076D91
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080774E0: .4byte sub_8076D90
	thumb_func_start sub_80774E4
sub_80774E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080774FC
	adds r1, #0xFF
_080774FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077506
	adds r2, #0xFF
_08077506:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077510
	adds r3, #0xFF
_08077510:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077530 @ =0x00002563
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4B
	bl play_sfx_80195B4
	ldr r0, _08077534 @ =0x080776B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077530: .4byte 0x00002563
_08077534: .4byte sub_80776B4
	thumb_func_start sub_8077538
sub_8077538:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077550 @ =0x08076575
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08077550: .4byte sub_8076574
	thumb_func_start sub_8077554
sub_8077554:
	push {r4, lr}
	adds r4, r0, #0x0
	b _08077560
_0807755A:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_08077560:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0807755A
	movs r0, #0x00
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
