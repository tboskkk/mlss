	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8078B94
sub_8078B94:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8086D80
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08078BB0
	b _08078CFE
_08078BB0:
	ldr r0, _08078BCC @ =0x03000F64
	str r4, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08078BD4
	ldr r0, _08078BD0 @ =0x03000F68
	strb r2, [r0, #0x00]
	b _08078BDA
	.byte 0x00, 0x00
_08078BCC: .4byte 0x03000F64
_08078BD0: .4byte 0x03000F68
_08078BD4:
	ldr r1, _08078D10 @ =0x03000F68
	movs r0, #0x01
	strb r0, [r1, #0x00]
_08078BDA:
	ldr r0, [r5, #0x28]
	ldr r4, [r0, #0x38]
	movs r7, #0x84
	adds r7, r7, r5
	mov r9, r7
	movs r0, #0x88
	adds r0, r0, r5
	mov r10, r0
	adds r1, r5, #0x0
	adds r1, #0x8C
	str r1, [sp, #0x00C]
	movs r2, #0x79
	adds r2, r2, r5
	mov r8, r2
	adds r3, r5, #0x0
	adds r3, #0x7C
	str r3, [sp, #0x008]
	adds r7, r5, #0x0
	adds r7, #0x7A
	str r7, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0xAC
	str r0, [sp, #0x010]
	cmp r4, #0x00
	beq _08078C26
	ldr r7, _08078D14 @ =0x00002222
_08078C0E:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _08078C20
	adds r0, r4, #0x0
	bl sub_807C298
_08078C20:
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _08078C0E
_08078C26:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08078C2E
	adds r1, #0xFF
_08078C2E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08078C38
	adds r2, #0xFF
_08078C38:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08078C42
	adds r3, #0xFF
_08078C42:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08078D18 @ =0x00002A6E
	bl sub_80DF024
	bl sub_8199F30
	movs r2, #0x03
	ands r2, r0
	ldr r1, _08078D1C @ =0x03000F60
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x00]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r4, [r0, r7]
	mov r12, r4
	movs r0, #0x00
	adds r2, #0x01
	cmp r0, r2
	bge _08078C90
	adds r4, #0x01
_08078C70:
	adds r1, r0, #0x1
_08078C72:
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r6, [r0, r7]
	adds r0, #0x0A
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	beq _08078C72
	cmp r6, r4
	beq _08078C72
	adds r0, r1, #0x0
	cmp r0, r2
	blt _08078C70
_08078C90:
	ldr r1, _08078D1C @ =0x03000F60
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r1, #0x00]
	mov r0, r12
	subs r2, r6, r0
	lsls r2, r2, #0x18
	ldr r4, [r5, #0x28]
	adds r3, r4, #0x0
	adds r3, #0xD8
	ldr r0, _08078D20 @ =0x083B87EC
	lsrs r2, r2, #0x16
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r3, r10
	str r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xE0
	ldr r0, _08078D24 @ =0x083B87FC
	adds r2, r2, r0
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x00]
	mov r7, r8
	ldrb r0, [r7, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x008]
	strh r0, [r2, #0x00]
	ldr r3, [sp, #0x004]
	strh r1, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r0, #0x08
	ldr r4, [sp, #0x010]
	strh r0, [r4, #0x00]
	ldr r0, _08078D28 @ =0x08078D2D
	str r0, [r5, #0x4C]
	movs r0, #0x00
_08078CFE:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078D10: .4byte 0x03000F68
_08078D14: .4byte 0x00002222
_08078D18: .4byte 0x00002A6E
_08078D1C: .4byte 0x03000F60
_08078D20: .4byte 0x083B87EC
_08078D24: .4byte 0x083B87FC
_08078D28: .4byte sub_8078D2C
	thumb_func_start sub_8078D2C
sub_8078D2C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078D6C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078D4A
	adds r1, #0xFF
_08078D4A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078D54
	adds r2, #0xFF
_08078D54:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078D5E
	adds r3, #0xFF
_08078D5E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078DCC @ =0x00002A86
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08078D6C:
	ldr r1, [r4, #0x08]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r7, [r1, #0x0C]
	adds r0, r0, r7
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078E1C
	ldr r0, _08078DD0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _08078DD4 @ =0x03000F68
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, _08078DD8 @ =0x03000F60
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08078DE8
	adds r5, r1, #0x0
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08078DAC
	adds r2, #0xFF
_08078DAC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08078DB6
	adds r3, #0xFF
_08078DB6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08078DDC
	movs r0, #0x13
	b _08078DDE
_08078DCC: .4byte 0x00002A86
_08078DD0: .4byte 0x03000FD8
_08078DD4: .4byte 0x03000F68
_08078DD8: .4byte 0x03000F60
_08078DDC:
	movs r0, #0x12
_08078DDE:
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_810D738
_08078DE8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xCC
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078DFA
	adds r1, #0xFF
_08078DFA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078E04
	adds r2, #0xFF
_08078E04:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078E0E
	adds r3, #0xFF
_08078E0E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078E24 @ =0x00002A76
	bl sub_80DF024
	ldr r0, _08078E28 @ =0x08079479
	str r0, [r4, #0x4C]
_08078E1C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078E24: .4byte 0x00002A76
_08078E28: .4byte sub_8079478
	thumb_func_start sub_8078E2C
sub_8078E2C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08078E40
	b _08078F76
_08078E40:
	adds r0, r6, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08078E60
	adds r1, #0xFF
_08078E60:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08078E6A
	adds r2, #0xFF
_08078E6A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08078E74
	adds r3, #0xFF
_08078E74:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08078F20 @ =0x00002A94
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08078E88
	adds r0, #0xFF
_08078E88:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08078E96
	adds r0, #0xFF
_08078E96:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08078EA2
	adds r0, #0xFF
_08078EA2:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078F24 @ =0x00004028
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078F28 @ =0x08078F85
	str r0, [r5, #0x4C]
	subs r2, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08078F2C @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	bl sub_8199F30
	ands r0, r4
	ldr r1, _08078F30 @ =0x03000F6C
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08078F34
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _08078F44
_08078F20: .4byte 0x00002A94
_08078F24: .4byte 0x00004028
_08078F28: .4byte sub_8078F84
_08078F2C: .4byte sub_8087540
_08078F30: .4byte 0x03000F6C
_08078F34:
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_08078F44:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _08078F80 @ =0x08079451
	str r0, [r6, #0x4C]
_08078F76:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08078F80: .4byte sub_8079450
	thumb_func_start sub_8078F84
sub_8078F84:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078FFE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078F9A
	adds r1, #0xFF
_08078F9A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078FA4
	adds r2, #0xFF
_08078FA4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078FAE
	adds r3, #0xFF
_08078FAE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079008 @ =0x00002A9D
	bl sub_80DF024
	ldr r2, _0807900C @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08079010 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r1, _08079014 @ =0x03000ED0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_08078FFE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079008: .4byte 0x00002A9D
_0807900C: .4byte 0x00004029
_08079010: .4byte 0x03000F6C
_08079014: .4byte 0x03000ED0
	thumb_func_start sub_8079018
sub_8079018:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080790C4
	ldr r2, _08079068 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080790C0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	movs r2, #0x01
	ands r1, r2
	str r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0807906C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0807907C
	.byte 0x00, 0x00
_08079068: .4byte 0x00004029
_0807906C:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_0807907C:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080790BC @ =0x080793F5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD7
	bl play_sfx_80195B4
	b _080790C4
	.byte 0x00, 0x00
_080790BC: .4byte sub_80793F4
_080790C0:
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080790C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80790CC
sub_80790CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, #0xA8
	ldr r2, [r0, #0x00]
	ldr r0, _080791BC @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080790E2
	movs r0, #0x05
	subs r2, r0, r2
_080790E2:
	ldr r0, _080791C0 @ =0xFFFFFB34
	ldr r1, _080791C4 @ =0x00000B33
	muls r0, r2
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r6, r0, r3
	adds r0, r2, #0x0
	muls r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r7, r0, r1
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08079102
	adds r0, #0xFF
_08079102:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08079110
	adds r0, #0xFF
_08079110:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0807911C
	adds r0, #0xFF
_0807911C:
	asrs r0, r0, #0x08
	adds r0, #0x38
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080791C8 @ =0x00004059
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _080791CC @ =0x080793C5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x84
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
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
	ldr r0, _080791D0 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080791BC: .4byte 0x03000F6C
_080791C0: .4byte 0xFFFFFB34
_080791C4: .4byte 0x00000B33
_080791C8: .4byte 0x00004059
_080791CC: .4byte sub_80793C4
_080791D0: .4byte sub_8087540
	thumb_func_start sub_80791D4
sub_80791D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079278
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079208 @ =0x08079395
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r6, #0x00
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _0807920C
	str r0, [r5, #0x4C]
	b _08079278
	.byte 0x00, 0x00
_08079208: .4byte sub_8079394
_0807920C:
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r6, [r0, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807926C
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	b _08079274
_0807926C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
_08079274:
	ldr r0, _08079280 @ =0x08079349
	str r0, [r4, #0x4C]
_08079278:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079280: .4byte sub_8079348
	thumb_func_start sub_8079284
sub_8079284:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079316
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08079316
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080792D0 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080792D4
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _080792E4
_080792D0: .4byte 0x03000F6C
_080792D4:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_080792E4:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0807931C @ =0x08079321
	str r0, [r4, #0x4C]
_08079316:
	pop {r4}
	pop {r0}
	bx r0
_0807931C: .4byte sub_8079320
