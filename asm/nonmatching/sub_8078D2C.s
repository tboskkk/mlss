	.syntax unified
	.text

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
