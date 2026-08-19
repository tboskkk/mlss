	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8142A70
sub_8142A70:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	bl sub_8139AA0
	ldr r0, _08142AF8 @ =0x0000020D
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	movs r5, #0x00
	strh r5, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _08142AFC @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, _08142B00 @ =0x0813FBE9
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142AF8: .4byte 0x0000020D
_08142AFC: .4byte sub_813B380
_08142B00: .4byte sub_813FBE8
	thumb_func_start sub_8142B04
sub_8142B04:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08142B40 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08142B44 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08142B48 @ =0x0813FDF5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142B40: .4byte 0x0000033E
_08142B44: .4byte sub_813B380
_08142B48: .4byte sub_813FDF4
	thumb_func_start sub_8142B4C
sub_8142B4C:
	push {r4, lr}
	adds r3, r1, #0x0
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r3, #0x18]
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	movs r4, #0xB5
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _08142B78
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r1, _08142B80 @ =0x0813E505
	str r1, [r0, #0x00]
	ldr r0, _08142B84 @ =0x0813E619
	str r0, [r2, #0x00]
_08142B78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142B80: .4byte sub_813E504
_08142B84: .4byte sub_813E618
	thumb_func_start sub_8142B88
sub_8142B88:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x004
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r2, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_801E68C
	str r4, [r6, #0x18]
	ldr r0, _08142BC8 @ =0x08142F75
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142BC8: .4byte sub_8142F74
	thumb_func_start sub_8142BCC
sub_8142BCC:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142C06
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	adds r0, #0x6C
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08142C0C @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _08142C10 @ =0x0813B361
	str r0, [r5, #0x0C]
	ldr r0, _08142C14 @ =0x0813E619
	str r0, [r5, #0x04]
_08142C06:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08142C0C: .4byte sub_813B1E8
_08142C10: .4byte sub_813B360
_08142C14: .4byte sub_813E618
	thumb_func_start sub_8142C18
sub_8142C18:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08142C7C
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _08142C6C @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142C78
	ldr r0, _08142C70 @ =0x0813B361
	str r0, [r5, #0x00]
	ldr r0, _08142C74 @ =0x0813E619
	str r0, [r5, #0x04]
	b _08142C7C
_08142C6C: .4byte 0x00007FFF
_08142C70: .4byte sub_813B360
_08142C74: .4byte sub_813E618
_08142C78:
	ldr r0, _08142C84 @ =0x0813F85D
	str r0, [r5, #0x00]
_08142C7C:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_08142C84: .4byte sub_813F85C
	thumb_func_start sub_8142C88
sub_8142C88:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r3
	mov r12, r0
	ldr r1, [r3, #0x18]
	cmp r1, #0x00
	ble _08142CC0
	movs r5, #0xB7
	lsls r5, r5, #0x02
	adds r2, r3, r5
	movs r5, #0x00
	ldsh r0, [r2, r5]
	subs r0, r1, r0
	str r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08142CB2
	movs r0, #0x00
	str r0, [r3, #0x18]
	b _08142CC0
_08142CB2:
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
_08142CC0:
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r12
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08142CE4
	ldr r5, _08142CEC @ =0x0000033E
	adds r2, r3, r5
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
_08142CE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142CEC: .4byte 0x0000033E
	thumb_func_start sub_8142CF0
sub_8142CF0:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142D04
	ldr r0, _08142D0C @ =0x0813E975
	str r0, [r4, #0x00]
_08142D04:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142D0C: .4byte sub_813E974
	thumb_func_start sub_8142D10
sub_8142D10:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142D5E
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	cmp r6, #0x00
	beq _08142D36
	str r4, [r6, #0x00]
_08142D36:
	add r0, sp, #0x004
	adds r1, r7, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142D62
_08142D5E:
	movs r0, #0x00
	b _08142D64
_08142D62:
	movs r0, #0x01
_08142D64:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8142D6C
sub_8142D6C:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	mov r0, sp
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	mov r0, sp
	movs r1, #0x08
	ldsh r2, [r0, r1]
	movs r1, #0x0A
	ldsh r3, [r0, r1]
	adds r1, r4, #0x0
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142DA0
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142DA4
_08142DA0:
	ldr r0, _08142DAC @ =0x0813E05D
	str r0, [r5, #0x00]
_08142DA4:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_08142DAC: .4byte sub_813E05C
	thumb_func_start sub_8142DB0
sub_8142DB0:
	push {r4, r5, lr}
	add sp, #-0x004
	mov r12, r1
	adds r4, r2, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	subs r1, #0x24
	add r1, r12
	mov r3, r12
	ldr r0, [r3, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, [r3, #0x10]
	str r0, [r1, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	add r1, r12
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x2A]
	ldr r5, _08142E20 @ =0x00000242
	adds r0, r2, r5
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r1, [r2, #0x0C]
	adds r1, r1, r0
	adds r5, #0x02
	adds r0, r2, r5
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x04
	ldr r2, [r2, #0x10]
	adds r2, r2, r0
	mov r5, sp
	movs r0, #0x00
	strb r0, [r5, #0x00]
	mov r0, r12
	bl sub_813A284
	ldr r0, _08142E24 @ =0x08142FC9
	str r0, [r4, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142E20: .4byte 0x00000242
_08142E24: .4byte sub_8142FC8
	thumb_func_start sub_8142E28
sub_8142E28:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08142E60
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r3, r0
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r3, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08142E68 @ =0x0813E2A5
	str r0, [r4, #0x00]
_08142E60:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142E68: .4byte sub_813E2A4
	thumb_func_start sub_8142E6C
sub_8142E6C:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08142EA8 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08142EAC @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08142EB0 @ =0x0813E05D
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142EA8: .4byte 0x0000033E
_08142EAC: .4byte sub_813B380
_08142EB0: .4byte sub_813E05C
	.byte 0x70, 0x47, 0x00, 0x00, 0x0A, 0x1C, 0xE9, 0x20, 0x40, 0x00, 0x11, 0x18, 0x1E, 0x20, 0x08, 0x80
	.byte 0xD0, 0x20, 0x40, 0x00, 0x11, 0x18, 0x08, 0x48, 0x08, 0x60, 0xD4, 0x20, 0x40, 0x00, 0x11, 0x18
	.byte 0x06, 0x48, 0x08, 0x60, 0x06, 0x48, 0x11, 0x18, 0x3E, 0x38, 0x08, 0x80, 0x54, 0x38, 0x11, 0x18
	.byte 0x04, 0x48, 0x08, 0x60, 0x70, 0x47, 0x00, 0x00, 0xE9, 0xB1, 0x13, 0x08, 0x61, 0xB3, 0x13, 0x08
	.byte 0x3E, 0x02, 0x00, 0x00, 0xC1, 0xB2, 0x13, 0x08
	thumb_func_start sub_8142EFC
sub_8142EFC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r5, r4, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08142F4E
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142F68
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r6, #0x0
	adds r0, #0x27
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	ldrb r0, [r5, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _08142F68
_08142F4E:
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142F68
	ldrh r0, [r6, #0x38]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08142F70 @ =0x08141D55
	str r0, [r7, #0x00]
_08142F68:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08142F70: .4byte sub_8141D54
	thumb_func_start sub_8142F74
sub_8142F74:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x010
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142FB6
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	mov r0, sp
	adds r1, r6, #0x0
	movs r2, #0x22
	movs r3, #0x0C
	bl sub_8139BB0
	ldr r2, _08142FC0 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08142FB6
	ldr r0, _08142FC4 @ =0x0813FA69
	str r0, [r7, #0x00]
_08142FB6:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142FC0: .4byte 0x00007FFF
_08142FC4: .4byte sub_813FA68
	thumb_func_start sub_8142FC8
sub_8142FC8:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	adds r0, r5, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143044
	mov r0, sp
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x42
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldr r2, _08143024 @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143038
	ldr r0, _08143028 @ =0x0813B1E9
	str r0, [r4, #0x00]
	ldr r0, _0814302C @ =0x08143059
	str r0, [r4, #0x0C]
	ldr r0, _08143030 @ =0x0813B361
	str r0, [r4, #0x08]
	ldr r0, _08143034 @ =0x0813E05D
	str r0, [r4, #0x04]
	b _08143044
_08143024: .4byte 0x00007FFF
_08143028: .4byte sub_813B1E8
_0814302C: .4byte sub_8143058
_08143030: .4byte sub_813B360
_08143034: .4byte sub_813E05C
_08143038:
	ldr r0, _0814304C @ =0x0813B1E9
	str r0, [r4, #0x00]
	ldr r0, _08143050 @ =0x08143059
	str r0, [r4, #0x0C]
	ldr r0, _08143054 @ =0x0813E339
	str r0, [r4, #0x08]
_08143044:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_0814304C: .4byte sub_813B1E8
_08143050: .4byte sub_8143058
_08143054: .4byte sub_813E338
	thumb_func_start sub_8143058
sub_8143058:
	push {r4, r5, lr}
	add sp, #-0x004
	mov r12, r1
	adds r5, r2, #0x0
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r2, [r0, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	add r4, r12
	ldr r1, [r4, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	adds r0, r0, r2
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	movs r3, #0x00
	strb r0, [r1, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r0, _081430C8 @ =0x081430CD
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081430C8: .4byte sub_81430CC
	thumb_func_start sub_81430CC
sub_81430CC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x2C
	ldsh r1, [r0, r2]
	ldr r0, _08143124 @ =0x0000018F
	cmp r1, r0
	ble _0814311A
	adds r0, #0xE5
	adds r1, r5, r0
	movs r2, #0x00
	movs r0, #0x90
	lsls r0, r0, #0x05
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	str r2, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x07
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x08]
	str r0, [r6, #0x00]
_0814311A:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143124: .4byte 0x0000018F
	thumb_func_start sub_8143128
sub_8143128:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r3
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081431BA
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	add r0, sp, #0x008
	movs r1, #0x1A
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	movs r1, #0x1B
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	movs r1, #0x1C
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	movs r1, #0x1D
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	movs r1, #0x1E
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	movs r1, #0x1F
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r4, #0x08
	ldsh r3, [r0, r4]
	movs r4, #0x0A
	ldsh r1, [r0, r4]
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081431BA
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081431C4 @ =0x08143315
	str r0, [r1, #0x00]
	movs r4, #0xCE
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldr r0, _081431C8 @ =0x081431CD
	str r0, [r1, #0x00]
_081431BA:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081431C4: .4byte sub_8143314
_081431C8: .4byte sub_81431CC
	thumb_func_start sub_81431CC
sub_81431CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldr r3, [r6, #0x00]
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081432BE
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081432B4
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	movs r5, #0xD8
	lsls r5, r5, #0x01
	adds r0, r4, r5
	ldr r3, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x36
	add r0, sp, #0x008
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x37
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r1, r3, #0x0
	adds r1, #0x38
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r1, r3, #0x0
	adds r1, #0x39
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r1, r3, #0x0
	adds r1, #0x3A
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r1, r3, #0x0
	adds r1, #0x3B
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r5, #0x0A
	ldsh r1, [r0, r5]
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081432B4
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _081432A8 @ =0x081432CD
	str r0, [r1, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, _081432AC @ =0x08143375
	str r0, [r1, #0x00]
	ldr r1, _081432B0 @ =0x081392F5
	str r1, [r6, #0x00]
	movs r5, #0xD2
	lsls r5, r5, #0x01
	adds r0, r4, r5
	str r1, [r0, #0x00]
	b _081432BE
	.byte 0x00, 0x00
_081432A8: .4byte sub_81432CC
_081432AC: .4byte sub_8143374
_081432B0: .4byte sub_81392F4
_081432B4:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _081432C8 @ =0x08143375
	str r0, [r1, #0x00]
_081432BE:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081432C8: .4byte sub_8143374
	thumb_func_start sub_81432CC
sub_81432CC:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r2, [r0, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _081432FC
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1F
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1F
	ands r0, r1
	cmp r0, #0x00
	beq _0814330C
_081432FC:
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0xCE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
_0814330C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8143314
sub_8143314:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	movs r1, #0x10
	bl sub_81387C8
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r4, r6, r0
	movs r1, #0xCE
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r1, _08143370 @ =0x08136D01
	str r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r6, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	bl sub_8047154
	ldr r2, [r4, #0x00]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08143370: .4byte sub_8136D00
	thumb_func_start sub_8143374
sub_8143374:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _081433C8 @ =0x08143129
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _081433CC @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081433C8: .4byte sub_8143128
_081433CC: .4byte sub_8139420
	thumb_func_start sub_81433D0
sub_81433D0:
	push {r4, lr}
	ldr r2, _081433F4 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	ldr r2, _081433F8 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_8143374
	pop {r4}
	pop {r0}
	bx r0
_081433F4: .4byte 0x0000033E
_081433F8: .4byte 0x000002B6
	thumb_func_start sub_81433FC
sub_81433FC:
	push {r4, r5, r6, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081434D0
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r3, [r0, #0x00]
	add r0, sp, #0x004
	movs r6, #0x08
	ldsh r2, [r3, r6]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x00]
	movs r6, #0x0A
	ldsh r2, [r3, r6]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x06]
	movs r6, #0x0C
	ldsh r2, [r3, r6]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x02]
	movs r6, #0x0E
	ldsh r2, [r3, r6]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x04]
	ldr r2, _081434D8 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081434D0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _081434DC @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r1, _081434E0 @ =0x0000020D
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	adds r0, #0x01
	str r0, [r4, #0x18]
	ldr r3, _081434E4 @ =0x0000020E
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xEB
	lsls r6, r6, #0x01
	adds r2, r4, r6
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _081434E8 @ =0x0813939D
	str r2, [r0, #0x00]
	subs r3, #0x72
	adds r1, r4, r3
	ldr r0, _081434EC @ =0x0814432D
	str r0, [r1, #0x00]
	subs r6, #0x36
	adds r0, r4, r6
	ldr r1, _081434F0 @ =0x081443D1
	str r1, [r0, #0x00]
	adds r3, #0x08
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
_081434D0:
	add sp, #0x014
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081434D8: .4byte 0x00007FFF
_081434DC: .4byte 0xFFFC7FFF
_081434E0: .4byte 0x0000020D
_081434E4: .4byte 0x0000020E
_081434E8: .4byte sub_813939C
_081434EC: .4byte sub_814432C
_081434F0: .4byte sub_81443D0
	thumb_func_start sub_81434F4
sub_81434F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r7, r6, r0
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081435CC
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r6, r1
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r2, [r7, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0F
	movs r7, #0x84
	lsls r7, r7, #0x01
	adds r1, r6, r7
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	ldr r7, _081435D8 @ =0x00000239
	adds r1, r6, r7
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r4, r4, r0
	ldrh r1, [r4, #0x00]
	ldr r2, _081435DC @ =0x0000023E
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r3, #0x83
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r2, r6, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r7, #0x18
	ldsh r0, [r5, r7]
	lsls r0, r0, #0x04
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r2, r6, r1
	strh r0, [r2, #0x00]
	movs r3, #0x1A
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x04
	subs r4, #0x56
	adds r3, r6, r4
	strh r0, [r3, #0x00]
	movs r7, #0x1C
	ldsh r0, [r5, r7]
	lsls r0, r0, #0x04
	adds r4, #0x02
	adds r1, r6, r4
	strh r0, [r1, #0x00]
	movs r7, #0x00
	ldsh r2, [r2, r7]
	lsls r2, r2, #0x08
	movs r0, #0x00
	ldsh r3, [r3, r0]
	lsls r3, r3, #0x08
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_8137A4C
	adds r0, r6, #0x0
	bl sub_81382A8
	ldr r0, _081435E0 @ =0x0814437D
	mov r1, r8
	str r0, [r1, #0x00]
_081435CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081435D8: .4byte 0x00000239
_081435DC: .4byte 0x0000023E
_081435E0: .4byte sub_814437C
	thumb_func_start sub_81435E4
sub_81435E4:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r3
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081436D8
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081436DC
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	add r4, sp, #0x008
	movs r2, #0x10
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x12
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x14
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x16
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _081436CC @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081436DC
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x18
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	movs r0, #0x19
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r0, #0x1A
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	movs r0, #0x1B
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x1C
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	movs r0, #0x1D
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081436DC
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _081436D0 @ =0x081442D5
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081436D4 @ =0x081436E5
	str r0, [r1, #0x00]
	b _081436DC
	.byte 0x00, 0x00
_081436CC: .4byte 0x00007FFF
_081436D0: .4byte sub_81442D4
_081436D4: .4byte sub_81436E4
_081436D8:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_081436DC:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_81436E4
sub_81436E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143710
	add r1, sp, #0x004
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_08143710:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08143746
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08143748
_08143746:
	ldr r1, _08143864 @ =0x0000FFFF
_08143748:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _08143760
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	bl sub_80478AC
_08143760:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08143784
	b _08143882
_08143784:
	movs r2, #0xAE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	add r4, sp, #0x008
	movs r2, #0x10
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x12
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x14
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x16
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _08143868 @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143878
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	mov r3, r12
	adds r3, #0x34
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r1, #0x08
	ldsh r3, [r4, r1]
	movs r2, #0x0A
	ldsh r0, [r4, r2]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143878
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814386C @ =0x0813939D
	str r0, [r1, #0x00]
	movs r2, #0xA2
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _08143870 @ =0x0814432D
	str r0, [r1, #0x00]
	ldr r0, _08143874 @ =0x0814426D
	mov r1, r8
	b _08143880
	.byte 0x00, 0x00
_08143864: .4byte 0x0000FFFF
_08143868: .4byte 0x00007FFF
_0814386C: .4byte sub_813939C
_08143870: .4byte sub_814432C
_08143874: .4byte sub_814426C
_08143878:
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _08143890 @ =0x0814432D
_08143880:
	str r0, [r1, #0x00]
_08143882:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143890: .4byte sub_814432C
	thumb_func_start sub_8143894
sub_8143894:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	ldr r0, _08143950 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08143954 @ =0x0000033D
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r6, #0x08
	orrs r0, r6
	strb r0, [r1, #0x00]
	ldr r1, _08143958 @ =0x0000020D
	adds r3, r5, r1
	ldrb r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	orrs r0, r6
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	ldr r1, _0814395C @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r1, _08143960 @ =0x0000020F
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08143964 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r0, _08143968 @ =0x0814396D
	str r0, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08143950: .4byte 0x0000033E
_08143954: .4byte 0x0000033D
_08143958: .4byte 0x0000020D
_0814395C: .4byte 0xFFFC7FFF
_08143960: .4byte 0x0000020F
_08143964: .4byte sub_813B380
_08143968: .4byte sub_814396C
	thumb_func_start sub_814396C
sub_814396C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x58
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081439B0
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _081439BC
_081439B0:
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081439BC:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r3, [r0, #0x30]
	mov r0, r9
	lsls r4, r0, #0x01
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r2, r8
	bl sub_813AA5C
	ldr r1, _08143A40 @ =0x00000242
	adds r3, r5, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	adds r6, r4, #0x0
	cmp r0, #0x00
	beq _08143A44
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _08143A48
	.byte 0x00, 0x00
_08143A40: .4byte 0x00000242
_08143A44:
	movs r3, #0x01
	negs r3, r3
_08143A48:
	adds r4, r5, #0x0
	adds r4, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r2, [r4, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r0, r3
	strb r0, [r4, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r0, [r2, #0x00]
	ands r1, r0
	movs r0, #0x03
	orrs r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r3, #0x00]
	adds r1, r6, r7
	ldrh r1, [r1, #0x08]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r2, _08143ACC @ =0x03001038
	ldr r0, _08143AD0 @ =0x0819832C
	ldr r1, _08143AD4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _08143AD8 @ =0x08143ADD
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08143ACC: .4byte 0x03001038
_08143AD0: .4byte 0x0819832C
_08143AD4: .4byte 0x08198220
_08143AD8: .4byte sub_8143ADC
	thumb_func_start sub_8143ADC
sub_8143ADC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	movs r3, #0xEA
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08143B98
	add r4, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143B8C
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143B8C
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrh r0, [r2, #0x00]
	adds r0, r0, r6
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r3, #0x02
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r6
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	adds r3, #0x42
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08143B88 @ =0x08143BE9
	mov r1, r9
	str r0, [r1, #0x00]
	b _08143BD0
_08143B88: .4byte sub_8143BE8
_08143B8C:
	ldrh r1, [r6, #0x1A]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	strh r1, [r0, #0x00]
	b _08143B9C
_08143B98:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08143B9C:
	adds r0, r5, #0x0
	bl sub_813B4C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143BD0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	mov r1, r8
	adds r1, #0xD0
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r0, _08143BE0 @ =0x0813B1E9
	mov r3, r9
	str r0, [r3, #0x00]
	ldr r0, _08143BE4 @ =0x0814396D
	str r0, [r3, #0x0C]
_08143BD0:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143BE0: .4byte sub_813B1E8
_08143BE4: .4byte sub_814396C
	thumb_func_start sub_8143BE8
sub_8143BE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r4, r0
	adds r0, r6, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143C34
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x28]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08143C2C @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _08143C30 @ =0x0814396D
	str r0, [r5, #0x0C]
	b _08143CF8
	.byte 0x00, 0x00
_08143C2C: .4byte sub_813B1E8
_08143C30: .4byte sub_814396C
_08143C34:
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08143C64
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08143C60 @ =0x08143D0D
	str r0, [r5, #0x00]
	b _08143CF8
_08143C60: .4byte sub_8143D0C
_08143C64:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	mov r6, sp
	ldr r2, _08143CA8 @ =0x03001038
	ldr r0, _08143CAC @ =0x0819832C
	ldr r1, _08143CB0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08143CB4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08143CB8
_08143CA8: .4byte 0x03001038
_08143CAC: .4byte 0x0819832C
_08143CB0: .4byte 0x08198220
_08143CB4:
	movs r1, #0x01
	negs r1, r1
_08143CB8:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r5
	strb r0, [r6, #0x00]
	ldr r2, _08143D00 @ =0x03001038
	ldr r0, _08143D04 @ =0x0819832C
	ldr r1, _08143D08 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	mov r1, sp
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08143CF8
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8047154
_08143CF8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08143D00: .4byte 0x03001038
_08143D04: .4byte 0x0819832C
_08143D08: .4byte 0x08198220
	thumb_func_start sub_8143D0C
sub_8143D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	str r2, [sp, #0x010]
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r4, [r0, #0x00]
	ldr r0, _08143D90 @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xC0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r4, #0x0
	bl sub_8047F60
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143D94
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	ldr r2, [sp, #0x010]
	bl sub_814396C
	b _08143E7A
_08143D90: .4byte 0x0000020D
_08143D94:
	adds r0, r6, #0x0
	add r1, sp, #0x00C
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143DA8
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	b _08143DB4
_08143DA8:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08143DB4:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r4, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r7, #0x10]
	subs r3, r1, r0
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r7, r0
	subs r0, #0xD0
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x36]
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _08143DE2
	negs r1, r4
_08143DE2:
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08143DEA
	negs r0, r3
_08143DEA:
	cmp r1, r0
	ble _08143E10
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r4, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08143E30
_08143E10:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	cmp r3, #0x00
	blt _08143E20
	movs r1, #0x05
_08143E20:
	adds r0, #0x21
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_08143E30:
	adds r0, r7, #0x0
	bl sub_8047928
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _08143E8C @ =0x08144239
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
_08143E7A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143E8C: .4byte sub_8144238
	thumb_func_start sub_8143E90
sub_8143E90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	str r2, [sp, #0x00C]
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r5, #0xD1
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143ED0
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _08143EDC
_08143ED0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08143EDC:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r3, [r6, #0x0C]
	subs r0, r1, r3
	adds r1, r1, r0
	mov r12, r1
	ldr r1, [r2, #0x10]
	ldr r2, [r6, #0x10]
	subs r0, r1, r2
	adds r7, r1, r0
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	movs r5, #0x04
	ldsh r0, [r1, r5]
	adds r5, r3, #0x0
	cmp r0, #0x55
	bne _08143F1A
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xD8
	lsls r1, r1, #0x06
	b _08143F20
_08143F1A:
	ldr r0, [r1, #0x14]
	movs r1, #0xC0
	lsls r1, r1, #0x05
_08143F20:
	adds r3, r0, r1
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x2E]
	mov r1, r12
	subs r5, r1, r5
	subs r4, r7, r2
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	mov r0, r8
	mov r1, r12
	adds r2, r7, #0x0
	bl sub_813A44C
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _08143F50
	negs r1, r5
_08143F50:
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08143F58
	negs r0, r4
_08143F58:
	cmp r1, r0
	ble _08143F7E
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r5, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08143F9E
_08143F7E:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	cmp r4, #0x00
	blt _08143F8E
	movs r1, #0x05
_08143F8E:
	adds r0, #0x21
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_08143F9E:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r5, r6, r4
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r2, #0x01
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	add r4, r8
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r0, #0x03
	adds r1, #0x21
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x11]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	mov r0, r8
	bl sub_8047928
	mov r0, r8
	movs r1, #0x01
	bl sub_804776C
	mov r0, r8
	movs r1, #0x01
	bl sub_804761C
	ldr r0, _0814401C @ =0x08144021
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814401C: .4byte sub_8144020
	thumb_func_start sub_8144020
sub_8144020:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	mov r8, r1
	str r2, [sp, #0x000]
	mov r0, r8
	adds r0, #0x58
	str r0, [sp, #0x004]
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r7, [r0, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814406C
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814406C:
	ldr r1, _08144154 @ =0x00000242
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x0C]
	adds r0, r0, r1
	str r0, [r7, #0x0C]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r3, #0x98
	adds r2, r7, r3
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	movs r0, #0x92
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x00C]
	ldr r1, _08144158 @ =0x00000117
	add r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0814417C
	movs r0, #0x8B
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r0, [r0, #0x00]
	mov r12, r0
	ldrb r0, [r1, #0x00]
	add r0, r12
	cmp r12, r0
	bge _0814417C
	ldr r2, _0814415C @ =0x00000272
	mov r10, r2
	subs r3, #0x68
	adds r3, r7, r3
	str r3, [sp, #0x014]
	mov r0, r12
	str r0, [sp, #0x010]
_081440D4:
	mov r1, r12
	lsls r0, r1, #0x02
	add r0, r9
	ldr r4, [r0, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08144164
	mov r3, r10
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r6, r0, #0x01
	ldr r5, [r7, #0x0C]
	adds r1, r5, r6
	adds r0, r4, r3
	ldrh r0, [r0, #0x00]
	lsrs r3, r0, #0x01
	ldr r2, [r4, #0x0C]
	subs r0, r2, r3
	cmp r1, r0
	blt _08144164
	subs r1, r5, r6
	adds r0, r2, r3
	cmp r1, r0
	bgt _08144164
	ldr r1, _08144160 @ =0x00000276
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	ldr r2, [r4, #0x10]
	subs r0, r2, r0
	ldr r1, [r7, #0x10]
	cmp r1, r0
	blt _08144164
	ldr r3, _08144160 @ =0x00000276
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	cmp r0, r2
	bgt _08144164
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r1, r0
	ldr r0, [sp, #0x014]
	ldrh r1, [r0, #0x00]
	adds r1, r3, r1
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	cmp r1, r2
	blt _08144164
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	cmp r3, r0
	bgt _08144164
	movs r2, #0x01
	str r2, [sp, #0x00C]
	b _0814417C
_08144154: .4byte 0x00000242
_08144158: .4byte 0x00000117
_0814415C: .4byte 0x00000272
_08144160: .4byte 0x00000276
_08144164:
	mov r0, r12
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	ldr r0, _0814421C @ =0x00000117
	add r0, r9
	ldrb r0, [r0, #0x00]
	ldr r3, [sp, #0x010]
	adds r0, r3, r0
	cmp r12, r0
	blt _081440D4
_0814417C:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, _08144220 @ =0x02000001
	ands r0, r1
	cmp r0, #0x00
	beq _081441C8
	ldr r0, [r7, #0x24]
	movs r1, #0xFC
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	ldr r2, _08144224 @ =0x00000216
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	adds r0, r7, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	adds r0, r7, #0x0
	adds r0, #0x4C
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	beq _0814420A
_081441C8:
	ldr r2, _08144228 @ =0x0000020D
	add r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804776C
	ldr r1, [sp, #0x004]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	ldr r3, [sp, #0x008]
	adds r0, r0, r3
	adds r0, #0x3E
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814422C @ =0x0813B1E9
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x00]
	ldr r0, _08144230 @ =0x0813B361
	str r0, [r3, #0x0C]
	ldr r0, _08144234 @ =0x0814396D
	str r0, [r3, #0x04]
_0814420A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814421C: .4byte 0x00000117
_08144220: .4byte 0x02000001
_08144224: .4byte 0x00000216
_08144228: .4byte 0x0000020D
_0814422C: .4byte sub_813B1E8
_08144230: .4byte sub_813B360
_08144234: .4byte sub_814396C
	thumb_func_start sub_8144238
sub_8144238:
	push {lr}
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08144262
	adds r0, r1, #0x0
	adds r0, #0x20
	movs r3, #0x2A
	ldsh r1, [r1, r3]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _08144262
	ldr r0, _08144268 @ =0x08143E91
	str r0, [r2, #0x00]
_08144262:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144268: .4byte sub_8143E90
	thumb_func_start sub_814426C
sub_814426C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08144292
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_08144292:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	ldr r2, [r0, #0x0C]
	ldr r3, [r0, #0x10]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r5, #0x0
	bl sub_81382A8
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081442D0 @ =0x08139365
	str r0, [r6, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081442D0: .4byte sub_8139364
	thumb_func_start sub_81442D4
sub_81442D4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r5, #0x0
	movs r1, #0x0F
	bl sub_81387C8
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r3, r5, r0
	movs r1, #0xCE
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, _08144328 @ =0x08136D01
	str r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r5, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144328: .4byte sub_8136D00
	thumb_func_start sub_814432C
sub_814432C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FD4
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _08144374 @ =0x081435E5
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _08144378 @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144374: .4byte sub_81435E4
_08144378: .4byte sub_8139420
	thumb_func_start sub_814437C
sub_814437C:
	push {r4, lr}
	adds r4, r1, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08144394
	adds r0, r4, #0x0
	bl sub_81382A8
	b _081443C4
_08144394:
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
	ldr r0, _081443CC @ =0x0000020D
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r0, [r3, #0x00]
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
_081443C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081443CC: .4byte 0x0000020D
	thumb_func_start sub_81443D0
sub_81443D0:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08144418
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r0, _08144420 @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_804790C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08144424 @ =0x081434F5
	str r0, [r5, #0x00]
_08144418:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144420: .4byte 0x0000020E
_08144424: .4byte sub_81434F4
	thumb_func_start sub_8144428
sub_8144428:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _08144484 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08144488 @ =0x000002B6
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_81433FC
	pop {r4, r5}
	pop {r0}
	bx r0
_08144484: .4byte 0x0000033E
_08144488: .4byte 0x000002B6
	thumb_func_start sub_814448C
sub_814448C:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _081444C0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
_081444C0:
	movs r4, #0xEA
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08144554
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144558
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	add r0, sp, #0x008
	movs r1, #0x18
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	movs r1, #0x19
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	movs r1, #0x1A
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	movs r1, #0x1B
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	movs r1, #0x1C
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	movs r1, #0x1D
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r4, #0x08
	ldsh r3, [r0, r4]
	movs r4, #0x0A
	ldsh r1, [r0, r4]
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144558
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0814454C @ =0x08145A59
	str r0, [r1, #0x00]
	movs r4, #0xCE
	lsls r4, r4, #0x01
	adds r1, r5, r4
	ldr r0, _08144550 @ =0x08144561
	str r0, [r1, #0x00]
	b _08144558
	.byte 0x00, 0x00
_0814454C: .4byte sub_8145A58
_08144550: .4byte sub_8144560
_08144554:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08144558:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8144560
sub_8144560:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x58
	mov r10, r0
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081445A0
	add r1, sp, #0x004
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_081445A0:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r9, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	mov r0, r9
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081445DA
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _081445DC
_081445DA:
	ldr r1, _081446B8 @ =0x0000FFFF
_081445DC:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _081445F4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	bl sub_80478AC
_081445F4:
	movs r4, #0xA4
	lsls r4, r4, #0x01
	mov r2, r8
	adds r7, r2, r4
	ldr r3, [r7, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
	mov r0, r10
	adds r2, r0, r4
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _0814461A
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
_0814461A:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081446E2
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r8
	ldr r2, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x34
	add r0, sp, #0x008
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x35
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r1, r2, #0x0
	adds r1, #0x36
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r1, r2, #0x0
	adds r1, #0x37
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r1, r2, #0x0
	adds r1, #0x38
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r1, r2, #0x0
	adds r1, #0x39
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	mov r2, r9
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081446C4
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081446BC @ =0x081446F9
	str r0, [r1, #0x00]
	ldr r1, _081446C0 @ =0x08136B31
	str r1, [r7, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x01
	add r0, r8
	str r1, [r0, #0x00]
	b _081446E2
_081446B8: .4byte 0x0000FFFF
_081446BC: .4byte sub_81446F8
_081446C0: .4byte sub_8136B30
_081446C4:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081446F4 @ =0x08145AB1
	str r0, [r1, #0x00]
_081446E2:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081446F4: .4byte sub_8145AB0
	thumb_func_start sub_81446F8
sub_81446F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x028
	mov r9, r0
	adds r6, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x58
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _08144748 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814474C
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldr r3, [r2, #0x00]
	mov r0, r9
	adds r1, r6, #0x0
	bl _call_via_r3
	b _0814475A
_08144748: .4byte 0x00007FFF
_0814474C:
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814475A:
	movs r0, #0xA4
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _0814476E
	mov r0, r9
	adds r1, r6, #0x0
	bl _call_via_r3
_0814476E:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08144782
	b _081448A8
_08144782:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x0C]
	cmp r1, r0
	bne _0814480C
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	bne _0814480C
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	subs r4, #0xC4
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0814480C
	ldr r2, _081447FC @ =0x083A05EC
	ldr r1, _08144800 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r6, #0x0
	movs r1, #0x10
	bl sub_804790C
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144804 @ =0x0814494D
	str r0, [r1, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144808 @ =0x081459FD
	b _08144890
	.byte 0x00, 0x00
_081447FC: .4byte 0x083A05EC
_08144800: .4byte 0x00000216
_08144804: .4byte sub_814494C
_08144808: .4byte sub_81459FC
_0814480C:
	ldr r4, _08144868 @ =0x00000213
	adds r0, r6, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1C
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _08144888
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r8
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x16]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	add r2, r8
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x16]
	cmp r0, #0x00
	beq _08144878
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _0814486C @ =0x0813939D
	str r0, [r1, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144870 @ =0x0813B1E9
	str r0, [r1, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144874 @ =0x08145AB1
	b _08144890
_08144868: .4byte 0x00000213
_0814486C: .4byte sub_813939C
_08144870: .4byte sub_813B1E8
_08144874: .4byte sub_8145AB0
_08144878:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144884 @ =0x08145AB1
	b _08144890
	.byte 0x00, 0x00
_08144884: .4byte sub_8145AB0
_08144888:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _081448A4 @ =0x08145A59
_08144890:
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x01
	add r0, r8
	ldr r2, [r0, #0x00]
	mov r0, r9
	adds r1, r6, #0x0
	bl _call_via_r2
	b _08144938
_081448A4: .4byte sub_8145A58
_081448A8:
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r8
	ldr r7, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x34
	add r5, sp, #0x024
	mov r0, r9
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081448D2
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r5, #0x00]
_081448D2:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r2, [r0, #0x28]
	add r0, sp, #0x014
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x35
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r4, #0x01
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r4, #0x01
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r4, #0x01
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r4, #0x01
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r4, #0x0A
	ldsh r1, [r0, r4]
	str r1, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08144938
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, _08144948 @ =0x08145A59
	str r0, [r1, #0x00]
_08144938:
	add sp, #0x028
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144948: .4byte sub_8145A58
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
	thumb_func_start sub_8144B98
sub_8144B98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	movs r7, #0x01
	adds r1, r7, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _08144BD2
	mov r0, r8
	str r1, [r0, #0x00]
	b _08144CBA
_08144BD2:
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	movs r7, #0x00
	str r7, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144C2C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08144C28 @ =0x08145AB1
	str r0, [r1, #0x00]
	mov r1, r8
	str r7, [r1, #0x00]
	b _08144CBA
	.byte 0x00, 0x00
_08144C28: .4byte sub_8145AB0
_08144C2C:
	ldr r2, _08144C5C @ =0x083A05EC
	ldr r1, _08144C60 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08144C78
	cmp r0, #0x01
	bgt _08144C64
	cmp r0, #0x00
	beq _08144C6E
	b _08144C96
	.byte 0x00, 0x00
_08144C5C: .4byte 0x083A05EC
_08144C60: .4byte 0x00000216
_08144C64:
	cmp r0, #0x02
	beq _08144C80
	cmp r0, #0x03
	beq _08144C8C
	b _08144C96
_08144C6E:
	movs r0, #0x00
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x18
	b _08144C94
_08144C78:
	ldr r0, _08144C7C @ =0x03FFFFFF
	b _08144C90
_08144C7C: .4byte 0x03FFFFFF
_08144C80:
	movs r0, #0x00
	mov r10, r0
	ldr r1, _08144C88 @ =0x03FFFFFF
	b _08144C94
_08144C88: .4byte 0x03FFFFFF
_08144C8C:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08144C90:
	mov r10, r0
	movs r1, #0x00
_08144C94:
	mov r9, r1
_08144C96:
	ldr r0, _08144CCC @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	mov r2, r10
	mov r3, r9
	bl sub_8137CD8
	adds r0, r4, #0x0
	bl sub_8138494
	ldr r0, _08144CD0 @ =0x08145969
	mov r1, r8
	str r0, [r1, #0x00]
_08144CBA:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144CCC: .4byte 0x0000020D
_08144CD0: .4byte sub_8145968
	thumb_func_start sub_8144CD4
sub_8144CD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	str r2, [sp, #0x018]
	adds r0, r6, #0x0
	adds r0, #0x58
	str r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r8, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x30]
	mov r10, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	mov r9, r0
	adds r0, r5, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144D30
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08144D3C
_08144D30:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08144D3C:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r7, [r0, #0x28]
	ldr r3, [sp, #0x01C]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x1A
	ldsh r4, [r0, r2]
	cmp r4, #0x00
	beq _08144D86
	cmp r4, #0x01
	beq _08144DB6
	mov r3, r9
	str r3, [sp, #0x000]
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	mov r0, r8
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	mov r3, r10
	b _08144ECA
_08144D86:
	mov r0, r9
	str r0, [sp, #0x000]
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	mov r0, r8
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	str r4, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_813AA5C
	b _08144ECE
_08144DB6:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	ands r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _08144E54
	mov r1, r9
	str r1, [sp, #0x000]
	mov r2, r8
	adds r2, #0x40
	str r2, [sp, #0x020]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	str r0, [sp, #0x004]
	mov r4, r8
	adds r4, #0x41
	movs r0, #0x00
	ldsb r0, [r4, r0]
	str r0, [sp, #0x008]
	movs r3, #0x22
	str r3, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_813AA5C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _08144ECE
	ldr r2, _08144E48 @ =0x03001038
	ldr r0, _08144E4C @ =0x0819832C
	ldr r1, _08144E50 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r10
	movs r1, #0x02
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, r9
	str r1, [sp, #0x000]
	ldr r2, [sp, #0x020]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	str r0, [sp, #0x004]
	movs r0, #0x00
	ldsb r0, [r4, r0]
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r1, #0x00
	str r1, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	bl sub_813AA5C
	b _08144ECE
	.byte 0x00, 0x00
_08144E48: .4byte 0x03001038
_08144E4C: .4byte 0x0819832C
_08144E50: .4byte 0x08198220
_08144E54:
	mov r2, r9
	str r2, [sp, #0x000]
	mov r3, r8
	adds r3, #0x40
	str r3, [sp, #0x024]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	str r0, [sp, #0x004]
	mov r0, r8
	adds r0, #0x41
	str r0, [sp, #0x028]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r1, #0x22
	str r1, [sp, #0x00C]
	str r4, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_813AC5C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _08144ECE
	ldr r2, _08144F3C @ =0x03001038
	ldr r0, _08144F40 @ =0x0819832C
	ldr r1, _08144F44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r0, r10
	movs r1, #0x02
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r2, r9
	str r2, [sp, #0x000]
	ldr r1, [sp, #0x024]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	str r0, [sp, #0x004]
	ldr r2, [sp, #0x028]
	movs r0, #0x00
	ldsb r0, [r2, r0]
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	str r4, [sp, #0x010]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
_08144ECA:
	bl sub_813AC5C
_08144ECE:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08144F3C @ =0x03001038
	ldr r0, _08144F40 @ =0x0819832C
	ldr r1, _08144F44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	ldr r3, [sp, #0x01C]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _08144F48 @ =0x08144F4D
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144F3C: .4byte 0x03001038
_08144F40: .4byte 0x0819832C
_08144F44: .4byte 0x08198220
_08144F48: .4byte sub_8144F4C
	thumb_func_start sub_8144F4C
sub_8144F4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	bl sub_813B514
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08144F98
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	adds r0, #0xD0
	ldrh r0, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08144FD4 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _08144FD8 @ =0x08144CD5
	str r0, [r6, #0x0C]
_08144F98:
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08144FE0
	movs r0, #0x03
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0x11
	movs r3, #0x1E
	bl sub_8139FB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144FCC
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_81457C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144FE4
	ldr r0, _08144FDC @ =0x08144FF1
	str r0, [r6, #0x00]
_08144FCC:
	mov r1, r8
	ldrh r0, [r1, #0x1C]
	b _08144FE2
	.byte 0x00, 0x00
_08144FD4: .4byte sub_813B1E8
_08144FD8: .4byte sub_8144CD4
_08144FDC: .4byte sub_8144FF0
_08144FE0:
	subs r0, #0x01
_08144FE2:
	strh r0, [r5, #0x00]
_08144FE4:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8144FF0
sub_8144FF0:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	adds r0, r0, r4
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8047928
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _0814505C @ =0x08145061
	str r0, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814505C: .4byte sub_8145060
	thumb_func_start sub_8145060
sub_8145060:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	mov r9, r1
	adds r5, r2, #0x0
	bl sub_81457C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145084
	ldr r0, _08145080 @ =0x08144CD5
	b _08145278
_08145080: .4byte sub_8144CD4
_08145084:
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r9
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08145092
	b _08145276
_08145092:
	subs r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081450AC
	ldr r0, _081450A8 @ =0x08144CD5
	b _08145278
_081450A8: .4byte sub_8144CD4
_081450AC:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x004]
	ldr r1, [r0, #0x0C]
	mov r2, r9
	ldr r0, [r2, #0x0C]
	subs r7, r1, r0
	ldr r3, [sp, #0x004]
	ldr r1, [r3, #0x10]
	ldr r0, [r2, #0x10]
	subs r5, r1, r0
	ldr r4, _08145184 @ =0x03001038
	mov r10, r4
	ldr r4, _08145188 @ =0x0819832C
	ldr r0, _0814518C @ =0x08198220
	subs r4, r4, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r6, r2, r4
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x10
	bl _call_via_r6
	mov r8, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	lsls r0, r7, #0x04
	mov r1, r8
	bl _call_via_r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	ldr r6, _08145190 @ =0x00000242
	add r6, r9
	strh r0, [r6, #0x00]
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	lsls r0, r5, #0x04
	mov r1, r8
	bl _call_via_r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	movs r1, #0x91
	lsls r1, r1, #0x02
	add r1, r9
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	mov r3, r9
	ldr r2, [r3, #0x0C]
	adds r2, r2, r0
	str r2, [r3, #0x0C]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	ldr r1, [r3, #0x10]
	adds r1, r1, r0
	str r1, [r3, #0x10]
	ldr r3, [sp, #0x004]
	ldr r0, [r3, #0x0C]
	subs r2, r0, r2
	ldr r0, [r3, #0x10]
	subs r1, r0, r1
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08145194
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _08145198
_08145184: .4byte 0x03001038
_08145188: .4byte 0x0819832C
_0814518C: .4byte 0x08198220
_08145190: .4byte 0x00000242
_08145194:
	movs r3, #0x01
	negs r3, r3
_08145198:
	mov r2, r9
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x004]
	ldr r1, [r0, #0x0C]
	mov r3, r9
	ldr r0, [r3, #0x0C]
	subs r3, r1, r0
	ldr r4, [sp, #0x004]
	ldr r1, [r4, #0x10]
	mov r4, r9
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r3, #0x0
	orrs r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	beq _081451DA
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _081451DC
_081451DA:
	movs r0, #0xFF
_081451DC:
	mov r1, r9
	strb r0, [r1, #0x02]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	add r4, r9
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r6, [r0, #0x00]
	ldrb r2, [r1, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x11]
	ldr r2, _08145220 @ =0x03001038
	ldr r0, _08145224 @ =0x0819832C
	ldr r1, _08145228 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, #0x01
	beq _08145248
	cmp r0, #0x01
	bgt _0814522C
	cmp r0, #0x00
	beq _08145236
	b _0814525E
	.byte 0x00, 0x00
_08145220: .4byte 0x03001038
_08145224: .4byte 0x0819832C
_08145228: .4byte 0x08198220
_0814522C:
	cmp r0, #0x02
	beq _08145256
	cmp r0, #0x03
	beq _0814523E
	b _0814525E
_08145236:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	b _0814525C
_0814523E:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_08145248:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x07
	b _0814525C
_08145256:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x0A
_0814525C:
	strb r1, [r0, #0x00]
_0814525E:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	beq _0814527A
	mov r0, r9
	bl sub_8047928
	b _0814527A
_08145276:
	ldr r0, _0814528C @ =0x08145291
_08145278:
	str r0, [r5, #0x00]
_0814527A:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814528C: .4byte sub_8145290
	thumb_func_start sub_8145290
sub_8145290:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _081452D4 @ =0x03001038
	ldr r0, _081452D8 @ =0x0819832C
	ldr r1, _081452DC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, #0x01
	beq _08145308
	cmp r0, #0x01
	bgt _081452E0
	cmp r0, #0x00
	beq _081452EA
	b _08145324
_081452D4: .4byte 0x03001038
_081452D8: .4byte 0x0819832C
_081452DC: .4byte 0x08198220
_081452E0:
	cmp r0, #0x02
	beq _08145316
	cmp r0, #0x03
	beq _081452F8
	b _08145324
_081452EA:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	b _08145322
_081452F8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
_08145308:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x07
	b _08145322
_08145316:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x0A
_08145322:
	strb r1, [r0, #0x00]
_08145324:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	bl sub_8047928
	ldr r0, _0814534C @ =0x08145351
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814534C: .4byte sub_8145350
	thumb_func_start sub_8145350
sub_8145350:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	bl sub_81457C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145372
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814537C
_08145372:
	ldr r0, _08145378 @ =0x08144CD5
	str r0, [r6, #0x00]
	b _0814549E
_08145378: .4byte sub_8144CD4
_0814537C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08145390
	b _0814549E
_08145390:
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x05
	beq _081453A2
	cmp r0, #0x08
	beq _081453A2
	cmp r0, #0x0B
	bne _081453BC
_081453A2:
	ldr r0, _081453B8 @ =0x081454A9
	str r0, [r6, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0814549E
_081453B8: .4byte sub_81454A8
_081453BC:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r3, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r3, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081453F2
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r2, r0, #0x0D
	movs r0, #0x07
	ands r2, r0
	b _081453F6
_081453F2:
	movs r2, #0x01
	negs r2, r2
_081453F6:
	adds r3, r5, #0x0
	adds r3, #0x24
	movs r0, #0x07
	ands r2, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, _08145444 @ =0x03001038
	ldr r0, _08145448 @ =0x0819832C
	ldr r1, _0814544C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, #0x01
	beq _0814546C
	cmp r0, #0x01
	bgt _08145450
	cmp r0, #0x00
	beq _0814545A
	b _08145482
	.byte 0x00, 0x00
_08145444: .4byte 0x03001038
_08145448: .4byte 0x0819832C
_0814544C: .4byte 0x08198220
_08145450:
	cmp r0, #0x02
	beq _0814547A
	cmp r0, #0x03
	beq _08145462
	b _08145482
_0814545A:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x05
	b _08145480
_08145462:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814546C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x08
	b _08145480
_0814547A:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x0B
_08145480:
	strb r1, [r0, #0x00]
_08145482:
	adds r0, r5, #0x0
	bl sub_8047928
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0814549E:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81454A8
sub_81454A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081454DE
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081454EA
_081454DE:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081454EA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r4, #0xBC
	lsls r4, r4, #0x01
	add r4, r9
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	ldr r6, [sp, #0x00C]
	adds r0, r0, r6
	ldrh r5, [r0, #0x2C]
	ldr r0, _08145594 @ =0x00000242
	mov r8, r0
	adds r0, r3, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldr r1, [r3, #0x0C]
	adds r1, r1, r0
	movs r6, #0x91
	lsls r6, r6, #0x02
	mov r10, r6
	adds r0, r3, r6
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	ldr r2, [r3, #0x10]
	adds r2, r2, r0
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	adds r3, r5, #0x0
	bl sub_813A284
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x00C]
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r2, [r0, #0x00]
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	lsls r2, r2, #0x08
	adds r1, r1, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_813B394
	movs r6, #0x85
	lsls r6, r6, #0x02
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	adds r2, r7, r0
	mov r1, r10
	adds r3, r7, r1
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08145598
	movs r6, #0x00
	ldsh r0, [r2, r6]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814559A
	.byte 0x00, 0x00
_08145594: .4byte 0x00000242
_08145598:
	movs r0, #0xFF
_0814559A:
	strb r0, [r7, #0x02]
	movs r1, #0xC2
	lsls r1, r1, #0x01
	add r1, r9
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	add r1, r9
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	ldr r6, _081455D4 @ =0x0000020F
	adds r2, r7, r6
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081455D8 @ =0x081458C9
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081455D4: .4byte 0x0000020F
_081455D8: .4byte sub_81458C8
	thumb_func_start sub_81455DC
sub_81455DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, _08145624 @ =0x03001038
	ldr r0, _08145628 @ =0x0819832C
	ldr r1, _0814562C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, #0x01
	beq _0814564C
	cmp r0, #0x01
	bgt _08145630
	cmp r0, #0x00
	beq _0814563A
	b _08145662
_08145624: .4byte 0x03001038
_08145628: .4byte 0x0819832C
_0814562C: .4byte 0x08198220
_08145630:
	cmp r0, #0x02
	beq _0814565A
	cmp r0, #0x03
	beq _08145642
	b _08145662
_0814563A:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x03
	b _08145660
_08145642:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814564C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x06
	b _08145660
_0814565A:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x09
_08145660:
	strb r1, [r0, #0x00]
_08145662:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r6, r0
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r0, _08145698 @ =0x0814569D
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08145698: .4byte sub_814569C
	thumb_func_start sub_814569C
sub_814569C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r5, r1, #0x0
	mov r9, r2
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081457AA
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r7, r5, r0
	ldrb r1, [r7, #0x00]
	movs r2, #0x08
	negs r2, r2
	mov r10, r2
	mov r0, r10
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r7, #0x00]
	ldr r2, _08145740 @ =0x03001038
	ldr r0, _08145744 @ =0x0819832C
	ldr r1, _08145748 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	add r0, sp, #0x010
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	movs r0, #0xE8
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrh r0, [r6, #0x00]
	add r0, r8
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r2, _0814574C @ =0x00007FFF
	add r0, sp, #0x010
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145758
	ldr r0, _08145750 @ =0x0813B1E9
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _08145754 @ =0x08144CD5
	b _081457A8
	.byte 0x00, 0x00
_08145740: .4byte 0x03001038
_08145744: .4byte 0x0819832C
_08145748: .4byte 0x08198220
_0814574C: .4byte 0x00007FFF
_08145750: .4byte sub_813B1E8
_08145754: .4byte sub_8144CD4
_08145758:
	ldrh r1, [r6, #0x00]
	lsls r0, r1, #0x01
	add r0, r8
	ldrh r4, [r0, #0x38]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	add r1, r8
	adds r1, #0x34
	ldrb r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldrb r1, [r7, #0x00]
	mov r0, r10
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	subs r2, #0xB4
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	add r4, sp, #0x004
	movs r0, #0x00
	strb r0, [r4, #0x00]
	mov r0, r9
	str r0, [sp, #0x008]
	ldr r0, _081457BC @ =0x0813B1E9
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	bl sub_814585C
	ldr r0, _081457C0 @ =0x08144CD5
	mov r1, r9
_081457A8:
	str r0, [r1, #0x0C]
_081457AA:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081457BC: .4byte sub_813B1E8
_081457C0: .4byte sub_8144CD4
	thumb_func_start sub_81457C4
sub_81457C4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	ldrb r0, [r6, #0x08]
	cmp r0, #0x00
	beq _08145852
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081457EE
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _081457FA
_081457EE:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081457FA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	ldrb r2, [r6, #0x09]
	movs r1, #0x01
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _08145818
	ldr r0, [r3, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	ble _0814584E
_08145818:
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	bne _0814582A
	ldr r0, [r3, #0x0C]
	ldr r1, [r5, #0x0C]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0814584E
_0814582A:
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	bne _0814583C
	ldr r0, [r3, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0814584E
_0814583C:
	movs r0, #0x08
	ands r2, r0
	cmp r2, #0x00
	bne _08145852
	ldr r0, [r3, #0x0C]
	ldr r1, [r5, #0x0C]
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _08145852
_0814584E:
	movs r0, #0x00
	b _08145854
_08145852:
	movs r0, #0x01
_08145854:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_814585C
sub_814585C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r4, [sp, #0x01C]
	add r0, sp, #0x020
	ldrb r5, [r0, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x58
	str r4, [sp, #0x000]
	add r0, sp, #0x004
	strb r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A44C
	ldr r0, _081458A4 @ =0x00000242
	adds r3, r6, r0
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _081458A8
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _081458AA
	.byte 0x00, 0x00
_081458A4: .4byte 0x00000242
_081458A8:
	movs r0, #0xFF
_081458AA:
	strb r0, [r6, #0x02]
	ldr r1, _081458C4 @ =0x08145B65
	ldr r0, [sp, #0x024]
	str r1, [r0, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [sp, #0x028]
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081458C4: .4byte sub_8145B64
	thumb_func_start sub_81458C8
sub_81458C8:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _08145914 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814590C
	ldr r0, _08145918 @ =0x0000020F
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814591C @ =0x081455DD
	str r0, [r5, #0x00]
_0814590C:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_08145914: .4byte 0x00000242
_08145918: .4byte 0x0000020F
_0814591C: .4byte sub_81455DC
	thumb_func_start sub_8145920
sub_8145920:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _0814595C @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08145960 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08145964 @ =0x08144CD5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814595C: .4byte 0x0000033E
_08145960: .4byte sub_813B380
_08145964: .4byte sub_8144CD4
	thumb_func_start sub_8145968
sub_8145968:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r4, [r0, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _0814598A
	str r1, [r5, #0x00]
	b _081459F6
_0814598A:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _081459AC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_081459AC:
	ldr r1, _081459E8 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	adds r0, r4, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	orrs r1, r0
	cmp r1, #0x00
	beq _081459F0
	ldr r0, _081459EC @ =0x0000020D
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r0, #0x00
	str r0, [r5, #0x00]
	b _081459F6
_081459E8: .4byte 0x00000216
_081459EC: .4byte 0x0000020D
_081459F0:
	adds r0, r4, #0x0
	bl sub_8138494
_081459F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_81459FC
sub_81459FC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _08145A1E
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r3
_08145A1E:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08145A4E
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08145A54 @ =0x08145AB1
	str r0, [r1, #0x00]
_08145A4E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08145A54: .4byte sub_8145AB0
	thumb_func_start sub_8145A58
sub_8145A58:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r5, #0x0
	movs r1, #0x0F
	bl sub_81387C8
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r3, r5, r0
	ldr r0, _08145AA8 @ =0x08144561
	str r0, [r3, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, _08145AAC @ =0x08136D01
	str r1, [r0, #0x00]
	movs r2, #0xD2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145AA8: .4byte sub_8144560
_08145AAC: .4byte sub_8136D00
	thumb_func_start sub_8145AB0
sub_8145AB0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FD4
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _08145AF8 @ =0x0814448D
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _08145AFC @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145AF8: .4byte sub_814448C
_08145AFC: .4byte sub_8139420
	thumb_func_start sub_8145B00
sub_8145B00:
	push {r4, r5, lr}
	ldr r2, _08145B54 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r5, r1, r3
	ldr r3, [r5, #0x00]
	ldr r2, _08145B58 @ =0x0000020D
	adds r3, r3, r2
	ldrb r4, [r3, #0x00]
	movs r2, #0x05
	negs r2, r2
	ands r2, r4
	strb r2, [r3, #0x00]
	ldr r3, _08145B5C @ =0x000002B6
	adds r4, r1, r3
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	ldr r2, [r5, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r2, r2, r3
	movs r3, #0x00
	str r3, [r2, #0x00]
	ldr r2, _08145B60 @ =0x0000033D
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x08
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_8145AB0
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145B54: .4byte 0x0000033E
_08145B58: .4byte 0x0000020D
_08145B5C: .4byte 0x000002B6
_08145B60: .4byte 0x0000033D
	thumb_func_start sub_8145B64
sub_8145B64:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145B80
	movs r1, #0xD2
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
_08145B80:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8145B88
sub_8145B88:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	adds r1, #0xB4
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x08]
	cmp r0, #0x00
	beq _08145BF4
	adds r0, r4, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145BC2
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08145BCE
_08145BC2:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08145BCE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x0A
	bl sub_8139BB0
	ldr r2, _08145BF0 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	b _08145C04
	.byte 0x00, 0x00
_08145BF0: .4byte 0x00007FFF
_08145BF4:
	movs r0, #0x03
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x11
	movs r3, #0x18
	bl sub_8139FB0
_08145C04:
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145C14
	ldr r0, _08145C10 @ =0x08146F2D
	str r0, [r6, #0x00]
	b _08145C42
_08145C10: .4byte sub_8146F2C
_08145C14:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145C42
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r0, _08145C50 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _08145C54 @ =0x08146FAD
	str r0, [r6, #0x0C]
_08145C42:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145C50: .4byte sub_813B1E8
_08145C54: .4byte sub_8146FAC
	thumb_func_start sub_8145C58
sub_8145C58:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r3, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08145C86
	b _08145DB4
_08145C86:
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08145C94
	b _08145D98
_08145C94:
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145CA8
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08145CB4
_08145CA8:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08145CB4:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	add r6, sp, #0x004
	ldr r2, _08145CF4 @ =0x03001038
	ldr r0, _08145CF8 @ =0x0819832C
	ldr r1, _08145CFC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08145D00
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08145D04
_08145CF4: .4byte 0x03001038
_08145CF8: .4byte 0x0819832C
_08145CFC: .4byte 0x08198220
_08145D00:
	movs r1, #0x01
	negs r1, r1
_08145D04:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	strb r0, [r6, #0x00]
	ldr r2, _08145D8C @ =0x03001038
	ldr r0, _08145D90 @ =0x0819832C
	ldr r1, _08145D94 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	add r1, sp, #0x004
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08145D3A
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
_08145D3A:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, r0, r7
	adds r0, #0x22
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r2, [r0, #0x26]
	lsls r4, r4, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_813B394
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08145DC8
_08145D8C: .4byte 0x03001038
_08145D90: .4byte 0x0819832C
_08145D94: .4byte 0x08198220
_08145D98:
	ldr r0, _08145DAC @ =0x0000020F
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08145DB0 @ =0x08146E9D
	str r0, [r3, #0x00]
	b _08145DC8
_08145DAC: .4byte 0x0000020F
_08145DB0: .4byte sub_8146E9C
_08145DB4:
	adds r0, r5, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145DC8
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_08145DC8:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8145DD4
sub_8145DD4:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	ldr r0, _08145E7C @ =0x0000033E
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r5, r3
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xF4
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	ldr r1, _08145E80 @ =0x0000033D
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r3, r5, r1
	movs r4, #0x00
	strh r0, [r3, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x06]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r4, [r0, #0x00]
	subs r3, #0x18
	adds r1, r5, r3
	ldr r0, _08145E84 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08145E88 @ =0x08145E8D
	str r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145E7C: .4byte 0x0000033E
_08145E80: .4byte 0x0000033D
_08145E84: .4byte sub_813B380
_08145E88: .4byte sub_8145E8C
	thumb_func_start sub_8145E8C
sub_8145E8C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08145EC4
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08145EBC @ =0x08146005
	str r0, [r2, #0x00]
	ldr r0, _08145EC0 @ =0x0814616D
	str r0, [r2, #0x08]
	b _08145FF0
	.byte 0x00, 0x00
_08145EBC: .4byte sub_8146004
_08145EC0: .4byte sub_814616C
_08145EC4:
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08145ED4
	subs r0, #0x01
	b _08145F18
_08145ED4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x08
	bl sub_81DD77C
	adds r1, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0x24
	movs r0, #0x07
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r3, _08145F44 @ =0x03001038
	ldr r1, _08145F48 @ =0x0819832C
	ldr r2, _08145F4C @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x1E
_08145F18:
	strh r0, [r5, #0x00]
	movs r0, #0x03
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x11
	movs r3, #0x00
	bl sub_8139FB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145FF0
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145F50
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08145F5C
_08145F44: .4byte 0x03001038
_08145F48: .4byte 0x0819832C
_08145F4C: .4byte 0x08198220
_08145F50:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08145F5C:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	ldr r2, _08145F9C @ =0x03001038
	ldr r0, _08145FA0 @ =0x0819832C
	ldr r1, _08145FA4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08145FA8
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08145FAC
	.byte 0x00, 0x00
_08145F9C: .4byte 0x03001038
_08145FA0: .4byte 0x0819832C
_08145FA4: .4byte 0x08198220
_08145FA8:
	movs r1, #0x01
	negs r1, r1
_08145FAC:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _08145FF8 @ =0x03001038
	ldr r0, _08145FFC @ =0x0819832C
	ldr r1, _08146000 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r5
	beq _08145FE2
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
_08145FE2:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_08145FF0:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08145FF8: .4byte 0x03001038
_08145FFC: .4byte 0x0819832C
_08146000: .4byte 0x08198220
	thumb_func_start sub_8146004
sub_8146004:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x0E]
	ldr r2, _08146080 @ =0x000002DE
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146084 @ =0x0000020D
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146088 @ =0x0814608D
	str r0, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146080: .4byte 0x000002DE
_08146084: .4byte 0x0000020D
_08146088: .4byte sub_814608C
	thumb_func_start sub_814608C
sub_814608C:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08146146
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081460E2
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	subs r2, #0x9A
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	b _081460FE
_081460E2:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _08146128 @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
_081460FE:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0814613C
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0814612C
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	b _08146130
_08146128: .4byte 0x00000242
_0814612C:
	movs r0, #0x04
	orrs r0, r1
_08146130:
	strb r0, [r2, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0814613C:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146146:
	ldr r2, _08146168 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08146162
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, [r6, #0x08]
	str r0, [r6, #0x00]
_08146162:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08146168: .4byte 0x000002DE
	thumb_func_start sub_814616C
sub_814616C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	mov r8, r0
	adds r6, r1, #0x0
	str r2, [sp, #0x020]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	ldr r3, _081461DC @ =0x0000020E
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r4
	ldrb r1, [r0, #0x0A]
	ldr r2, _081461E0 @ =0x000002DE
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r1, r6, r3
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	mov r0, r8
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081461F0
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	b _081461FC
_081461DC: .4byte 0x0000020E
_081461E0: .4byte 0x000002DE
_081461E4:
	ldr r0, _081461EC @ =0x08146499
	ldr r4, [sp, #0x020]
	str r0, [r4, #0x00]
	b _08146480
_081461EC: .4byte sub_8146498
_081461F0:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081461FC:
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x28]
	mov r9, r0
	movs r0, #0x00
	mov r10, r0
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x024]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x028]
	mov r3, sp
	adds r3, #0x1C
	str r3, [sp, #0x02C]
	mov r4, sp
	adds r4, #0x08
	str r4, [sp, #0x030]
	mov r0, sp
	adds r0, #0x0C
	str r0, [sp, #0x034]
	mov r5, r9
	movs r7, #0x00
_0814622A:
	ldr r2, _08146258 @ =0x03001038
	ldr r1, _0814625C @ =0x0819832C
	ldr r0, _08146260 @ =0x08198220
	subs r1, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r1
	mov r0, r9
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x01
	beq _081462EC
	cmp r4, #0x01
	bgt _08146264
	cmp r4, #0x00
	beq _08146270
	b _08146408
	.byte 0x00, 0x00
_08146258: .4byte 0x03001038
_0814625C: .4byte 0x0819832C
_08146260: .4byte 0x08198220
_08146264:
	cmp r4, #0x02
	beq _0814634C
	cmp r4, #0x03
	bne _0814626E
	b _08146396
_0814626E:
	b _08146408
_08146270:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _081462A8
	cmp r1, #0x01
	bcc _08146294
	cmp r1, #0x02
	beq _081462C4
	cmp r1, #0x03
	beq _081462D6
	b _08146408
_08146294:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, _081462A4 @ =0xFFFFA000
	adds r2, r2, r3
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462A4: .4byte 0xFFFFA000
_081462A8:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	ldr r3, _081462C0 @ =0xFFFFE000
	adds r2, r2, r3
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
	.byte 0x00, 0x00
_081462C0: .4byte 0xFFFFE000
_081462C4:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462D6:
	ldr r1, [r5, #0x0C]
	ldr r0, _081462E8 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	ldr r3, [r5, #0x14]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	b _081463E8
_081462E8: .4byte 0xFFFFE000
_081462EC:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _08146324
	cmp r1, #0x01
	bcc _08146310
	cmp r1, #0x02
	beq _08146330
	cmp r1, #0x03
	beq _0814633E
	b _08146408
_08146310:
	ldr r1, [r5, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r1, r1, r2
	ldr r2, [r5, #0x10]
	ldr r3, _08146320 @ =0xFFFFE000
	b _081463E0
	.byte 0x00, 0x00
_08146320: .4byte 0xFFFFE000
_08146324:
	ldr r1, [r5, #0x0C]
	movs r4, #0xC0
	lsls r4, r4, #0x07
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	b _081463E2
_08146330:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
_0814633E:
	ldr r1, [r5, #0x0C]
	ldr r0, _08146348 @ =0xFFFFD000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	b _081463E2
_08146348: .4byte 0xFFFFD000
_0814634C:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _0814637C
	cmp r1, #0x01
	bcc _08146370
	cmp r1, #0x02
	beq _0814638A
	cmp r1, #0x03
	beq _081463D4
	b _08146408
_08146370:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, _08146378 @ =0xFFFFD000
	b _081463E0
_08146378: .4byte 0xFFFFD000
_0814637C:
	ldr r1, [r5, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
_0814638A:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	movs r4, #0xC0
	lsls r4, r4, #0x07
	adds r2, r2, r4
	b _081463E2
_08146396:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	ands r0, r4
	cmp r0, #0x01
	beq _081463C8
	cmp r0, #0x01
	bcc _081463B6
	cmp r0, #0x02
	beq _081463D4
	cmp r0, #0x03
	beq _081463F4
	b _08146408
_081463B6:
	ldr r1, [r5, #0x0C]
	ldr r0, _081463C4 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	b _081463E2
	.byte 0x00, 0x00
_081463C4: .4byte 0xFFFFE000
_081463C8:
	ldr r1, [r5, #0x0C]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	b _081463E2
_081463D4:
	ldr r1, [r5, #0x0C]
	ldr r0, _081463F0 @ =0xFFFFE000
	adds r1, r1, r0
	ldr r2, [r5, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x06
_081463E0:
	adds r2, r2, r3
_081463E2:
	ldr r3, [r5, #0x14]
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
_081463E8:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _08146408
_081463F0: .4byte 0xFFFFE000
_081463F4:
	ldr r1, [r5, #0x0C]
	ldr r4, _08146490 @ =0xFFFFA000
	adds r1, r1, r4
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	str r7, [sp, #0x000]
	str r7, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_08146408:
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	ldr r3, [sp, #0x028]
	str r3, [sp, #0x000]
	ldr r4, [sp, #0x02C]
	str r4, [sp, #0x004]
	ldr r3, [sp, #0x030]
	strb r7, [r3, #0x00]
	movs r3, #0x01
	ldr r4, [sp, #0x034]
	strb r3, [r4, #0x00]
	ldr r3, [sp, #0x024]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0814645C
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r4, [sp, #0x008]
	mov r0, r8
	adds r1, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814645C
	b _081461E4
_0814645C:
	movs r0, #0x01
	add r10, r0
	mov r1, r10
	cmp r1, #0x03
	bgt _08146468
	b _0814622A
_08146468:
	ldr r1, [r6, #0x34]
	ldr r2, [r6, #0x38]
	ldr r3, [r6, #0x3C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	ldr r0, _08146494 @ =0x08146499
	ldr r2, [sp, #0x020]
	str r0, [r2, #0x00]
_08146480:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08146490: .4byte 0xFFFFA000
_08146494: .4byte sub_8146498
	thumb_func_start sub_8146498
sub_8146498:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08146552
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081464EE
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	subs r2, #0x9A
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	b _0814650A
_081464EE:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _08146534 @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
_0814650A:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08146548
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146538
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	b _0814653C
_08146534: .4byte 0x00000242
_08146538:
	movs r0, #0x04
	orrs r0, r1
_0814653C:
	strb r0, [r2, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146548:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146552:
	ldr r2, _081465A4 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0814659E
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081465A8 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081465AC @ =0x081465B1
	str r0, [r6, #0x00]
_0814659E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081465A4: .4byte 0x000002DE
_081465A8: .4byte 0x0000020D
_081465AC: .4byte sub_81465B0
	thumb_func_start sub_81465B0
sub_81465B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081465DE
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _081465EA
_081465DE:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081465EA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	ldrb r0, [r0, #0x12]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _08146654 @ =0x03001038
	ldr r0, _08146658 @ =0x0819832C
	ldr r1, _0814665C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08146660
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08146664
_08146654: .4byte 0x03001038
_08146658: .4byte 0x0819832C
_0814665C: .4byte 0x08198220
_08146660:
	movs r1, #0x01
	negs r1, r1
_08146664:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	adds r1, #0x04
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	ldrb r0, [r0, #0x16]
	adds r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r0, _081466A0 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _081466A4 @ =0x081466A9
	str r0, [r1, #0x0C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081466A0: .4byte sub_813B1E8
_081466A4: .4byte sub_81466A8
	thumb_func_start sub_81466A8
sub_81466A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r10, r2
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081466E6
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _081466F2
_081466E6:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081466F2:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r2, _0814673C @ =0x03001038
	ldr r0, _08146740 @ =0x0819832C
	ldr r1, _08146744 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, #0x0
	bl sub_8146DC8
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	cmp r6, #0x01
	beq _08146796
	cmp r6, #0x01
	bgt _08146748
	cmp r6, #0x00
	beq _08146752
	b _08146864
_0814673C: .4byte 0x03001038
_08146740: .4byte 0x0819832C
_08146744: .4byte 0x08198220
_08146748:
	cmp r6, #0x02
	beq _081467D4
	cmp r6, #0x03
	beq _0814681A
	b _08146864
_08146752:
	ldr r0, [r4, #0x10]
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	ldr r1, _08146778 @ =0xFFFFF000
	cmp r0, r1
	blt _08146780
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _0814677C @ =0x08146005
	mov r2, r10
	str r0, [r2, #0x00]
	b _08146AE2
	.byte 0x00, 0x00
_08146778: .4byte 0xFFFFF000
_0814677C: .4byte sub_8146004
_08146780:
	ldr r1, [r7, #0x0C]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	b _08146812
_08146796:
	ldr r0, [r4, #0x0C]
	ldr r2, [r7, #0x0C]
	subs r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bgt _081467BC
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _081467B8 @ =0x08146005
	b _08146ADE
_081467B8: .4byte sub_8146004
_081467BC:
	movs r0, #0xA0
	lsls r0, r0, #0x04
	adds r1, r2, r0
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	str r6, [sp, #0x000]
	b _0814680E
_081467D4:
	ldr r0, [r4, #0x10]
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bgt _081467FC
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _081467F8 @ =0x08146005
	b _08146ADE
	.byte 0x00, 0x00
_081467F8: .4byte sub_8146004
_081467FC:
	ldr r1, [r7, #0x0C]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814680E:
	movs r0, #0x00
	str r0, [sp, #0x004]
_08146812:
	adds r0, r5, #0x0
	bl sub_8047F60
	b _08146864
_0814681A:
	ldr r0, [r4, #0x0C]
	ldr r2, [r7, #0x0C]
	subs r0, r0, r2
	ldr r1, _0814683C @ =0xFFFFF000
	cmp r0, r1
	blt _08146844
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08146840 @ =0x08146005
	b _08146ADE
	.byte 0x00, 0x00
_0814683C: .4byte 0xFFFFF000
_08146840: .4byte sub_8146004
_08146844:
	ldr r0, _081468F8 @ =0xFFFFF600
	adds r1, r2, r0
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
_08146864:
	adds r1, r6, #0x0
	adds r1, #0x08
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	mov r9, r1
	mov r1, r9
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [sp, #0x00C]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r3, [r0, #0x1A]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	cmp r6, #0x00
	bne _08146938
	ldr r2, _081468FC @ =0x00000242
	adds r2, r2, r5
	mov r8, r2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	cmp r1, #0x00
	bge _081468BC
	negs r1, r1
_081468BC:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081468CC
	negs r0, r0
_081468CC:
	cmp r1, r0
	blt _08146900
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r6, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	mov r2, r8
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsrs r1, r1, #0x1F
	mov r2, r9
	ands r1, r2
	b _08146A52
	.byte 0x00, 0x00
_081468F8: .4byte 0xFFFFF600
_081468FC: .4byte 0x00000242
_08146900:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r6, [sp, #0x000]
	movs r1, #0x09
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x10
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r1, _08146934 @ =0x0000027A
	adds r0, r5, r1
	movs r1, #0x06
	strh r1, [r0, #0x00]
	adds r2, #0x02
	b _08146A98
	.byte 0x00, 0x00
_08146934: .4byte 0x0000027A
_08146938:
	cmp r6, #0x01
	bne _08146988
	ldr r1, _08146984 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _0814694A
	negs r1, r1
_0814694A:
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _0814695A
	negs r0, r0
_0814695A:
	cmp r1, r0
	ble _08146960
	b _08146A68
_08146960:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	mvns r1, r1
	b _08146A4C
	.byte 0x00, 0x00
_08146984: .4byte 0x00000242
_08146988:
	cmp r6, #0x02
	bne _08146A0C
	ldr r0, _081469D0 @ =0x00000242
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r1, [r6, r2]
	cmp r1, #0x00
	bge _0814699A
	negs r1, r1
_0814699A:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081469AA
	negs r0, r0
_081469AA:
	cmp r1, r0
	blt _081469D4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	mvns r1, r1
	b _08146A4C
_081469D0: .4byte 0x00000242
_081469D4:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x10
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r1, _08146A08 @ =0x0000027A
	adds r0, r5, r1
	movs r1, #0x06
	strh r1, [r0, #0x00]
	adds r2, #0x02
	b _08146A98
_08146A08: .4byte 0x0000027A
_08146A0C:
	ldr r1, _08146A64 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _08146A1A
	negs r1, r1
_08146A1A:
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08146A2A
	negs r0, r0
_08146A2A:
	cmp r1, r0
	bgt _08146A68
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
_08146A4C:
	lsrs r1, r1, #0x1F
	mov r0, r9
	ands r1, r0
_08146A52:
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08146AA8
	.byte 0x00, 0x00
_08146A64: .4byte 0x00000242
_08146A68:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x06
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
_08146A98:
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
_08146AA8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	ldr r2, [sp, #0x00C]
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r2, r0
	movs r0, #0x0F
	strh r0, [r1, #0x00]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	subs r0, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146AF4 @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146AF8 @ =0x08146AFD
_08146ADE:
	mov r1, r10
	str r0, [r1, #0x00]
_08146AE2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146AF4: .4byte 0x0000020D
_08146AF8: .4byte sub_8146AFC
	thumb_func_start sub_8146AFC
sub_8146AFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r6, r5, r2
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08146B68
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08146B68
	ldr r2, _08146C3C @ =0x03001038
	ldr r0, _08146C40 @ =0x0819832C
	ldr r1, _08146C44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r0, [r6, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x00]
_08146B68:
	ldr r1, _08146C48 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08146C4C @ =0x0000020F
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08146BCE
	ldr r2, _08146C50 @ =0x00000216
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08146BCE
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08146BCE
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08146C68
_08146BCE:
	ldr r2, _08146C3C @ =0x03001038
	ldr r0, _08146C40 @ =0x0819832C
	ldr r1, _08146C44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _08146C54 @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146C58 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _08146C5C @ =0x08146005
	str r0, [r7, #0x0C]
	mov r0, r9
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08146C64
	ldr r0, _08146C60 @ =0x0814616D
	b _08146C66
_08146C3C: .4byte 0x03001038
_08146C40: .4byte 0x0819832C
_08146C44: .4byte 0x08198220
_08146C48: .4byte 0x00000242
_08146C4C: .4byte 0x0000020F
_08146C50: .4byte 0x00000216
_08146C54: .4byte 0x0000020D
_08146C58: .4byte sub_813B1E8
_08146C5C: .4byte sub_8146004
_08146C60: .4byte sub_814616C
_08146C64:
	ldr r0, _08146C74 @ =0x08146E41
_08146C66:
	str r0, [r7, #0x08]
_08146C68:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08146C74: .4byte sub_8146E40
	thumb_func_start sub_8146C78
sub_8146C78:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08146D3A
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146CD4
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _08146CD0 @ =0x00000242
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r3, #0x00
	ldsh r1, [r0, r3]
	b _08146CF0
	.byte 0x00, 0x00
_08146CD0: .4byte 0x00000242
_08146CD4:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _08146D1C @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r3, #0x00
	ldsh r1, [r1, r3]
_08146CF0:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08146D30
	movs r3, #0xBF
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146D20
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	b _08146D24
	.byte 0x00, 0x00
_08146D1C: .4byte 0x00000242
_08146D20:
	movs r0, #0x04
	orrs r0, r1
_08146D24:
	strb r0, [r2, #0x00]
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146D30:
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146D3A:
	ldr r3, _08146DBC @ =0x000002DE
	adds r1, r4, r3
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08146DB6
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _08146DC0 @ =0x0000020D
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	subs r3, #0x95
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	subs r3, #0x20
	adds r1, r5, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x06]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	ldr r0, _08146DC4 @ =0x08145E8D
	str r0, [r6, #0x00]
_08146DB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08146DBC: .4byte 0x000002DE
_08146DC0: .4byte 0x0000020D
_08146DC4: .4byte sub_8145E8C
	thumb_func_start sub_8146DC8
sub_8146DC8:
	push {r4, r5, r6, lr}
	ldr r1, _08146E30 @ =0x0000020E
	adds r6, r0, r1
	ldrb r2, [r6, #0x00]
	movs r3, #0x05
	negs r3, r3
	adds r1, r3, #0x0
	ands r1, r2
	strb r1, [r6, #0x00]
	ldr r1, _08146E34 @ =0x0000020D
	adds r5, r0, r1
	ldrb r1, [r5, #0x00]
	movs r2, #0x08
	orrs r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	subs r2, #0x20
	ands r1, r2
	strb r1, [r5, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r4, r0, r1
	ldr r1, [r4, #0x00]
	ldr r2, _08146E38 @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r4, #0x00]
	ldr r1, _08146E3C @ =0x0000020F
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r2
	strb r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r1, [r6, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r6, #0x00]
	ldrb r0, [r5, #0x00]
	ands r3, r0
	strb r3, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146E30: .4byte 0x0000020E
_08146E34: .4byte 0x0000020D
_08146E38: .4byte 0xFFFC7FFF
_08146E3C: .4byte 0x0000020F
	thumb_func_start sub_8146E40
sub_8146E40:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	movs r3, #0xF2
	lsls r3, r3, #0x01
	adds r0, r6, r3
	adds r3, #0x04
	adds r4, r6, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r6, r0
	subs r0, #0xDC
	strh r0, [r1, #0x00]
	ldr r2, _08146E94 @ =0x000002DE
	adds r1, r6, r2
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	ldr r0, _08146E98 @ =0x08146C79
	str r0, [r5, #0x00]
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146E94: .4byte 0x000002DE
_08146E98: .4byte sub_8146C78
	thumb_func_start sub_8146E9C
sub_8146E9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r7, r5, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08146ECA
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08146ED6
_08146ECA:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08146ED6:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r3, [r0, #0x2E]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r12, sp
	movs r0, #0x00
	mov r4, r12
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r4, #0xC4
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	ldr r0, _08146F28 @ =0x0814704D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146F28: .4byte sub_814704C
	thumb_func_start sub_8146F2C
sub_8146F2C:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, r0, r4
	ldrb r1, [r0, #0x1E]
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r2, #0x00]
	ldr r1, _08146FA0 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08146FA4 @ =0x0000020F
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146FA8 @ =0x08145C59
	str r0, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146FA0: .4byte 0xFFFC7FFF
_08146FA4: .4byte 0x0000020F
_08146FA8: .4byte sub_8145C58
	thumb_func_start sub_8146FAC
sub_8146FAC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r1, #0x0
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r6, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r1, [r0, #0x30]
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_813A5C8
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0814700C @ =0x08145B89
	mov r1, r8
	str r0, [r1, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814700C: .4byte sub_8145B88
	thumb_func_start sub_8147010
sub_8147010:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08147040 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08147044 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08147048 @ =0x08146FAD
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08147040: .4byte 0x0000033E
_08147044: .4byte sub_813B380
_08147048: .4byte sub_8146FAC
	thumb_func_start sub_814704C
sub_814704C:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147060
	ldr r0, _08147068 @ =0x0814706D
	str r0, [r4, #0x00]
_08147060:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147068: .4byte sub_814706C
	thumb_func_start sub_814706C
sub_814706C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r3, [r0, #0x36]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	ldr r0, _081470B4 @ =0x081470B9
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081470B4: .4byte sub_81470B8
	thumb_func_start sub_81470B8
sub_81470B8:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081470E8
	adds r0, r5, #0x0
	adds r0, #0x3E
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081470F0 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _081470F4 @ =0x08146FAD
	str r0, [r6, #0x0C]
_081470E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081470F0: .4byte sub_813B1E8
_081470F4: .4byte sub_8146FAC
	thumb_func_start sub_81470F8
sub_81470F8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _0814718C @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8148C20
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08147190 @ =0x0000020F
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08147194 @ =0x0000020E
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08147198 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r0, _0814719C @ =0x08148D41
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814718C: .4byte 0x0000033E
_08147190: .4byte 0x0000020F
_08147194: .4byte 0x0000020E
_08147198: .4byte sub_813B380
_0814719C: .4byte sub_8148D40
	thumb_func_start sub_81471A0
sub_81471A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r7, r0, #0x0
	mov r10, r1
	str r2, [sp, #0x020]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x58
	str r1, [sp, #0x024]
	str r0, [sp, #0x028]
	add r4, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081471E0
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _081471E4
_081471E0:
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
_081471E4:
	strb r0, [r4, #0x00]
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	movs r4, #0x04
	ldsh r0, [r0, r4]
	cmp r0, #0x04
	bne _081472E2
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x04
	ldsh r0, [r0, r2]
	cmp r0, #0x04
	bne _081472E2
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	adds r3, #0x42
	adds r3, r3, r6
	mov r9, r3
	movs r4, #0x00
	ldsh r1, [r3, r4]
	lsls r2, r1, #0x03
	subs r2, r2, r1
	lsls r2, r2, #0x03
	adds r2, r2, r1
	ldr r1, [r6, #0x0C]
	adds r1, r1, r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r2, r2, r6
	mov r8, r2
	movs r3, #0x00
	ldsh r2, [r2, r3]
	lsls r3, r2, #0x03
	subs r3, r3, r2
	lsls r3, r3, #0x03
	adds r3, r3, r2
	ldr r2, [r6, #0x10]
	adds r2, r2, r3
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r5, sp, #0x00C
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _08147270
	b _08147424
_08147270:
	mov r0, r9
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r2, [r6, #0x0C]
	adds r2, r2, r0
	mov r3, r8
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r3, [r6, #0x10]
	adds r3, r3, r0
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x000]
	movs r5, #0x01
	str r5, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _081472B0
	b _08147424
_081472B0:
	mov r2, r9
	movs r3, #0x00
	ldsh r1, [r2, r3]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	mov r0, r8
	movs r3, #0x00
	ldsh r2, [r0, r3]
	lsls r0, r2, #0x03
	subs r0, r0, r2
	lsls r0, r0, #0x03
	adds r0, r0, r2
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldr r3, [sp, #0x014]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x028]
	bl sub_8047F60
	b _0814738A
_081472E2:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	ldr r4, _08147434 @ =0x00000242
	adds r4, r4, r6
	mov r9, r4
	movs r1, #0x00
	ldsh r2, [r4, r1]
	lsls r2, r2, #0x05
	ldr r1, [r6, #0x0C]
	adds r1, r1, r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r2, r2, r6
	mov r8, r2
	movs r4, #0x00
	ldsh r3, [r2, r4]
	lsls r3, r3, #0x05
	ldr r2, [r6, #0x10]
	adds r2, r2, r3
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r5, sp, #0x00C
	movs r4, #0x01
	strb r4, [r5, #0x00]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _08147424
	mov r2, r9
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x05
	ldr r2, [r6, #0x0C]
	adds r2, r2, r0
	mov r4, r8
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x05
	ldr r3, [r6, #0x10]
	adds r3, r3, r0
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x000]
	movs r5, #0x01
	str r5, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r0, r7, #0x0
	mov r1, r10
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _08147424
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x05
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	mov r3, r8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x05
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldr r3, [sp, #0x014]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x028]
	bl sub_8047F60
_0814738A:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	ldr r3, [sp, #0x028]
	adds r0, r3, r5
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x11]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r4, [sp, #0x024]
	movs r0, #0xC4
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	add r4, r10
	ldr r1, [r4, #0x00]
	ldr r2, _08147438 @ =0x0000020D
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	bl sub_804776C
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	bl sub_804761C
	ldr r2, [r4, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r1, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	movs r4, #0xDD
	lsls r4, r4, #0x01
	adds r1, r1, r4
	strh r0, [r1, #0x00]
	ldr r1, [sp, #0x024]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r6, [r0, #0x00]
	ldr r0, _0814743C @ =0x08148CF9
	ldr r3, [sp, #0x020]
	str r0, [r3, #0x00]
_08147424:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147434: .4byte 0x00000242
_08147438: .4byte 0x0000020D
_0814743C: .4byte sub_8148CF8
	thumb_func_start sub_8147440
sub_8147440:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	adds r5, r1, #0x0
	mov r10, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	add r4, sp, #0x00C
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147476
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814747A
_08147476:
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
_0814747A:
	strb r0, [r4, #0x00]
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x28]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x0C]
	str r0, [r5, #0x0C]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r1, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	blt _081474BA
	movs r4, #0xA0
	lsls r4, r4, #0x08
	adds r1, r1, r4
	ldr r0, [r2, #0x18]
	b _081474C0
_081474BA:
	ldr r0, [r2, #0x18]
	movs r1, #0xA0
	lsls r1, r1, #0x08
_081474C0:
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r0, #0xAC
	lsls r0, r0, #0x01
	add r0, r9
	ldr r6, [r0, #0x00]
	movs r0, #0xAE
	lsls r0, r0, #0x01
	add r0, r9
	ldr r7, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x30
	ldrh r1, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r4, #0x00
	mov r12, r4
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x2E
	ldrh r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r4, _08147520 @ =0x0000027A
	adds r0, r5, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	mov r0, r12
	str r0, [sp, #0x008]
	mov r0, r8
	bl sub_813B920
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147528
	ldr r0, _08147524 @ =0x08148C61
	mov r1, r10
	str r0, [r1, #0x00]
	b _08147572
	.byte 0x00, 0x00
_08147520: .4byte 0x0000027A
_08147524: .4byte 0x08148C61
_08147528:
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r5, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	ldr r0, _08147584 @ =0x0000020F
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x32
	ldrh r1, [r0, #0x00]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x34
	ldrh r1, [r0, #0x00]
	ldr r2, _08147588 @ =0x0000023E
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814758C @ =0x08148CA5
	mov r4, r10
	str r0, [r4, #0x00]
_08147572:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147584: .4byte 0x0000020F
_08147588: .4byte 0x0000023E
_0814758C: .4byte sub_8148CA4
	thumb_func_start sub_8147590
sub_8147590:
	push {r4, r5, r6, lr}
	adds r5, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldr r3, [r4, #0x00]
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r4, [r4, #0x00]
	ldr r0, _08147630 @ =0x0814796D
	cmp r4, r0
	beq _08147656
	ldr r0, _08147634 @ =0x08148B61
	cmp r4, r0
	beq _08147656
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x14]
	subs r4, r1, r0
	ldr r1, _08147638 @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r6, #0xFF
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081475D8
	adds r0, #0x3F
_081475D8:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	adds r0, r4, r0
	str r0, [r5, #0x18]
	movs r4, #0xBE
	lsls r4, r4, #0x02
	adds r0, r5, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _08147606
	adds r0, #0x0F
_08147606:
	asrs r0, r0, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	ands r0, r6
	str r0, [r2, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x14]
	subs r0, r1, r0
	cmp r0, r2
	ble _0814763C
	adds r0, r1, #0x0
	subs r0, #0x60
	str r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	cmp r0, r2
	bgt _08147656
	b _08147652
	.byte 0x00, 0x00
_08147630: .4byte sub_814796C
_08147634: .4byte sub_8148B60
_08147638: .4byte 0x08198504
_0814763C:
	cmp r0, r2
	bge _08147656
	adds r0, r1, #0x0
	adds r0, #0x60
	str r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	cmp r0, r2
	blt _08147656
	movs r2, #0x80
	lsls r2, r2, #0x06
_08147652:
	adds r0, r1, r2
	str r0, [r3, #0x00]
_08147656:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_814765C
sub_814765C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r7, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147696
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _081476A2
_08147696:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081476A2:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r3, [r0, #0x30]
	lsls r4, r4, #0x01
	adds r4, r4, r5
	ldrh r0, [r4, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	mov r2, r8
	bl sub_813AA5C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r4, #0x08]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _08147724 @ =0x08147729
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147724: .4byte sub_8147728
	thumb_func_start sub_8147728
sub_8147728:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r5
	mov r10, r0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081477C6
	add r4, sp, #0x014
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x14
	movs r3, #0x22
	bl sub_8139CAC
	ldr r3, _081477AC @ =0x000007FF
	ldr r0, _081477B0 @ =0x00007FFF
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8148AB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	ldr r0, _081477B4 @ =0x08147811
	str r0, [r7, #0x00]
	b _081477F8
_081477AC: .4byte 0x000007FF
_081477B0: .4byte 0x00007FFF
_081477B4: .4byte sub_8147810
_081477B8:
	mov r0, r8
	ldrh r1, [r0, #0x1A]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	b _081477CA
_081477C6:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_081477CA:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081477F8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _08147808 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _0814780C @ =0x0814765D
	str r0, [r7, #0x0C]
_081477F8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147808: .4byte sub_813B1E8
_0814780C: .4byte sub_814765C
	thumb_func_start sub_8147810
sub_8147810:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147842
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814784E
_08147842:
	movs r7, #0x82
	lsls r7, r7, #0x02
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814784E:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r7, [r0, #0x28]
	ldr r1, [r7, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r7, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08147878
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814787A
_08147878:
	movs r0, #0xFF
_0814787A:
	movs r1, #0x00
	mov r12, r1
	strb r0, [r6, #0x02]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r4, #0xBC
	lsls r4, r4, #0x01
	add r4, r8
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r3, [r0, #0x2E]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r0, sp
	mov r7, r12
	strb r7, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x36
	ldrb r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r0, _081478D8 @ =0x081478DD
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081478D8: .4byte sub_81478DC
	thumb_func_start sub_81478DC
sub_81478DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081478FC
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08147908
_081478FC:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08147908:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x14
	movs r3, #0x26
	bl sub_8139CAC
	ldr r3, _08147934 @ =0x00007FFF
	str r3, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814793C
	ldr r0, _08147938 @ =0x0814796D
	b _0814795C
	.byte 0x00, 0x00
_08147934: .4byte 0x00007FFF
_08147938: .4byte sub_814796C
_0814793C:
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0814795A
	adds r0, r5, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814795E
_0814795A:
	ldr r0, _08147968 @ =0x08147811
_0814795C:
	str r0, [r6, #0x00]
_0814795E:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147968: .4byte sub_8147810
	thumb_func_start sub_814796C
sub_814796C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814799E
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081479AA
_0814799E:
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081479AA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r5, [r0, #0x3E]
	ldr r1, [r2, #0x0C]
	ldr r2, [r2, #0x10]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r6, #0x0
	adds r3, r5, #0x0
	bl sub_813A284
	ldrh r0, [r4, #0x00]
	add r0, r8
	adds r0, #0x3A
	ldrb r4, [r0, #0x00]
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	lsls r0, r4, #0x08
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_813B394
	ldr r2, _08147A30 @ =0x03001038
	ldr r0, _08147A34 @ =0x0819832C
	ldr r1, _08147A38 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, _08147A3C @ =0x00000242
	adds r3, r6, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08147A40
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08147A44
	.byte 0x00, 0x00
_08147A30: .4byte 0x03001038
_08147A34: .4byte 0x0819832C
_08147A38: .4byte 0x08198220
_08147A3C: .4byte 0x00000242
_08147A40:
	movs r1, #0x01
	negs r1, r1
_08147A44:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _08147AC4 @ =0x03001038
	ldr r0, _08147AC8 @ =0x0819832C
	ldr r1, _08147ACC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r4
	beq _08147A7A
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
_08147A7A:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	subs r3, #0x8C
	adds r1, r7, r3
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r0, #0xC6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r7, r3
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	ldr r0, _08147AD0 @ =0x08148B61
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147AC4: .4byte 0x03001038
_08147AC8: .4byte 0x0819832C
_08147ACC: .4byte 0x08198220
_08147AD0: .4byte sub_8148B60
	thumb_func_start sub_8147AD4
sub_8147AD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r7, r1, #0x0
	mov r8, r2
	adds r4, r7, #0x0
	adds r4, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x0C]
	subs r2, r1, r0
	movs r3, #0xF0
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08147B1C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08147B1E
_08147B1C:
	movs r0, #0xFF
_08147B1E:
	movs r1, #0x00
	mov r12, r1
	strb r0, [r7, #0x02]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	adds r0, #0x4A
	ldrh r5, [r0, #0x00]
	movs r3, #0xC2
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, [r0, #0x00]
	adds r2, #0x10
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	adds r3, #0x08
	adds r0, r4, r3
	adds r3, #0x04
	adds r4, r4, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	str r5, [sp, #0x000]
	add r0, sp, #0x004
	mov r4, r12
	strb r4, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_813A44C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x46
	ldrb r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _08147B98 @ =0x08148B05
	mov r2, r8
	str r0, [r2, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147B98: .4byte sub_8148B04
	thumb_func_start sub_8147B9C
sub_8147B9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147BD4
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08147BE0
_08147BD4:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08147BE0:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	lsls r4, r4, #0x01
	adds r4, r4, r7
	ldrh r3, [r4, #0x30]
	ldrh r0, [r4, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_813AA5C
	ldr r2, _08147C80 @ =0x083A05EC
	ldr r1, _08147C84 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r0, [r2, #0x00]
	ldrh r1, [r4, #0x08]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08147C88 @ =0x08147C8D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147C80: .4byte 0x083A05EC
_08147C84: .4byte 0x00000216
_08147C88: .4byte sub_8147C8C
	thumb_func_start sub_8147C8C
sub_8147C8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r2, r5
	mov r9, r2
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08147CD8
	adds r0, r3, #0x0
	adds r1, r5, #0x0
	bl sub_81489E0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147CD4
	ldr r0, _08147CD0 @ =0x08147DC5
	mov r1, r8
	str r0, [r1, #0x00]
	b _08147DAE
_08147CD0: .4byte sub_8147DC4
_08147CD4:
	ldrh r0, [r7, #0x1A]
	b _08147CDA
_08147CD8:
	subs r0, #0x01
_08147CDA:
	strh r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147DAE
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x3B
	bls _08147D74
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x4A
	ldrb r0, [r0, #0x00]
	adds r2, #0x22
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r2, _08147D6C @ =0x083A05EC
	ldr r1, _08147D70 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x10
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	b _08147DA4
	.byte 0x00, 0x00
_08147D6C: .4byte 0x083A05EC
_08147D70: .4byte 0x00000216
_08147D74:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x28]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8047928
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08147DA4:
	ldr r0, _08147DBC @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _08147DC0 @ =0x08147B9D
	str r0, [r1, #0x0C]
_08147DAE:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147DBC: .4byte sub_813B1E8
_08147DC0: .4byte sub_8147B9C
	thumb_func_start sub_8147DC4
sub_8147DC4:
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r4, r7, r1
	strh r0, [r4, #0x00]
	ldr r2, _08147E70 @ =0x083A05EC
	adds r1, #0x46
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
	adds r1, #0x04
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r3, r7, r1
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08147E74 @ =0x0000020D
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08147E78 @ =0x08147E7D
	str r0, [r6, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147E70: .4byte 0x083A05EC
_08147E74: .4byte 0x0000020D
_08147E78: .4byte sub_8147E7C
	thumb_func_start sub_8147E7C
sub_8147E7C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r6, r4, r3
	ldrb r1, [r6, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08147F14
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08147EB2
	b _08148024
_08147EB2:
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r2
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r2, _08147F10 @ =0x083A05EC
	adds r3, #0x40
	adds r0, r4, r3
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
	ldrb r1, [r1, #0x00]
	adds r1, #0x08
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r1, [r6, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
	b _08148024
	.byte 0x00, 0x00
_08147F10: .4byte 0x083A05EC
_08147F14:
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08148024
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147F3A
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _08147F46
_08147F3A:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08147F46:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r5, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r1, r0
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _08147F60
	negs r1, r5
_08147F60:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08147F68
	negs r0, r2
_08147F68:
	cmp r1, r0
	ble _08147FA8
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r5, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r5, #0x00
	bge _08147F94
	movs r3, #0x06
_08147F94:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r1, r0, #0x0
	b _08147FD0
_08147FA8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r1, #0x24
	ands r2, r0
	ldrb r3, [r1, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x00]
_08147FD0:
	ldr r2, _0814802C @ =0x083A05EC
	ldr r3, _08148030 @ =0x00000216
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r0, r1
	adds r0, #0x08
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	adds r1, #0x0C
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08148034 @ =0x08148039
	str r0, [r7, #0x00]
_08148024:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814802C: .4byte 0x083A05EC
_08148030: .4byte 0x00000216
_08148034: .4byte sub_8148038
	thumb_func_start sub_8148038
sub_8148038:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	movs r0, #0x58
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r9, r2
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r6, [r0, #0x00]
	adds r1, #0xE4
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0814807A
	b _0814823A
_0814807A:
	adds r0, r6, #0x0
	bl sub_81488F0
	ldr r2, _081480B0 @ =0x03001038
	ldr r0, _081480B4 @ =0x0819832C
	ldr r1, _081480B8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r4, r7, #0x0
	adds r4, #0x24
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r10, r4
	cmp r5, #0x01
	beq _081480EC
	cmp r5, #0x01
	bgt _081480BC
	cmp r5, #0x00
	beq _081480C6
	b _08148148
	.byte 0x00, 0x00
_081480B0: .4byte 0x03001038
_081480B4: .4byte 0x0819832C
_081480B8: .4byte 0x08198220
_081480BC:
	cmp r5, #0x02
	beq _08148106
	cmp r5, #0x03
	beq _08148126
	b _08148148
_081480C6:
	ldr r1, [r7, #0x0C]
	ldr r2, _081480E8 @ =0x00000276
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	ldr r2, [r7, #0x10]
	subs r2, r2, r0
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	b _0814811E
	.byte 0x00, 0x00
_081480E8: .4byte 0x00000276
_081480EC:
	ldr r1, [r7, #0x0C]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	str r5, [sp, #0x000]
	b _0814811A
_08148106:
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814811A:
	movs r0, #0x00
	str r0, [sp, #0x004]
_0814811E:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _08148148
_08148126:
	ldr r1, [r7, #0x0C]
	ldr r2, _0814824C @ =0xFFFFF600
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_08148148:
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r1, r6, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	movs r2, #0x00
	strb r0, [r1, #0x00]
	movs r3, #0xB9
	lsls r3, r3, #0x02
	adds r1, r6, r3
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r6, r3
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r3, #0x04
	adds r0, r6, r3
	str r2, [r0, #0x00]
	ldr r0, _08148250 @ =0x0000030A
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, #0x1C
	adds r1, r6, r3
	adds r0, #0x80
	strh r0, [r1, #0x00]
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r3, #0x1C
	adds r0, r6, r3
	str r2, [r0, #0x00]
	ldr r0, _08148254 @ =0x0000030E
	adds r1, r6, r0
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r1, r6, r2
	adds r0, #0x80
	strh r0, [r1, #0x00]
	adds r0, #0x38
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x00C]
	adds r0, r0, r3
	ldrh r0, [r0, #0x2A]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r2, _08148258 @ =0x083A05EC
	ldr r1, _0814825C @ =0x00000216
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	mov r3, r10
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r0, r1
	adds r0, #0x08
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	adds r1, #0x10
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r7, r4
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08148260 @ =0x08148265
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
_0814823A:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814824C: .4byte 0xFFFFF600
_08148250: .4byte 0x0000030A
_08148254: .4byte 0x0000030E
_08148258: .4byte 0x083A05EC
_0814825C: .4byte 0x00000216
_08148260: .4byte sub_8148264
	thumb_func_start sub_8148264
sub_8148264:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r5, r0, #0x0
	str r1, [sp, #0x00C]
	str r2, [sp, #0x010]
	adds r0, r1, #0x0
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r6, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r4, r1, r3
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081482CC
	ldr r3, [sp, #0x00C]
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	ldr r0, _081482C4 @ =0x0813B1E9
	ldr r3, [sp, #0x010]
	str r0, [r3, #0x00]
	ldr r0, _081482C8 @ =0x08147B9D
	str r0, [r3, #0x0C]
	b _081486B8
_081482C4: .4byte sub_813B1E8
_081482C8: .4byte sub_8147B9C
_081482CC:
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_813B8A8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814831C
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_813B878
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814831C
	movs r1, #0x04
	ldsh r0, [r4, r1]
	cmp r0, #0x05
	bne _0814831C
	ldr r2, _08148314 @ =0x0000030E
	adds r0, r7, r2
	movs r1, #0xA0
	lsls r1, r1, #0x03
	strh r1, [r0, #0x00]
	movs r3, #0xC4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, _08148318 @ =0x0000020D
	adds r2, r7, r0
	b _081486A8
	.byte 0x00, 0x00
_08148314: .4byte 0x0000030E
_08148318: .4byte 0x0000020D
_0814831C:
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	movs r3, #0x04
	ldsh r0, [r1, r3]
	cmp r0, #0x04
	beq _08148358
	adds r2, #0x04
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	movs r3, #0x04
	ldsh r0, [r0, r3]
	cmp r0, #0x04
	beq _08148358
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xA4
	lsls r1, r1, #0x06
	adds r5, r0, r1
	ldr r2, [sp, #0x014]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x3A]
	b _08148376
_08148358:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r5, r1, r0
	ldr r2, [sp, #0x014]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x32]
_08148376:
	str r0, [sp, #0x018]
	ldr r2, [sp, #0x018]
	ldr r0, _081483D0 @ =0x0000030A
	adds r1, r7, r0
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _08148388
	negs r2, r2
_08148388:
	strh r2, [r1, #0x00]
	ldr r1, [sp, #0x018]
	adds r1, #0x80
	movs r0, #0xC3
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	bge _0814839E
	negs r1, r1
_0814839E:
	strh r1, [r2, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r2, r1, r0
	cmp r2, #0x00
	bge _081483AC
	negs r2, r2
_081483AC:
	ldr r1, [r4, #0x10]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _081483B8
	negs r1, r1
_081483B8:
	cmp r2, r1
	blt _081483D8
	ldr r0, _081483D4 @ =0x0000030E
	adds r1, r7, r0
	movs r0, #0xA0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r1, r7, r2
	movs r0, #0xC0
	b _081483EA
_081483D0: .4byte 0x0000030A
_081483D4: .4byte 0x0000030E
_081483D8:
	ldr r3, _081486C8 @ =0x0000030E
	adds r1, r7, r3
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	movs r0, #0xC4
	lsls r0, r0, #0x02
	adds r1, r7, r0
	movs r0, #0xA0
	lsls r0, r0, #0x01
_081483EA:
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	ldr r3, [sp, #0x018]
	str r3, [sp, #0x000]
	add r3, sp, #0x004
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	adds r3, r5, #0x0
	bl sub_813A44C
	ldr r1, _081486CC @ =0x00000242
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	adds r3, #0x96
	adds r2, r7, r3
	strh r0, [r2, #0x00]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x01C]
	adds r3, #0x02
	adds r0, r7, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x01C]
	str r0, [r3, #0x00]
	movs r0, #0xB9
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r10, r0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	mov r1, r10
	str r0, [r1, #0x00]
	movs r3, #0xBA
	lsls r3, r3, #0x02
	adds r3, r7, r3
	str r3, [sp, #0x020]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r0, [r2, #0x00]
	ldr r3, [sp, #0x01C]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, _081486D0 @ =0x08198584
	movs r0, #0xCB
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x028]
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814847C
	adds r0, #0xFF
_0814847C:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08148490
	adds r0, #0x3F
_08148490:
	asrs r0, r0, #0x06
	str r0, [sp, #0x024]
	ldr r1, _081486D4 @ =0x08198504
	movs r0, #0xCA
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x02C]
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081484A6
	adds r0, #0xFF
_081484A6:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _081484BA
	adds r0, #0x3F
_081484BA:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r6, _081486D8 @ =0x03001038
	ldr r4, _081486DC @ =0x0819832C
	ldr r0, _081486E0 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r9, r0
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x024]
	adds r1, r2, #0x0
	muls r1, r0
	mov r3, r10
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x0C]
	ldr r2, [r6, #0x00]
	adds r2, r2, r4
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r1, r8
	muls r1, r0
	ldr r2, [sp, #0x020]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x18]
	ldr r3, [sp, #0x01C]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldr r1, _081486C8 @ =0x0000030E
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, [sp, #0x028]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08148528
	adds r0, #0xFF
_08148528:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x028]
	str r0, [r2, #0x00]
	movs r3, #0xC4
	lsls r3, r3, #0x02
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r3, [sp, #0x02C]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _0814854A
	adds r0, #0xFF
_0814854A:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x02C]
	str r0, [r2, #0x00]
	ldr r3, _081486E4 @ =0x0000030A
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r3, r9
	ldr r0, [r3, #0x00]
	adds r1, r0, r1
	str r1, [r3, #0x00]
	cmp r1, #0x00
	blt _08148574
	movs r0, #0x16
	ldr r2, [sp, #0x018]
	muls r0, r2
	cmp r1, r0
	ble _08148586
_08148574:
	ldr r3, _081486E8 @ =0x000002B5
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
_08148586:
	movs r0, #0xBC
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	cmp r1, #0x00
	blt _081485AA
	movs r0, #0x16
	ldr r2, [sp, #0x018]
	muls r0, r2
	cmp r1, r0
	ble _081485BA
_081485AA:
	ldr r3, _081486E8 @ =0x000002B5
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_081485BA:
	ldr r0, _081486E8 @ =0x000002B5
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _081485DC
	ldr r3, _081486E4 @ =0x0000030A
	adds r1, r7, r3
	ldrh r0, [r1, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_081485DC:
	ldrb r1, [r2, #0x00]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _081485FA
	movs r0, #0xC3
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldrh r0, [r1, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x00]
_081485FA:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08148626
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r3, [sp, #0x00C]
	ldr r0, _081486EC @ =0x0000020D
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081486F0 @ =0x08147B9D
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
_08148626:
	ldr r0, [r7, #0x0C]
	ldr r1, [r7, #0x34]
	subs r0, r0, r1
	ldr r2, _081486CC @ =0x00000242
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	ldr r0, [sp, #0x014]
	subs r2, #0xC8
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x00
	bne _081486B8
	adds r3, #0xA0
	adds r1, r7, r3
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r2, [r0, #0x00]
	adds r3, #0x0C
	adds r0, r7, r3
	str r2, [r0, #0x00]
	adds r1, #0x16
	adds r0, r7, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	adds r3, #0x1C
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r2, [r0, #0x00]
	adds r3, #0x1C
	adds r0, r7, r3
	str r2, [r0, #0x00]
	subs r1, #0x1E
	adds r0, r7, r1
	movs r1, #0xA0
	lsls r1, r1, #0x03
	strh r1, [r0, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	ldr r3, _081486EC @ =0x0000020D
	adds r2, r7, r3
_081486A8:
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081486F4 @ =0x081486F9
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
_081486B8:
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081486C8: .4byte 0x0000030E
_081486CC: .4byte 0x00000242
_081486D0: .4byte 0x08198584
_081486D4: .4byte 0x08198504
_081486D8: .4byte 0x03001038
_081486DC: .4byte 0x0819832C
_081486E0: .4byte 0x08198220
_081486E4: .4byte 0x0000030A
_081486E8: .4byte 0x000002B5
_081486EC: .4byte 0x0000020D
_081486F0: .4byte sub_8147B9C
_081486F4: .4byte sub_81486F8
	thumb_func_start sub_81486F8
sub_81486F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r7, [r0, #0x00]
	ldr r1, _081488C4 @ =0x08198584
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08148720
	adds r0, #0xFF
_08148720:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _08148734
	adds r0, #0x3F
_08148734:
	asrs r0, r0, #0x06
	mov r10, r0
	ldr r1, _081488C8 @ =0x08198504
	movs r3, #0xCA
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08148748
	adds r0, #0xFF
_08148748:
	asrs r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _0814875A
	adds r0, #0x3F
_0814875A:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r0, _081488CC @ =0x03001038
	mov r9, r0
	ldr r4, _081488D0 @ =0x0819832C
	ldr r0, _081488D4 @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r6, r7, r3
	ldr r0, [r6, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r2, #0xB9
	lsls r2, r2, #0x02
	adds r1, r7, r2
	mov r2, r10
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r7, #0x0C]
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	movs r4, #0xBC
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r2, #0xBA
	lsls r2, r2, #0x02
	adds r1, r7, r2
	mov r2, r8
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	movs r4, #0xD8
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	adds r0, #0x42
	ldrh r3, [r0, #0x00]
	ldr r0, [r7, #0x18]
	adds r0, r0, r3
	str r0, [r7, #0x18]
	ldr r0, _081488D8 @ =0x0000030A
	adds r2, r7, r0
	strh r3, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x80
	movs r4, #0xC3
	lsls r4, r4, #0x02
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x00]
	cmp r1, #0x00
	blt _081487FC
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r0, r3, r2
	cmp r1, r0
	ble _08148804
_081487FC:
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r3, r4
	str r0, [r6, #0x00]
_08148804:
	movs r0, #0xBC
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	cmp r1, #0x00
	blt _08148828
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r3, r4
	cmp r1, r0
	ble _08148830
_08148828:
	movs r1, #0xC0
	lsls r1, r1, #0x04
	adds r0, r3, r1
	str r0, [r2, #0x00]
_08148830:
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldr r4, _081488DC @ =0x0000030E
	adds r0, r7, r4
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0xFF
	lsls r3, r3, #0x08
	cmp r0, r3
	ble _08148850
	movs r0, #0x00
	str r0, [r2, #0x00]
_08148850:
	movs r4, #0xCA
	lsls r4, r4, #0x02
	adds r2, r7, r4
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, r3
	ble _0814886E
	movs r0, #0x00
	str r0, [r2, #0x00]
_0814886E:
	ldr r0, [r7, #0x0C]
	ldr r1, [r7, #0x34]
	subs r0, r0, r1
	ldr r2, _081488E0 @ =0x00000242
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x18]
	ldr r0, _081488E4 @ =0x00013FFF
	cmp r1, r0
	ble _081488B4
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r4, [sp, #0x000]
	ldr r0, _081488E8 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081488EC @ =0x08147B9D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x00]
_081488B4:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081488C4: .4byte 0x08198584
_081488C8: .4byte 0x08198504
_081488CC: .4byte 0x03001038
_081488D0: .4byte 0x0819832C
_081488D4: .4byte 0x08198220
_081488D8: .4byte 0x0000030A
_081488DC: .4byte 0x0000030E
_081488E0: .4byte 0x00000242
_081488E4: .4byte 0x00013FFF
_081488E8: .4byte 0x0000020D
_081488EC: .4byte sub_8147B9C
	thumb_func_start sub_81488F0
sub_81488F0:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	ldr r2, _0814892C @ =0x083A05EC
	ldr r1, _08148930 @ =0x00000216
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
	ldrb r5, [r1, #0x00]
	cmp r5, #0x01
	beq _08148964
	cmp r5, #0x01
	bgt _08148934
	cmp r5, #0x00
	beq _0814893E
	b _081489D2
_0814892C: .4byte 0x083A05EC
_08148930: .4byte 0x00000216
_08148934:
	cmp r5, #0x02
	beq _08148984
	cmp r5, #0x03
	beq _081489AA
	b _081489D2
_0814893E:
	ldr r1, [r4, #0x0C]
	ldr r2, _08148960 @ =0x00000276
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	ldr r2, [r4, #0x10]
	subs r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x90
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	b _081489A2
	.byte 0x00, 0x00
_08148960: .4byte 0x00000276
_08148964:
	ldr r1, [r4, #0x0C]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	ldr r2, [r4, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	str r5, [sp, #0x000]
	b _0814899E
_08148984:
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x90
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814899E:
	movs r0, #0x00
	str r0, [sp, #0x004]
_081489A2:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _081489D2
_081489AA:
	ldr r1, [r4, #0x0C]
	ldr r2, _081489DC @ =0xFFFFF600
	adds r1, r1, r2
	ldr r2, [r4, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_081489D2:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081489DC: .4byte 0xFFFFF600
	thumb_func_start sub_81489E0
sub_81489E0:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081489FA
	movs r0, #0x00
	b _08148A30
_081489FA:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _08148A2E
	movs r1, #0x01
_08148A2E:
	adds r0, r1, #0x0
_08148A30:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_8148A38
sub_8148A38:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	ldr r0, _08148A9C @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r1, [r5, #0x00]
	ldr r0, _08148AA0 @ =0x0000020D
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	ldr r0, [r5, #0x00]
	bl sub_8148DA4
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08148AA4 @ =0x0000033D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08148AA8 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08148AAC @ =0x08147B9D
	str r0, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148A9C: .4byte 0x0000033E
_08148AA0: .4byte 0x0000020D
_08148AA4: .4byte 0x0000033D
_08148AA8: .4byte sub_813B380
_08148AAC: .4byte sub_8147B9C
	thumb_func_start sub_8148AB0
sub_8148AB0:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08148AF6
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08148AFA
_08148AF6:
	movs r0, #0x00
	b _08148AFC
_08148AFA:
	movs r0, #0x01
_08148AFC:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_8148B04
sub_8148B04:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08148B52
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r5
	adds r0, #0x52
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08148B58 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _08148B5C @ =0x0814765D
	str r0, [r6, #0x0C]
_08148B52:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08148B58: .4byte sub_813B1E8
_08148B5C: .4byte sub_814765C
	thumb_func_start sub_8148B60
sub_8148B60:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _08148BB4 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08148BAC
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	ldr r0, _08148BB8 @ =0x08147AD5
	str r0, [r5, #0x00]
_08148BAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148BB4: .4byte 0x00000242
_08148BB8: .4byte sub_8147AD4
	thumb_func_start sub_8148BBC
sub_8148BBC:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _08148C14 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r1, #0xBB
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r1, #0x10
	adds r3, #0x04
	adds r0, r4, r3
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	strh r2, [r0, #0x00]
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r1, r4, r3
	ldr r0, _08148C18 @ =0x08147591
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08148C1C @ =0x0814765D
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08148C14: .4byte 0x0000033E
_08148C18: .4byte sub_8147590
_08148C1C: .4byte sub_814765C
	thumb_func_start sub_8148C20
sub_8148C20:
	ldr r1, _08148C58 @ =0x0000020D
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x09
	negs r1, r1
	ands r1, r2
	strb r1, [r3, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x7F
	ands r1, r2
	subs r2, #0xA0
	ands r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _08148C5C @ =0x0000020F
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08148C58: .4byte 0x0000020D
_08148C5C: .4byte 0x0000020F
	.byte 0x8C, 0x46, 0x85, 0x23, 0x9B, 0x00, 0x63, 0x44, 0x19, 0x78, 0x08, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x04, 0x21, 0x08, 0x43, 0x18, 0x70, 0xA5, 0x20, 0x80, 0x00, 0x60, 0x44, 0x03, 0x68, 0x99, 0x7C
	.byte 0x07, 0x20, 0x40, 0x42, 0x08, 0x40, 0x98, 0x74, 0xD8, 0x20, 0x40, 0x00, 0x60, 0x44, 0x00, 0x68
	.byte 0xC1, 0x8E, 0xB7, 0x20, 0x80, 0x00, 0x60, 0x44, 0x01, 0x80, 0x01, 0x48, 0x10, 0x60, 0x70, 0x47
	.byte 0x2D, 0x8E, 0x14, 0x08
	thumb_func_start sub_8148CA4
sub_8148CA4:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r3, r0
	movs r5, #0x00
	ldsh r1, [r2, r5]
	ldr r0, [r3, #0x18]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	movs r5, #0xDD
	lsls r5, r5, #0x01
	adds r1, r1, r5
	strh r0, [r1, #0x00]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	ldrh r5, [r2, #0x00]
	adds r0, r0, r5
	strh r0, [r2, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08148CEC
	movs r0, #0x00
	str r0, [r3, #0x18]
	ldr r0, _08148CF4 @ =0x08148C61
	str r0, [r4, #0x00]
_08148CEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148CF4: .4byte 0x08148C61
	thumb_func_start sub_8148CF8
sub_8148CF8:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r1, r0
	ldr r1, [r4, #0x00]
	ldr r0, _08148D38 @ =0x0000023B
	adds r2, r1, r0
	movs r0, #0xF0
	strb r0, [r2, #0x00]
	adds r0, #0xE4
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3B
	bls _08148D32
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	bl sub_804776C
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08148D3C @ =0x08147441
	str r0, [r5, #0x00]
_08148D32:
	pop {r4, r5}
	pop {r0}
	bx r0
_08148D38: .4byte 0x0000023B
_08148D3C: .4byte sub_8147440
	thumb_func_start sub_8148D40
sub_8148D40:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08148D98
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	adds r1, r0, r1
	adds r1, #0x2A
	ldrb r1, [r1, #0x00]
	movs r3, #0xE9
	lsls r3, r3, #0x01
	adds r2, r4, r3
	strh r1, [r2, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r3, #0x42
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148DA0 @ =0x081471A1
	str r0, [r5, #0x00]
_08148D98:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148DA0: .4byte sub_81471A0
	thumb_func_start sub_8148DA4
sub_8148DA4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08148E1C @ =0x0000020D
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148E20 @ =0x0000020E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08148E24 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08148E28 @ =0x0000020F
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_801E150
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08148E1C: .4byte 0x0000020D
_08148E20: .4byte 0x0000020E
_08148E24: .4byte 0xFFFC7FFF
_08148E28: .4byte 0x0000020F
	thumb_func_start sub_8148E2C
sub_8148E2C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x52
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r2, _08148E8C @ =0x00000283
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmn r1, r0
	bge _08148E86
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r1, _08148E90 @ =0x0000020F
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148E94 @ =0x08148D41
	str r0, [r5, #0x00]
_08148E86:
	pop {r4, r5}
	pop {r0}
	bx r0
_08148E8C: .4byte 0x00000283
_08148E90: .4byte 0x0000020F
_08148E94: .4byte sub_8148D40
	thumb_func_start sub_8148E98
sub_8148E98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x58
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	mov r9, r0
	ldrh r4, [r4, #0x0A]
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08148F06
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08148F12
_08148F06:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08148F12:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r3, r9
	bl sub_813AA5C
	lsls r0, r4, #0x08
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	ldr r2, _08148FC4 @ =0x000002DE
	adds r0, r5, r2
	ldrh r2, [r0, #0x00]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_813B6DC
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x02
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldrb r1, [r3, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	ands r2, r0
	strb r2, [r1, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148FC8 @ =0x08148FCD
	ldr r2, [sp, #0x018]
	str r0, [r2, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08148FC4: .4byte 0x000002DE
_08148FC8: .4byte sub_8148FCC
	thumb_func_start sub_8148FCC
sub_8148FCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r5, r4, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	mov r10, r0
	movs r2, #0x01
	mov r9, r2
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	bne _08149078
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08149022
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08149022:
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081490D8
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldrh r0, [r6, #0x08]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x28]
	adds r2, #0x08
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	mov r2, r10
	orrs r0, r2
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	ldrb r0, [r5, #0x00]
	mov r1, r10
	orrs r0, r1
	strb r0, [r5, #0x00]
	b _081490D8
_08149078:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814909A
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814909A:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _081490D8
	str r1, [r4, #0x18]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	mov r1, r9
	ands r0, r1
	cmp r0, #0x00
	beq _081490D4
	ldr r0, _081490D0 @ =0x08148E99
	b _081490D6
_081490D0: .4byte sub_8148E98
_081490D4:
	ldr r0, _081490E8 @ =0x081490ED
_081490D6:
	str r0, [r7, #0x00]
_081490D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081490E8: .4byte sub_81490EC
	thumb_func_start sub_81490EC
sub_81490EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x00C]
	mov r8, r1
	str r2, [sp, #0x010]
	mov r0, r8
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r1, r8
	str r1, [sp, #0x018]
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	ldr r4, [r0, #0x00]
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r8
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldrh r1, [r1, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x26]
	str r0, [sp, #0x01C]
	adds r1, r1, r4
	adds r1, #0x2E
	ldrb r1, [r1, #0x00]
	str r1, [sp, #0x020]
	ldrh r5, [r5, #0x0A]
	str r5, [sp, #0x024]
	ldr r0, [sp, #0x00C]
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149160
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x00C]
	adds r0, r0, r2
	b _08149172
_08149160:
	ldr r3, [sp, #0x00C]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r0, r0, r3
_08149172:
	ldr r0, [r0, #0x28]
	mov r9, r0
	mov r2, r9
	ldr r1, [r2, #0x0C]
	mov r3, r8
	ldr r0, [r3, #0x0C]
	subs r6, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x10]
	subs r7, r1, r0
	ldr r0, _08149294 @ =0x03001038
	mov r10, r0
	ldr r5, _08149298 @ =0x0819832C
	ldr r0, _0814929C @ =0x08198220
	subs r5, r5, r0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r7, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r7, r0, #0x0
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	lsls r4, r4, #0x04
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r6, r0, #0x0
	muls r6, r1
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x020]
	adds r1, r0, #0x0
	muls r1, r2
	adds r7, r1, #0x0
	ldr r3, [sp, #0x024]
	lsls r0, r3, #0x08
	mov r1, r9
	ldr r2, [r1, #0x14]
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	subs r5, r2, r0
	ldr r0, [sp, #0x00C]
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	movs r4, #0x01
	strb r4, [r0, #0x00]
	mov r0, r8
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	adds r3, r5, #0x0
	bl sub_813A44C
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x02
	bl sub_8047154
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r8
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3, #0x00]
	mov r2, r8
	adds r2, #0x24
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x014]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x014]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081492A0 @ =0x08148E99
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149294: .4byte 0x03001038
_08149298: .4byte 0x0819832C
_0814929C: .4byte 0x08198220
_081492A0: .4byte sub_8148E98
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x0C, 0x1C, 0x13, 0x1C, 0xD8, 0x21, 0x49, 0x00, 0x60, 0x18
	.byte 0x07, 0x68, 0xDA, 0x22, 0x52, 0x00, 0xA0, 0x18, 0x06, 0x68, 0xEB, 0x20, 0x40, 0x00, 0x25, 0x18
	.byte 0x29, 0x78, 0x01, 0x22, 0x90, 0x46, 0x01, 0x20, 0x08, 0x40, 0x00, 0x28, 0x3A, 0xD1, 0xA5, 0x21
	.byte 0x89, 0x00, 0x60, 0x18, 0x00, 0x68, 0x23, 0x30, 0x00, 0x78, 0x01, 0x28, 0x07, 0xD9, 0x85, 0x20
	.byte 0x80, 0x00, 0x22, 0x18, 0x11, 0x78, 0x08, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0x20, 0x1C
	.byte 0xF2, 0xF7, 0x5E, 0xF9, 0x00, 0x06, 0x00, 0x28, 0x46, 0xD1, 0xB5, 0x22, 0x92, 0x00, 0xA1, 0x18
	.byte 0x30, 0x89, 0x00, 0x02, 0x08, 0x60, 0xE8, 0x21, 0x49, 0x00, 0x60, 0x18, 0x00, 0x88, 0x40, 0x00
	.byte 0xC0, 0x19, 0x41, 0x8E, 0x08, 0x32, 0xA0, 0x18, 0x01, 0x80, 0x85, 0x20, 0x80, 0x00, 0x23, 0x18
	.byte 0x1A, 0x78, 0x08, 0x21, 0x49, 0x42, 0x08, 0x1C, 0x10, 0x40, 0x42, 0x46, 0x10, 0x43, 0x18, 0x70
	.byte 0x22, 0x1C, 0x24, 0x32, 0x10, 0x78, 0x01, 0x40, 0x11, 0x70, 0x28, 0x78, 0x41, 0x46, 0x08, 0x43
	.byte 0x28, 0x70, 0x21, 0xE0, 0xA5, 0x22, 0x92, 0x00, 0xA0, 0x18, 0x00, 0x68, 0x81, 0x7C, 0x08, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x07, 0xD0, 0x85, 0x20, 0x80, 0x00, 0x22, 0x18, 0x11, 0x78, 0x08, 0x20
	.byte 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xB7, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x22, 0x81, 0x5E
	.byte 0xA0, 0x69, 0x40, 0x1A, 0xA0, 0x61, 0xB5, 0x22, 0x92, 0x00, 0xA1, 0x18, 0x09, 0x68, 0x88, 0x42
	.byte 0x02, 0xDC, 0xA1, 0x61, 0x03, 0x48, 0x18, 0x60, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x99, 0x8E, 0x14, 0x08, 0xF0, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x0E, 0x1C
	.byte 0x37, 0x1C, 0x58, 0x37, 0xA5, 0x21, 0x89, 0x00, 0x70, 0x18, 0x02, 0x68, 0xEC, 0x20, 0x40, 0x00
	.byte 0x35, 0x18, 0x28, 0x78, 0x80, 0x07, 0x20, 0x21, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x21, 0x10, 0x1C
	.byte 0x20, 0x30, 0x01, 0x70, 0xD0, 0x21, 0x49, 0x00, 0x72, 0x18, 0x20, 0x1C, 0x31, 0x1C, 0x00, 0xF0
	.byte 0x41, 0xF8, 0x29, 0x78, 0x48, 0x07, 0x00, 0x28, 0x07, 0xDB, 0x88, 0x07, 0x00, 0x28, 0x04, 0xDB
	.byte 0xA0, 0x6A, 0x04, 0x21, 0x40, 0x5E, 0x04, 0x28, 0x04, 0xD0, 0xE0, 0x6A, 0x04, 0x21, 0x40, 0x5E
	.byte 0x04, 0x28, 0x0D, 0xD1, 0x20, 0x1C, 0x69, 0x46, 0xB2, 0xF7, 0xA2, 0xFC, 0x00, 0x06, 0x00, 0x28
	.byte 0x06, 0xD0, 0xC0, 0x21, 0x49, 0x00, 0x78, 0x18, 0x01, 0x78, 0x02, 0x22, 0x11, 0x43, 0x01, 0x70
	.byte 0x80, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x68, 0x80, 0x69, 0x00, 0x28, 0x0D, 0xD1, 0x04, 0x31
	.byte 0x60, 0x18, 0x00, 0x68, 0x80, 0x69, 0x00, 0x28, 0x07, 0xD1, 0xC0, 0x20, 0x40, 0x00, 0x3A, 0x18
	.byte 0x11, 0x78, 0x03, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xA4, 0x21, 0x49, 0x00, 0x7A, 0x18
	.byte 0x13, 0x68, 0x20, 0x1C, 0x31, 0x1C, 0x91, 0xF0, 0x13, 0xFB, 0x01, 0xB0, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_8149458
sub_8149458:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	add r5, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149480
	movs r3, #0xEC
	lsls r3, r3, #0x01
	adds r2, r6, r3
	b _081494CC
_08149480:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r1, [r0, #0x28]
	mov r2, sp
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	subs r0, #0x20
	strh r0, [r2, #0x00]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	subs r0, #0x20
	strh r0, [r2, #0x06]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	adds r0, #0x20
	strh r0, [r2, #0x02]
	movs r3, #0x02
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	adds r0, #0x20
	strh r0, [r2, #0x04]
	ldr r2, _081494D8 @ =0x00007FFF
	mov r0, sp
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081494DC
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r2, r6, r0
_081494CC:
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _081494EA
_081494D8: .4byte 0x00007FFF
_081494DC:
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
_081494EA:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81494F4
sub_81494F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
	mov r4, sp
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	strb r0, [r4, #0x00]
	mov r0, sp
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08149548
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	b _0814955A
_08149548:
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	adds r1, r1, r2
	ldr r2, _0814959C @ =0xFFFFDC00
	adds r1, r1, r2
	str r1, [r0, #0x00]
_0814955A:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081495A0 @ =0x0814BB81
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814959C: .4byte 0xFFFFDC00
_081495A0: .4byte sub_814BB80
	thumb_func_start sub_81495A4
sub_81495A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	beq _081495F4
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _08149650
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _08149650
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149650
	ldr r0, _081495F0 @ =0x08149661
	b _08149652
_081495F0: .4byte sub_8149660
_081495F4:
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149614
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08149654
_08149614:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xB4
	lsls r1, r1, #0x06
	adds r0, r0, r1
	cmp r2, r0
	bgt _08149654
	movs r2, #0xEC
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _08149650
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _08149650
	ldr r0, _0814964C @ =0x08149661
	b _08149652
_0814964C: .4byte sub_8149660
_08149650:
	ldr r0, _0814965C @ =0x0814BC69
_08149652:
	str r0, [r6, #0x00]
_08149654:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814965C: .4byte sub_814BC68
	thumb_func_start sub_8149660
sub_8149660:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081496C8
	adds r0, r5, #0x0
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #0x02
	bl sub_813A5C8
	adds r0, r5, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x07
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081496C4 @ =0x0814BC1D
	b _0814977E
	.byte 0x00, 0x00
_081496C4: .4byte sub_814BC1C
_081496C8:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r7, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	subs r6, r1, r0
	ldr r2, _08149790 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, _08149794 @ =0x2D900000
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _081496FE
	adds r0, #0xFF
_081496FE:
	asrs r4, r0, #0x08
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r7, r1, #0x05
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r6, r1, #0x05
	mov r0, r8
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r4, r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r4, r4, r1
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	movs r3, #0x28
	bl sub_813B798
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, _08149798 @ =0x0814BB25
_0814977E:
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149790: .4byte 0x03001038
_08149794: .4byte 0x2D900000
_08149798: .4byte sub_814BB24
	thumb_func_start sub_814979C
sub_814979C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r2, [r0, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r4, r6, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1E
	movs r1, #0x20
	cmp r0, #0x00
	bge _081497D4
	movs r1, #0x40
_081497D4:
	adds r0, r2, #0x0
	adds r0, #0x20
	strb r1, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r6, r1
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_8149458
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x1D
	cmp r0, #0x00
	blt _08149800
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	blt _08149800
	ldr r0, [r7, #0x28]
	movs r3, #0x04
	ldsh r0, [r0, r3]
	cmp r0, #0x04
	beq _0814980A
_08149800:
	ldr r0, [r7, #0x2C]
	movs r4, #0x04
	ldsh r0, [r0, r4]
	cmp r0, #0x04
	bne _08149890
_0814980A:
	add r4, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149890
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x28]
	mov r12, r0
	ldr r0, [r6, #0x0C]
	cmp r0, #0x00
	bge _0814982C
	adds r0, #0xFF
_0814982C:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	ldr r2, [r6, #0x10]
	cmp r2, #0x00
	bge _08149838
	adds r2, #0xFF
_08149838:
	lsls r2, r2, #0x08
	mov r3, sp
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r3, #0x00]
	adds r5, #0x02
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x06]
	adds r5, #0x02
	movs r4, #0x00
	ldsh r0, [r5, r4]
	lsls r0, r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	mov r1, sp
	movs r3, #0x02
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x04
	adds r2, r2, r0
	strh r2, [r1, #0x04]
	ldr r2, _081498D8 @ =0x00007FFF
	mov r0, sp
	mov r1, r12
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149890
	movs r0, #0xC0
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x00]
_08149890:
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bne _081498BC
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bne _081498BC
	movs r2, #0xC0
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_081498BC:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	add r2, r8
	ldr r3, [r2, #0x00]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl _call_via_r3
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081498D8: .4byte 0x00007FFF
	thumb_func_start sub_81498DC
sub_81498DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
	mov r4, sp
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	strb r0, [r4, #0x00]
	mov r0, sp
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08149930
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	b _08149942
_08149930:
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	adds r1, r1, r2
	ldr r2, _08149984 @ =0xFFFFDC00
	adds r1, r1, r2
	str r1, [r0, #0x00]
_08149942:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149988 @ =0x0814B989
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149984: .4byte 0xFFFFDC00
_08149988: .4byte sub_814B988
	thumb_func_start sub_814998C
sub_814998C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081499F4
	adds r0, r5, #0x0
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #0x02
	bl sub_813A5C8
	adds r0, r5, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x07
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081499F0 @ =0x0814BA11
	b _08149AAA
	.byte 0x00, 0x00
_081499F0: .4byte sub_814BA10
_081499F4:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r7, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	subs r6, r1, r0
	ldr r2, _08149ABC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, _08149AC0 @ =0x2D900000
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08149A2A
	adds r0, #0xFF
_08149A2A:
	asrs r4, r0, #0x08
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r7, r1, #0x05
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl __divsi3
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r6, r1, #0x05
	mov r0, r8
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r4, r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r4, r4, r1
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	movs r3, #0x28
	bl sub_813B798
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, _08149AC4 @ =0x0814B92D
_08149AAA:
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149ABC: .4byte 0x03001038
_08149AC0: .4byte 0x2D900000
_08149AC4: .4byte sub_814B92C
	thumb_func_start sub_8149AC8
sub_8149AC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	mov r8, r0
	adds r4, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r3, #0xEC
	lsls r3, r3, #0x01
	adds r6, r4, r3
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1F
	cmp r0, #0x00
	beq _08149B02
	add r5, sp, #0x010
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149B02
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1E
	cmp r0, #0x00
	blt _08149B06
_08149B02:
	movs r0, #0x00
	b _08149B70
_08149B06:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x28]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _08149B16
	adds r0, #0xFF
_08149B16:
	lsls r0, r0, #0x08
	lsrs r1, r0, #0x10
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08149B22
	adds r0, #0xFF
_08149B22:
	lsls r2, r0, #0x08
	mov r3, sp
	movs r4, #0x10
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r3, #0x00]
	movs r4, #0x12
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x06]
	movs r4, #0x14
	ldsh r0, [r7, r4]
	lsls r0, r0, #0x04
	adds r1, r1, r0
	strh r1, [r3, #0x02]
	mov r1, sp
	movs r3, #0x16
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x04
	adds r2, r2, r0
	strh r2, [r1, #0x04]
	ldr r2, _08149B7C @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	movs r1, #0x00
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08149B6E
	movs r1, #0x01
_08149B6E:
	adds r0, r1, #0x0
_08149B70:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08149B7C: .4byte 0x00007FFF
	thumb_func_start sub_8149B80
sub_8149B80:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r1, #0x0
	mov r9, r2
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r6, r7, r1
	movs r1, #0x00
	mov r8, r1
	strh r0, [r6, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldrh r0, [r6, #0x00]
	adds r5, r5, r0
	ldrb r0, [r5, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149C44 @ =0x08149C4D
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _08149C48 @ =0x0814B849
	str r0, [r1, #0x04]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149C44: .4byte sub_8149C4C
_08149C48: .4byte sub_814B848
	thumb_func_start sub_8149C4C
sub_8149C4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x010]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x014]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08149C8A
	b _08149E00
_08149C8A:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08149C9E
	b _08149E34
_08149C9E:
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149CB2
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _08149CBE
_08149CB2:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08149CBE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r2, [sp, #0x00C]
	movs r3, #0xC2
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r4, #0xC4
	lsls r4, r4, #0x01
	adds r0, r2, r4
	ldr r2, [r0, #0x00]
	ldr r5, [sp, #0x00C]
	adds r3, #0x08
	adds r0, r5, r3
	adds r3, #0x04
	adds r4, r5, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r7, #0x0
	bl sub_8047F60
	mov r0, r8
	ldr r1, [r0, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	mov r2, r8
	ldr r1, [r2, #0x10]
	ldr r0, [r7, #0x10]
	subs r6, r1, r0
	ldr r5, _08149DF4 @ =0x0819832C
	ldr r0, _08149DF8 @ =0x08198220
	subs r5, r5, r0
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r4, r2, r5
	mov r1, r9
	mov r0, r9
	muls r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r4
	mov r10, r0
	ldr r2, [sp, #0x014]
	ldrh r0, [r2, #0x0A]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r4, [r3, #0x14]
	adds r4, r4, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	subs r4, r4, r0
	movs r1, #0xBC
	lsls r1, r1, #0x01
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	str r1, [sp, #0x018]
	ldrh r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	mov r8, r0
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	mov r0, r9
	mov r1, r10
	bl _call_via_r2
	mov r1, r8
	muls r1, r0
	mov r9, r1
	ldr r3, _08149DFC @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	mov r1, r10
	bl _call_via_r2
	mov r6, r8
	muls r6, r0
	ldr r5, [sp, #0x018]
	ldrh r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	ldrh r0, [r0, #0x08]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	movs r2, #0x01
	strb r2, [r0, #0x00]
	adds r0, r7, #0x0
	mov r1, r9
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	bl sub_813A44C
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r7, r3
	ldr r0, [r4, #0x00]
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldr r2, [sp, #0x018]
	ldrh r0, [r2, #0x00]
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	ldrb r0, [r0, #0x04]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08149E34
	.byte 0x00, 0x00
_08149DF4: .4byte 0x0819832C
_08149DF8: .4byte 0x08198220
_08149DFC: .4byte 0x03001038
_08149E00:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x2C
	ldsh r0, [r0, r2]
	cmp r0, #0xFF
	ble _08149E24
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_08149E24:
	adds r0, r7, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149E34
	ldr r0, _08149E44 @ =0x08149E49
	str r0, [r5, #0x00]
_08149E34:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149E44: .4byte sub_8149E48
	thumb_func_start sub_8149E48
sub_8149E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r9, r2
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r6, [r0, #0x00]
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149E82
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _08149E8E
_08149E82:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08149E8E:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r6, #0x08]
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x14]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149EF0 @ =0x0814B7A5
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149EF0: .4byte sub_814B7A4
	thumb_func_start sub_8149EF4
sub_8149EF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	str r0, [sp, #0x020]
	adds r7, r1, #0x0
	str r2, [sp, #0x024]
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x028]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r8, r0
	ldr r0, [sp, #0x020]
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149F3A
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r3, [sp, #0x020]
	adds r0, r0, r3
	b _08149F4C
_08149F3A:
	ldr r4, [sp, #0x020]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r0, r0, r4
_08149F4C:
	ldr r5, [r0, #0x28]
	ldr r1, [r5, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x030]
	ldr r1, [r5, #0x10]
	ldr r0, [r7, #0x10]
	subs r1, r1, r0
	mov r10, r1
	ldr r4, _0814A03C @ =0x0819832C
	ldr r0, _0814A040 @ =0x08198220
	subs r4, r4, r0
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r6, r2, r4
	ldr r1, [sp, #0x030]
	adds r0, r1, #0x0
	muls r0, r1
	mov r3, r10
	mov r1, r10
	muls r1, r3
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r6
	mov r9, r0
	mov r1, r8
	ldrh r0, [r1, #0x0A]
	lsls r0, r0, #0x08
	str r0, [sp, #0x038]
	ldr r2, [r5, #0x14]
	adds r2, r2, r0
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	subs r2, r2, r0
	str r2, [sp, #0x034]
	ldr r2, [sp, #0x028]
	movs r3, #0xBC
	lsls r3, r3, #0x01
	adds r2, r2, r3
	mov r8, r2
	ldrh r0, [r2, #0x00]
	ldr r1, [sp, #0x02C]
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r6, [r0, #0x00]
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldr r0, [sp, #0x030]
	mov r1, r9
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	str r1, [sp, #0x030]
	ldr r3, _0814A044 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r10
	mov r1, r9
	bl _call_via_r2
	adds r4, r0, #0x0
	muls r4, r6
	mov r10, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x02C]
	adds r0, r0, r2
	ldrh r6, [r0, #0x20]
	ldr r3, [sp, #0x020]
	movs r4, #0xC1
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x03C]
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r4, sp, #0x008
	movs r3, #0x00
	mov r9, r3
	strb r3, [r4, #0x00]
	add r4, sp, #0x00C
	movs r3, #0x01
	mov r8, r3
	strb r3, [r4, #0x00]
	ldr r3, [sp, #0x03C]
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0814A048
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r4, [sp, #0x038]
	adds r3, r3, r4
	str r6, [sp, #0x000]
	add r0, sp, #0x004
	mov r4, r9
	strb r4, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_813A44C
	b _0814A05C
	.byte 0x00, 0x00
_0814A03C: .4byte 0x0819832C
_0814A040: .4byte 0x08198220
_0814A044: .4byte 0x03001038
_0814A048:
	str r6, [sp, #0x000]
	add r0, sp, #0x004
	mov r1, r8
	strb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ldr r1, [sp, #0x030]
	mov r2, r10
	ldr r3, [sp, #0x034]
	bl sub_813A44C
_0814A05C:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x028]
	subs r3, #0x9C
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	ldr r4, [sp, #0x02C]
	adds r0, r0, r4
	ldrb r0, [r0, #0x1C]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0814A0A0 @ =0x0814B805
	ldr r1, [sp, #0x024]
	str r0, [r1, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814A0A0: .4byte sub_814B804
	thumb_func_start sub_814A0A4
sub_814A0A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A0E0
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	b _0814A0EC
_0814A0E0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814A0EC:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r7, #0x08]
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x2C]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814A160 @ =0x0814B7A5
	str r0, [r6, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A164 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A16C
	ldr r0, _0814A168 @ =0x08149EF5
	b _0814A16E
_0814A160: .4byte sub_814B7A4
_0814A164: .4byte 0x00007FFF
_0814A168: .4byte sub_8149EF4
_0814A16C:
	ldr r0, _0814A180 @ =0x0814A185
_0814A16E:
	str r0, [r6, #0x04]
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A180: .4byte sub_814A184
	thumb_func_start sub_814A184
sub_814A184:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x010]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	subs r5, r1, r0
	ldr r2, _0814A240 @ =0x03001038
	mov r10, r2
	ldr r4, _0814A244 @ =0x0819832C
	ldr r0, _0814A248 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r2, #0x00]
	adds r6, r2, r4
	mov r1, r9
	mov r0, r9
	muls r0, r1
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r6
	mov r8, r0
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	adds r0, #0x40
	ldrb r6, [r0, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r9
	mov r1, r8
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	mov r9, r1
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	mov r1, r8
	bl _call_via_r2
	adds r5, r0, #0x0
	muls r5, r6
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r1, r0
	movs r1, #0xF2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r2, #0xF4
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r2, r2, r0
	cmp r3, r2
	ble _0814A24C
	movs r3, #0x80
	lsls r3, r3, #0x06
	b _0814A252
	.byte 0x00, 0x00
_0814A240: .4byte 0x03001038
_0814A244: .4byte 0x0819832C
_0814A248: .4byte 0x08198220
_0814A24C:
	ldr r1, _0814A2BC @ =0xFFFFE000
	adds r0, r3, r1
	subs r3, r2, r0
_0814A252:
	ldr r2, [sp, #0x00C]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	adds r4, r2, r0
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	ldrh r0, [r0, #0x38]
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	mov r1, r9
	adds r2, r5, #0x0
	bl sub_813A44C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0814A2C0 @ =0x0814A2C9
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	ldr r0, _0814A2C4 @ =0x0814B731
	str r0, [r1, #0x04]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A2BC: .4byte 0xFFFFE000
_0814A2C0: .4byte sub_814A2C8
_0814A2C4: .4byte sub_814B730
	thumb_func_start sub_814A2C8
sub_814A2C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814A2E6
	adds r0, #0xFF
_0814A2E6:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814A2FA
	adds r0, #0xFF
_0814A2FA:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r3, _0814A418 @ =0x03001038
	mov r8, r3
	ldr r1, _0814A41C @ =0x0819832C
	ldr r0, _0814A420 @ =0x08198220
	subs r6, r1, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r0, [r4, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r9, r1
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r0, [r4, #0x10]
	mov r1, r9
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	subs r1, #0x78
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814A370
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814A370:
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x014]
	mov r1, sp
	ldr r0, [sp, #0x010]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, #0x0
	subs r0, #0x19
	strh r0, [r1, #0x00]
	mov r3, sp
	mov r0, r10
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0x0
	subs r0, #0x13
	strh r0, [r3, #0x06]
	mov r0, sp
	adds r2, #0x19
	strh r2, [r0, #0x02]
	adds r1, #0x13
	strh r1, [r0, #0x04]
	ldr r0, [r7, #0x04]
	ldr r1, _0814A424 @ =0x0814B6CD
	mov r10, r1
	cmp r0, r10
	beq _0814A3FE
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, r5
	mov r0, sp
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r1, r0
	blt _0814A3FE
	subs r0, r2, r5
	mov r1, sp
	movs r2, #0x02
	ldsh r1, [r1, r2]
	cmp r0, r1
	bgt _0814A3FE
	mov r0, sp
	ldr r3, [sp, #0x01C]
	lsls r1, r3, #0x10
	asrs r5, r1, #0x10
	movs r1, #0x06
	ldsh r0, [r0, r1]
	cmp r5, r0
	blt _0814A3FE
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	mov r1, r9
	bl _call_via_r2
	subs r0, r5, r0
	mov r1, sp
	movs r2, #0x04
	ldsh r1, [r1, r2]
	cmp r0, r1
	bgt _0814A3FE
	mov r3, r10
	str r3, [r7, #0x04]
_0814A3FE:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bne _0814A408
	ldr r0, [r7, #0x04]
	str r0, [r7, #0x00]
_0814A408:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814A418: .4byte 0x03001038
_0814A41C: .4byte 0x0819832C
_0814A420: .4byte 0x08198220
_0814A424: .4byte sub_814B6CC
	thumb_func_start sub_814A428
sub_814A428:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r7, r6, r2
	ldrh r0, [r7, #0x00]
	cmp r0, #0x00
	beq _0814A4DE
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x18]
	subs r0, r0, r1
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x14]
	adds r1, r1, r0
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0814A512
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x02
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x4C
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	strh r5, [r7, #0x00]
	b _0814A512
_0814A4DE:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x2C
	ldsh r1, [r0, r2]
	ldr r0, _0814A520 @ =0x0000084F
	cmp r1, r0
	ble _0814A512
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _0814A524 @ =0x0814B67D
	str r3, [r4, #0x00]
	ldr r0, _0814A528 @ =0x0814B86D
	str r0, [r4, #0x04]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
_0814A512:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A520: .4byte 0x0000084F
_0814A524: .4byte sub_814B67C
_0814A528: .4byte sub_814B86C
	.byte 0x70, 0xB5, 0x82, 0xB0, 0x04, 0x1C, 0x0D, 0x1C, 0x2E, 0x1C, 0x58, 0x36, 0x01, 0xA9, 0xB1, 0xF7
	.byte 0x03, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x0A, 0xD0, 0x20, 0x1C, 0x29, 0x1C, 0x00, 0x22, 0xEF, 0xF7
	.byte 0x9D, 0xFC, 0x00, 0x06, 0x00, 0x16, 0x01, 0x21, 0x49, 0x42, 0x88, 0x42, 0x05, 0xD1, 0x20, 0x1C
	.byte 0x29, 0x1C, 0x00, 0x22, 0x00, 0xF0, 0xB2, 0xFF, 0x53, 0xE0, 0xDA, 0x21, 0x49, 0x00, 0x68, 0x18
	.byte 0x00, 0x68, 0x08, 0x22, 0x80, 0x5E, 0x00, 0x28, 0x1B, 0xD0, 0x20, 0x1C, 0x29, 0x1C, 0x00, 0xF0
	.byte 0xBB, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x14, 0xD0, 0x80, 0x21, 0x89, 0x00, 0x60, 0x18, 0x00, 0x68
	.byte 0x04, 0x22, 0x80, 0x5E, 0x02, 0x28, 0x06, 0xD0, 0x04, 0x31, 0x60, 0x18, 0x00, 0x68, 0x04, 0x22
	.byte 0x80, 0x5E, 0x02, 0x28, 0x05, 0xD1, 0x20, 0x1C, 0x29, 0x1C, 0x02, 0x22, 0x00, 0xF0, 0x8E, 0xFF
	.byte 0x2F, 0xE0, 0x01, 0xA8, 0x00, 0x78, 0x80, 0x00, 0x00, 0x19, 0x84, 0x6A, 0xBC, 0x21, 0x49, 0x00
	.byte 0x70, 0x18, 0x00, 0x88, 0xAC, 0x22, 0x52, 0x00, 0xB1, 0x18, 0x09, 0x68, 0x40, 0x00, 0x40, 0x18
	.byte 0x06, 0x8D, 0xE1, 0x68, 0xE8, 0x68, 0x0A, 0x1A, 0x21, 0x69, 0x28, 0x69, 0x09, 0x1A, 0x10, 0x1C
	.byte 0x08, 0x43, 0x00, 0x28, 0x07, 0xD0, 0x10, 0x1C, 0x9E, 0xF7, 0xD6, 0xFF, 0x00, 0x04, 0x00, 0x0C
	.byte 0x10, 0x30, 0x01, 0x0A, 0x00, 0xE0, 0xFF, 0x21, 0x00, 0x20, 0xA9, 0x70, 0xE1, 0x68, 0x22, 0x69
	.byte 0x6B, 0x46, 0x18, 0x70, 0x28, 0x1C, 0x33, 0x1C, 0xEF, 0xF7, 0x3E, 0xFE, 0x28, 0x1C, 0xF1, 0xF7
	.byte 0x21, 0xF8, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_814A618
sub_814A618:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	mov r12, r1
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r3, [r0, #0x00]
	movs r5, #0xEA
	lsls r5, r5, #0x01
	add r5, r12
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0814A694
	adds r4, r3, #0x0
	adds r4, #0x23
	ldrb r0, [r4, #0x00]
	cmp r0, #0x08
	bls _0814A654
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814A654:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x0D
	bls _0814A6BC
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A6BC
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	mov r1, r12
	movs r2, #0x03
	bl sub_814B038
	movs r0, #0x00
	strh r0, [r5, #0x00]
	b _0814A6BC
_0814A694:
	adds r0, r3, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0814A6BC
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A6BC
	adds r0, r6, #0x0
	mov r1, r12
	movs r2, #0x04
	bl sub_814B4C8
_0814A6BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A6C4
sub_814A6C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	ldr r6, _0814A7A0 @ =0x03001038
	ldr r1, _0814A7A4 @ =0x0819832C
	ldr r0, _0814A7A8 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814A720
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814A720:
	movs r5, #0xB7
	lsls r5, r5, #0x02
	adds r2, r4, r5
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814A7BC
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r5, r4, r3
	ldrb r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0814A75E
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x06
	bl sub_814B038
	ldrb r1, [r5, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0814A75E:
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814A7BC
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r5, _0814A7AC @ =0x0000020F
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A7B0
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814A802
	.byte 0x00, 0x00
_0814A7A0: .4byte 0x03001038
_0814A7A4: .4byte 0x0819832C
_0814A7A8: .4byte 0x08198220
_0814A7AC: .4byte 0x0000020F
_0814A7B0:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
	b _0814A802
_0814A7BC:
	ldr r0, _0814A810 @ =0x00000242
	adds r1, r4, r0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x02
	add r1, r8
	ldr r3, [r1, #0x00]
	adds r0, r3, r0
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _0814A7D8
	adds r1, #0x03
_0814A7D8:
	asrs r1, r1, #0x02
	adds r1, r2, r1
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r5, #0x00
	ldsh r2, [r1, r5]
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0814A7F8
	adds r0, #0x03
_0814A7F8:
	asrs r1, r0, #0x02
	adds r1, r2, r1
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0814A802:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A810: .4byte 0x00000242
	thumb_func_start sub_814A814
sub_814A814:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0814A880
	movs r1, #0x23
	adds r1, r1, r3
	mov r12, r1
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bls _0814A854
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814A854:
	mov r1, r12
	ldrb r0, [r1, #0x00]
	cmp r0, #0x03
	bls _0814A906
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A906
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x08
	bl sub_814B038
	movs r0, #0x00
	strh r0, [r6, #0x00]
	b _0814A906
_0814A880:
	movs r0, #0x23
	adds r0, r0, r3
	mov r12, r0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0814A8A2
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814A8A2:
	mov r1, r12
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bls _0814A906
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A906
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A8F8 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A8FC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
	b _0814A906
_0814A8F8: .4byte 0x00007FFF
_0814A8FC:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x09
	bl sub_814B4C8
_0814A906:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A910
sub_814A910:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814A946
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814B4F4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A942
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x01
	bl sub_814B4C8
	b _0814A984
_0814A942:
	movs r0, #0x28
	b _0814A948
_0814A946:
	subs r0, #0x01
_0814A948:
	strh r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A984
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
_0814A984:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814A98C
sub_814A98C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A9CC
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A9C8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A9C6
	b _0814AABC
_0814A9C6:
	b _0814A9EA
_0814A9C8: .4byte 0x00007FFF
_0814A9CC:
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A9F8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A9FC
_0814A9EA:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x09
	bl sub_814B4C8
	b _0814AAD2
	.byte 0x00, 0x00
_0814A9F8: .4byte 0x00007FFF
_0814A9FC:
	ldr r1, _0814AA34 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	beq _0814AA38
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x08
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0814AA38
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814B4F4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AA38
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x02
	bl sub_814B4C8
	b _0814AAD2
_0814AA34: .4byte 0x00000246
_0814AA38:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	subs r2, #0x20
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r7, [r0, #0x28]
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814AA78
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r1, r0, #0x08
	b _0814AA7A
_0814AA78:
	movs r1, #0xFF
_0814AA7A:
	movs r0, #0x00
	strb r1, [r5, #0x02]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r3, sp
	strb r0, [r3, #0x00]
	adds r0, r5, #0x0
	adds r3, r7, #0x0
	bl sub_813A284
	ldr r1, _0814AAC8 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r2, [r5, #0x0C]
	adds r2, r2, r0
	adds r1, #0x02
	adds r0, r5, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r3, [r5, #0x10]
	adds r3, r3, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AACC
_0814AABC:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_814B4C8
	b _0814AAD2
_0814AAC8: .4byte 0x00000242
_0814AACC:
	adds r0, r5, #0x0
	bl sub_813B650
_0814AAD2:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814AADC
sub_814AADC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r12, r0
	ldr r2, _0814AB18 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0814AB66
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0814AB1C
	ldr r0, [r4, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	b _0814AB22
	.byte 0x00, 0x00
_0814AB18: .4byte 0x000002DE
_0814AB1C:
	ldr r0, [r4, #0x0C]
	ldr r1, _0814ABA0 @ =0xFFFFFC00
	adds r0, r0, r1
_0814AB22:
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	subs r1, r1, r0
	ldr r2, _0814ABA4 @ =0x00000242
	adds r0, r4, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	ldr r1, _0814ABA8 @ =0x000002DE
	adds r0, r4, r1
	strh r2, [r0, #0x00]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	add r2, r12
	ldrh r1, [r2, #0x00]
	ldr r0, _0814ABAC @ =0x0000FFFE
	cmp r1, r0
	bhi _0814AB4A
	adds r0, r1, #0x1
	strh r0, [r2, #0x00]
_0814AB4A:
	movs r3, #0xBF
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0814AB66:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r0, #0x1D
	bls _0814AB96
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814AB96
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x0D
	bl sub_814B4C8
_0814AB96:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814ABA0: .4byte 0xFFFFFC00
_0814ABA4: .4byte 0x00000242
_0814ABA8: .4byte 0x000002DE
_0814ABAC: .4byte 0x0000FFFE
	thumb_func_start sub_814ABB0
sub_814ABB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0814AC50
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldr r0, [r4, #0x14]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	subs r1, #0xDC
	strh r1, [r0, #0x00]
	ldr r3, _0814AC3C @ =0x0000023E
	adds r0, r4, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x01
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r3, _0814AC40 @ =0x03001038
	ldr r0, _0814AC44 @ =0x0819832C
	ldr r2, _0814AC48 @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	asrs r0, r1, #0x01
	ldr r3, _0814AC4C @ =0xFFFC0000
	adds r0, r0, r3
	bl _call_via_r2
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r4, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AC34
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AC34:
	movs r0, #0x01
	strh r0, [r5, #0x00]
	b _0814AD16
	.byte 0x00, 0x00
_0814AC3C: .4byte 0x0000023E
_0814AC40: .4byte 0x03001038
_0814AC44: .4byte 0x0819832C
_0814AC48: .4byte 0x08198220
_0814AC4C: .4byte 0xFFFC0000
_0814AC50:
	cmp r0, #0x01
	bne _0814AD16
	ldr r6, _0814ACFC @ =0x03001038
	ldr r1, _0814AD00 @ =0x0819832C
	ldr r0, _0814AD04 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	subs r3, #0x10
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814ACA2
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814ACA2:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r4, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814AD16
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814AD16
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r3, _0814AD08 @ =0x0000020F
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AD0C
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814AD16
_0814ACFC: .4byte 0x03001038
_0814AD00: .4byte 0x0819832C
_0814AD04: .4byte 0x08198220
_0814AD08: .4byte 0x0000020F
_0814AD0C:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
_0814AD16:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814AD24
sub_814AD24:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	adds r7, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r7, r1
	cmp r2, #0x00
	bne _0814AD98
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xE9
	lsls r6, r6, #0x01
	adds r1, r7, r6
	movs r0, #0x50
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x30]
	adds r0, r7, #0x0
	mov r2, r9
	bl sub_813A5C8
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AD94 @ =0x0814A911
	b _0814B020
_0814AD94: .4byte sub_814A910
_0814AD98:
	cmp r2, #0x01
	bne _0814ADB8
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814ADB4 @ =0x0814A98D
	b _0814B020
_0814ADB4: .4byte sub_814A98C
_0814ADB8:
	cmp r2, #0x02
	bne _0814ADCC
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814ADC8 @ =0x0814A619
	b _0814B020
	.byte 0x00, 0x00
_0814ADC8: .4byte sub_814A618
_0814ADCC:
	cmp r2, #0x04
	beq _0814ADD2
	b _0814AF2C
_0814ADD2:
	movs r4, #0xB0
	lsls r4, r4, #0x03
	mov r9, r4
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	ldr r1, [r4, #0x00]
	ldr r3, [r1, #0x0C]
	ldr r5, _0814AF00 @ =0x00000242
	adds r0, r1, r5
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x0C]
	subs r3, r3, r0
	adds r5, r7, r5
	strh r3, [r5, #0x00]
	ldr r3, [r1, #0x10]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r1, r4
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x10]
	subs r3, r3, r0
	adds r4, r7, r4
	strh r3, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_813B178
	ldr r0, _0814AF04 @ =0x03001038
	mov r8, r0
	ldr r6, _0814AF08 @ =0x0819832C
	ldr r0, _0814AF0C @ =0x08198220
	subs r6, r6, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r6
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r5, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r4, #0x00]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r3, r7, r2
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r4, #0xA0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	adds r2, r2, r6
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	movs r1, #0x01
	bl _call_via_r2
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	str r0, [r1, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r9
	strh r4, [r0, #0x00]
	adds r2, #0x7E
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r1, r1, #0x01
	add r1, r9
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	asrs r0, r1, #0x01
	ldr r4, _0814AF10 @ =0xFFE1C000
	adds r0, r0, r4
	bl _call_via_r2
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r1, r7, r6
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AED0
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AED0:
	ldr r0, _0814AF14 @ =0x0000020F
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r10
	adds r1, r7, #0x0
	movs r2, #0x04
	bl sub_814B038
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x13
	bls _0814AF1C
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AF18 @ =0x0814A6C5
	b _0814B020
_0814AF00: .4byte 0x00000242
_0814AF04: .4byte 0x03001038
_0814AF08: .4byte 0x0819832C
_0814AF0C: .4byte 0x08198220
_0814AF10: .4byte 0xFFE1C000
_0814AF14: .4byte 0x0000020F
_0814AF18: .4byte sub_814A6C4
_0814AF1C:
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF28 @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AF28: .4byte sub_814B530
_0814AF2C:
	cmp r2, #0x07
	bne _0814AF4C
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AF48 @ =0x0814A815
	b _0814B020
_0814AF48: .4byte sub_814A814
_0814AF4C:
	cmp r2, #0x09
	bne _0814AF90
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r2, [r0, #0x00]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF8C @ =0x0814B5D1
	b _0814B020
_0814AF8C: .4byte sub_814B5D0
_0814AF90:
	cmp r2, #0x0A
	bne _0814AFCC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	movs r4, #0xE9
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strh r0, [r1, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AFC4 @ =0x0813B1E9
	str r0, [r1, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AFC8 @ =0x0814A911
	b _0814B020
	.byte 0x00, 0x00
_0814AFC4: .4byte sub_813B1E8
_0814AFC8: .4byte sub_814A910
_0814AFCC:
	cmp r2, #0x0B
	bne _0814AFE0
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AFDC @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AFDC: .4byte sub_814B530
_0814AFE0:
	cmp r2, #0x0C
	bne _0814B004
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xD0
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r0, _0814B000 @ =0x0814AADD
	b _0814B020
	.byte 0x00, 0x00
_0814B000: .4byte sub_814AADC
_0814B004:
	cmp r0, #0x0D
	bne _0814B022
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814B034 @ =0x0814ABB1
_0814B020:
	str r0, [r1, #0x00]
_0814B022:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B034: .4byte sub_814ABB0
	thumb_func_start sub_814B038
sub_814B038:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, r5, #0x0
	adds r4, #0x58
	cmp r2, #0x00
	bne _0814B092
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B436
_0814B092:
	cmp r2, #0x01
	bne _0814B0F4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x20
	movs r1, #0x30
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r3, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r3, #0x0
	orrs r0, r1
	cmp r0, #0x00
	bne _0814B0E2
	b _0814B352
_0814B0E2:
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	b _0814B348
_0814B0F4:
	cmp r2, #0x02
	bne _0814B136
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x31
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	b _0814B3D8
_0814B136:
	cmp r2, #0x03
	bne _0814B19C
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0814B180
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	b _0814B18A
_0814B180:
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814B18A:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	b _0814B3D6
_0814B19C:
	cmp r2, #0x04
	bne _0814B20A
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0814B1F2
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	b _0814B1FC
_0814B1F2:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814B1FC:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	b _0814B436
_0814B20A:
	cmp r2, #0x05
	bne _0814B210
	b _0814B436
_0814B210:
	cmp r2, #0x06
	bne _0814B246
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x07
	movs r2, #0x00
	b _0814B3D6
_0814B246:
	cmp r2, #0x07
	bne _0814B280
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x08
	movs r2, #0x00
	b _0814B3D6
_0814B280:
	cmp r2, #0x08
	bne _0814B2BA
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r2, #0x00
	b _0814B3D6
_0814B2BA:
	cmp r2, #0x09
	bne _0814B35E
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B2EE
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814B2F0
_0814B2EE:
	movs r0, #0xFF
_0814B2F0:
	strb r0, [r5, #0x02]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	movs r3, #0xC4
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B352
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
_0814B348:
	asrs r0, r0, #0x0D
	movs r1, #0x07
	ands r0, r1
	asrs r1, r0, #0x01
	b _0814B354
_0814B352:
	movs r1, #0x00
_0814B354:
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	b _0814B436
_0814B35E:
	cmp r2, #0x0A
	bne _0814B3E4
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0814B3BC @ =0x00000242
	adds r3, r5, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B3C0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0814B3C4
	.byte 0x00, 0x00
_0814B3BC: .4byte 0x00000242
_0814B3C0:
	movs r3, #0x01
	negs r3, r3
_0814B3C4:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r3, #0x0
_0814B3D6:
	movs r3, #0x00
_0814B3D8:
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	b _0814B436
_0814B3E4:
	cmp r2, #0x0B
	beq _0814B436
	cmp r2, #0x0C
	beq _0814B436
	cmp r2, #0x0D
	bne _0814B436
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x11
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
_0814B436:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B440
sub_814B440:
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	cmp r2, #0x00
	bne _0814B456
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x50
	b _0814B4C0
_0814B456:
	cmp r2, #0x01
	bne _0814B464
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x41
	b _0814B4C0
_0814B464:
	cmp r2, #0x02
	bne _0814B472
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B472:
	cmp r2, #0x03
	beq _0814B4C2
	cmp r2, #0x04
	bne _0814B48A
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B4C2
_0814B48A:
	cmp r2, #0x05
	beq _0814B4C2
	cmp r2, #0x06
	beq _0814B4C2
	cmp r2, #0x07
	bne _0814B4A0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B4A0:
	cmp r0, #0x08
	beq _0814B4C2
	cmp r0, #0x09
	beq _0814B4C2
	cmp r0, #0x0A
	beq _0814B4C2
	cmp r0, #0x0B
	beq _0814B4C2
	cmp r0, #0x0C
	beq _0814B4C2
	cmp r0, #0x0D
	bne _0814B4C2
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x00
_0814B4C0:
	strh r0, [r1, #0x00]
_0814B4C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B4C8
sub_814B4C8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	adds r2, r5, #0x0
	bl sub_814B440
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814AD24
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814B038
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B4F4
sub_814B4F4:
	push {r4, r5, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	add r0, sp, #0x004
	movs r2, #0x24
	movs r3, #0x0A
	bl sub_8139CAC
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	movs r0, #0x30
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x30
	bl sub_80FBB50
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0814B526
	movs r1, #0x01
_0814B526:
	adds r0, r1, #0x0
	add sp, #0x014
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_814B530
sub_814B530:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0x0
	ldr r6, _0814B5C4 @ =0x03001038
	ldr r1, _0814B5C8 @ =0x0819832C
	ldr r0, _0814B5CC @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0814B58A
	adds r0, r4, #0x0
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	bl _call_via_r2
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	str r1, [r5, #0x18]
_0814B58A:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814B5B8
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0814B5B8
	movs r0, #0x00
	str r0, [r5, #0x18]
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
_0814B5B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B5C4: .4byte 0x03001038
_0814B5C8: .4byte 0x0819832C
_0814B5CC: .4byte 0x08198220
	thumb_func_start sub_814B5D0
sub_814B5D0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B5EC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
_0814B5EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x1D, 0x48, 0x2A, 0x18, 0x10, 0x78, 0x10, 0x21
	.byte 0x08, 0x43, 0x10, 0x70, 0x28, 0x1C, 0xEE, 0xF7, 0x4A, 0xFA, 0x19, 0x48, 0x2A, 0x18, 0x11, 0x78
	.byte 0x05, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xEE, 0x22, 0x52, 0x00, 0xA9, 0x18, 0xE8, 0x68
	.byte 0x08, 0x60, 0xF0, 0x20, 0x40, 0x00, 0x29, 0x18, 0x28, 0x69, 0x08, 0x60, 0x08, 0x32, 0xA9, 0x18
	.byte 0x68, 0x69, 0x08, 0x60, 0xF4, 0x20, 0x40, 0x00, 0x29, 0x18, 0xA8, 0x69, 0x08, 0x60, 0x20, 0x1C
	.byte 0x29, 0x1C, 0x00, 0x22, 0xFF, 0xF7, 0x3F, 0xFF, 0xCC, 0x22, 0x52, 0x00, 0xA9, 0x18, 0x09, 0x48
	.byte 0x08, 0x60, 0x4E, 0xF0, 0x6C, 0xFC, 0x01, 0x1C, 0x04, 0x20, 0x92, 0xF0, 0x8E, 0xF8, 0xE8, 0x22
	.byte 0x52, 0x00, 0xA9, 0x18, 0x08, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x3E, 0x03
	.byte 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00, 0x81, 0xB3, 0x13, 0x08
	thumb_func_start sub_814B67C
sub_814B67C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	adds r0, #0x50
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _0814B6C4 @ =0x0000020E
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0814B6C8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x0C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B6C4: .4byte 0x0000020E
_0814B6C8: .4byte sub_813B1E8
	thumb_func_start sub_814B6CC
sub_814B6CC:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r0, #0xF2
	lsls r0, r0, #0x01
	add r0, r12
	movs r1, #0xF4
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0814B72C @ =0x0814A429
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B72C: .4byte sub_814A428
	thumb_func_start sub_814B730
sub_814B730:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	ldr r5, _0814B798 @ =0xFFFFD000
	adds r0, r0, r5
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814B79C @ =0x0814B7A5
	str r0, [r2, #0x00]
	ldr r0, _0814B7A0 @ =0x0814A185
	str r0, [r2, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B798: .4byte 0xFFFFD000
_0814B79C: .4byte sub_814B7A4
_0814B7A0: .4byte sub_814A184
	thumb_func_start sub_814B7A4
sub_814B7A4:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814B7CC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814B7CC:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x18]
	subs r2, r0, r1
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _0814B7F8
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _0814B7FC
_0814B7F8:
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
_0814B7FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B804
sub_814B804:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814B82E
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814B82E:
	adds r0, r3, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B83E
	ldr r0, _0814B844 @ =0x0814A0A5
	str r0, [r4, #0x00]
_0814B83E:
	pop {r4}
	pop {r0}
	bx r0
_0814B844: .4byte sub_814A0A4
	thumb_func_start sub_814B848
sub_814B848:
	push {r4, r5, lr}
	ldr r3, _0814B864 @ =0x0000020E
	adds r5, r1, r3
	ldrb r3, [r5, #0x00]
	movs r4, #0x04
	orrs r3, r4
	strb r3, [r5, #0x00]
	ldr r3, _0814B868 @ =0x08149EF5
	str r3, [r2, #0x00]
	bl _call_via_r3
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B864: .4byte 0x0000020E
_0814B868: .4byte sub_8149EF4
	thumb_func_start sub_814B86C
sub_814B86C:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	movs r3, #0xF2
	lsls r3, r3, #0x01
	adds r0, r6, r3
	adds r3, #0x04
	adds r4, r6, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	ldr r0, _0814B8C4 @ =0x0814BD09
	str r0, [r5, #0x00]
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814B8C4: .4byte sub_814BD08
	.byte 0x0B, 0x1C, 0x15, 0x48, 0x1A, 0x18, 0x11, 0x78, 0x11, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70
	.byte 0xEE, 0x20, 0x40, 0x00, 0x19, 0x18, 0xD8, 0x68, 0x08, 0x60, 0xF0, 0x20, 0x40, 0x00, 0x19, 0x18
	.byte 0x18, 0x69, 0x08, 0x60, 0xF2, 0x20, 0x40, 0x00, 0x19, 0x18, 0x58, 0x69, 0x08, 0x60, 0xF4, 0x20
	.byte 0x40, 0x00, 0x19, 0x18, 0x98, 0x69, 0x08, 0x60, 0xCC, 0x20, 0x40, 0x00, 0x19, 0x18, 0x07, 0x48
	.byte 0x08, 0x60, 0xD0, 0x20, 0x40, 0x00, 0x19, 0x18, 0x05, 0x48, 0x08, 0x60, 0xD2, 0x20, 0x40, 0x00
	.byte 0x19, 0x18, 0x00, 0x20, 0x08, 0x60, 0x70, 0x47, 0x3E, 0x03, 0x00, 0x00, 0x81, 0xB3, 0x13, 0x08
	.byte 0x6D, 0xB8, 0x14, 0x08
	thumb_func_start sub_814B92C
sub_814B92C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814B956
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814B956:
	adds r0, r4, #0x0
	bl sub_813B748
	adds r0, r4, #0x0
	bl sub_813B6A0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B97C
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814B984 @ =0x0814BD91
	str r0, [r5, #0x00]
_0814B97C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B984: .4byte sub_814BD90
	thumb_func_start sub_814B988
sub_814B988:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814B9B4
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814B9B4:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x18]
	subs r2, r0, r1
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	beq _0814B9F0
	adds r0, r5, #0x0
	adds r1, r3, #0x0
	bl sub_8149AC8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814B9E8
	ldr r0, _0814B9E4 @ =0x0814998D
	b _0814BA02
	.byte 0x00, 0x00
_0814B9E4: .4byte sub_814998C
_0814B9E8:
	ldr r0, _0814B9EC @ =0x0814BA71
	b _0814BA02
_0814B9EC: .4byte sub_814BA70
_0814B9F0:
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _0814BA04
	ldr r0, _0814BA0C @ =0x0814BDFD
_0814BA02:
	str r0, [r4, #0x00]
_0814BA04:
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_0814BA0C: .4byte 0x0814BDFD
	thumb_func_start sub_814BA10
sub_814BA10:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814BA4E
	adds r0, r1, #0x0
	adds r0, #0x20
	movs r2, #0x2A
	ldsh r1, [r1, r2]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0814BA4E
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814BA4E:
	adds r0, r4, #0x0
	bl sub_813B564
	adds r0, r4, #0x0
	bl sub_813B6A0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814BA64
	ldr r0, _0814BA6C @ =0x081498DD
	str r0, [r5, #0x00]
_0814BA64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BA6C: .4byte sub_81498DC
	thumb_func_start sub_814BA70
sub_814BA70:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r4, #0x0
	movs r1, #0x40
	bl sub_813A5C8
	movs r1, #0xD8
	lsls r1, r1, #0x07
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814BAC4 @ =0x0814BA11
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BAC4: .4byte sub_814BA10
	thumb_func_start sub_814BAC8
sub_814BAC8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _0814BB18 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x23
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r0, #0x20
	movs r1, #0x20
	strb r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0814BB1C @ =0x0814979D
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _0814BB20 @ =0x0814BA71
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0814BB18: .4byte 0x0000033E
_0814BB1C: .4byte sub_814979C
_0814BB20: .4byte sub_814BA70
	thumb_func_start sub_814BB24
sub_814BB24:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814BB4E
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814BB4E:
	adds r0, r4, #0x0
	bl sub_813B748
	adds r0, r4, #0x0
	bl sub_813B6A0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814BB74
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814BB7C @ =0x0814BE1D
	str r0, [r5, #0x00]
_0814BB74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BB7C: .4byte sub_814BE1C
	thumb_func_start sub_814BB80
sub_814BB80:
	push {r4, r5, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814BBAC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814BBAC:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x18]
	subs r2, r0, r1
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	beq _0814BBFC
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _0814BBF4
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _0814BBF4
	add r1, sp, #0x010
	adds r0, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BBF4
	ldr r0, _0814BBF0 @ =0x08149661
	b _0814BC0E
	.byte 0x00, 0x00
_0814BBF0: .4byte sub_8149660
_0814BBF4:
	ldr r0, _0814BBF8 @ =0x0814BC69
	b _0814BC0E
_0814BBF8: .4byte sub_814BC68
_0814BBFC:
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _0814BC10
	ldr r0, _0814BC18 @ =0x0814BE89
_0814BC0E:
	str r0, [r4, #0x00]
_0814BC10:
	add sp, #0x014
	pop {r4, r5}
	pop {r0}
	bx r0
_0814BC18: .4byte 0x0814BE89
	thumb_func_start sub_814BC1C
sub_814BC1C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814BC46
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814BC46:
	adds r0, r4, #0x0
	bl sub_813B564
	adds r0, r4, #0x0
	bl sub_813B6A0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814BC5C
	ldr r0, _0814BC64 @ =0x081494F5
	str r0, [r5, #0x00]
_0814BC5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BC64: .4byte sub_81494F4
	thumb_func_start sub_814BC68
sub_814BC68:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r4, #0x0
	movs r1, #0x40
	bl sub_813A5C8
	movs r1, #0xD8
	lsls r1, r1, #0x07
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x01
	bl sub_813B6DC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814BCBC @ =0x0814BC1D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BCBC: .4byte sub_814BC1C
	thumb_func_start sub_814BCC0
sub_814BCC0:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _0814BCFC @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0814BD00 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _0814BD04 @ =0x08148E99
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BCFC: .4byte 0x0000033E
_0814BD00: .4byte sub_813B380
_0814BD04: .4byte sub_8148E98
	thumb_func_start sub_814BD08
sub_814BD08:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x010
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BD72
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	mov r0, sp
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814BD7C @ =0x03001038
	ldr r0, _0814BD80 @ =0x0819832C
	ldr r1, _0814BD84 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x0E
	adds r2, r3, r0
	asrs r2, r2, #0x10
	ldr r0, _0814BD88 @ =0xFFE00000
	adds r3, r3, r0
	asrs r3, r3, #0x10
	mov r0, sp
	adds r1, r4, #0x0
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BD72
	ldr r0, _0814BD8C @ =0x08149B81
	str r0, [r7, #0x00]
_0814BD72:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BD7C: .4byte 0x03001038
_0814BD80: .4byte 0x0819832C
_0814BD84: .4byte 0x08198220
_0814BD88: .4byte 0xFFE00000
_0814BD8C: .4byte sub_8149B80
	thumb_func_start sub_814BD90
sub_814BD90:
	push {r4, r5, lr}
	mov r12, r1
	movs r4, #0xB1
	lsls r4, r4, #0x02
	add r4, r12
	ldr r1, [r1, #0x14]
	mov r5, r12
	ldr r3, [r5, #0x18]
	adds r1, r1, r3
	str r1, [r4, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814BDF8 @ =0x0814BEA9
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814BDF8: .4byte sub_814BEA8
	.byte 0xEB, 0x20, 0x40, 0x00, 0x0B, 0x18, 0x19, 0x78, 0x02, 0x20, 0x40, 0x42, 0x08, 0x40, 0x02, 0x21
	.byte 0x08, 0x43, 0x18, 0x70, 0x01, 0x48, 0x10, 0x60, 0x70, 0x47, 0x00, 0x00, 0x29, 0xBF, 0x14, 0x08
	thumb_func_start sub_814BE1C
sub_814BE1C:
	push {r4, r5, lr}
	mov r12, r1
	movs r4, #0xB1
	lsls r4, r4, #0x02
	add r4, r12
	ldr r1, [r1, #0x14]
	mov r5, r12
	ldr r3, [r5, #0x18]
	adds r1, r1, r3
	str r1, [r4, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814BE84 @ =0x0814BFCD
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814BE84: .4byte sub_814BFCC
	.byte 0xEB, 0x20, 0x40, 0x00, 0x0B, 0x18, 0x19, 0x78, 0x02, 0x20, 0x40, 0x42, 0x08, 0x40, 0x02, 0x21
	.byte 0x08, 0x43, 0x18, 0x70, 0x01, 0x48, 0x10, 0x60, 0x70, 0x47, 0x00, 0x00, 0xA5, 0x95, 0x14, 0x08
	thumb_func_start sub_814BEA8
sub_814BEA8:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814BED0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814BED0:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x18]
	subs r2, r0, r1
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _0814BEFC
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _0814BF1C
_0814BEFC:
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _0814BF18
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _0814BF18
	ldr r0, _0814BF14 @ =0x0814998D
	b _0814BF1A
_0814BF14: .4byte sub_814998C
_0814BF18:
	ldr r0, _0814BF24 @ =0x0814BA71
_0814BF1A:
	str r0, [r4, #0x00]
_0814BF1C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BF24: .4byte sub_814BA70
	thumb_func_start sub_814BF28
sub_814BF28:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	beq _0814BF64
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8149AC8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BFBC
	ldr r0, _0814BF60 @ =0x0814998D
	b _0814BFBE
_0814BF60: .4byte sub_814998C
_0814BF64:
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814BF84
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0814BFC0
_0814BF84:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xB4
	lsls r1, r1, #0x06
	adds r0, r0, r1
	cmp r2, r0
	bgt _0814BFC0
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8149AC8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814BFBC
	ldr r0, _0814BFB8 @ =0x0814998D
	b _0814BFBE
	.byte 0x00, 0x00
_0814BFB8: .4byte sub_814998C
_0814BFBC:
	ldr r0, _0814BFC8 @ =0x0814BA71
_0814BFBE:
	str r0, [r6, #0x00]
_0814BFC0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814BFC8: .4byte sub_814BA70
	thumb_func_start sub_814BFCC
sub_814BFCC:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814BFF4
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814BFF4:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x18]
	subs r2, r0, r1
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _0814C020
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _0814C040
_0814C020:
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _0814C03C
	lsls r0, r1, #0x1E
	cmp r0, #0x00
	bge _0814C03C
	ldr r0, _0814C038 @ =0x08149661
	b _0814C03E
_0814C038: .4byte sub_8149660
_0814C03C:
	ldr r0, _0814C048 @ =0x0814BC69
_0814C03E:
	str r0, [r4, #0x00]
_0814C040:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C048: .4byte sub_814BC68
	thumb_func_start sub_814C04C
sub_814C04C:
	push {r4, lr}
	add sp, #-0x008
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r4, [r1, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #0x14]
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	bl sub_8047F60
	ldr r0, _0814C0BC @ =0x0000020E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r3, #0x05
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814C0C0 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	ands r0, r3
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _0814C0C4 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r2, _0814C0C8 @ =0x0000020F
	adds r4, r4, r2
	ldrb r0, [r4, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r4, #0x00]
	add sp, #0x008
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C0BC: .4byte 0x0000020E
_0814C0C0: .4byte 0x0000020D
_0814C0C4: .4byte 0xFFFC7FFF
_0814C0C8: .4byte 0x0000020F
	thumb_func_start sub_814C0CC
sub_814C0CC:
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r5
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _0814C18C @ =0x083A05EC
	ldr r3, _0814C190 @ =0x00000216
	adds r0, r6, r3
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0814C194 @ =0x00000242
	adds r3, r6, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0814C198
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814C19A
	.byte 0x00, 0x00
_0814C18C: .4byte 0x083A05EC
_0814C190: .4byte 0x00000216
_0814C194: .4byte 0x00000242
_0814C198:
	movs r0, #0xFF
_0814C19A:
	strb r0, [r6, #0x02]
	ldr r0, _0814C1A8 @ =0x0814C1AD
	str r0, [r7, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C1A8: .4byte sub_814C1AC
	thumb_func_start sub_814C1AC
sub_814C1AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r0, #0xD8
	lsls r0, r0, #0x01
	adds r6, r5, r0
	add r4, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814C254
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r2, [r0, #0x28]
	ldr r3, [r6, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	add r1, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x04]
	adds r0, r3, #0x0
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x08]
	adds r0, r3, #0x0
	adds r0, #0x2B
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x02]
	adds r0, r3, #0x0
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x06]
	adds r0, r3, #0x0
	adds r0, #0x2D
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x0A]
	adds r0, r1, #0x0
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814C254
	ldr r0, _0814C250 @ =0x0814C5C5
	b _0814C282
	.byte 0x00, 0x00
_0814C250: .4byte sub_814C5C4
_0814C254:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C286
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0814C280
	ldr r0, _0814C27C @ =0x0814C299
	b _0814C282
	.byte 0x00, 0x00
_0814C27C: .4byte sub_814C298
_0814C280:
	ldr r0, _0814C294 @ =0x0814C0CD
_0814C282:
	mov r1, r8
	str r0, [r1, #0x00]
_0814C286:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C294: .4byte sub_814C0CC
	thumb_func_start sub_814C298
sub_814C298:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	mov r8, r1
	str r2, [sp, #0x008]
	movs r0, #0x58
	add r0, r8
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r1, r8
	mov r10, r1
	add r5, sp, #0x004
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C2D6
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814C2DA
_0814C2D6:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
_0814C2DA:
	strb r0, [r5, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r5, [r0, #0x28]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _0814C32C
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _0814C318 @ =0x00002710
	bl sub_81DD77C
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0814C31C
	mov r3, r8
	ldr r7, [r3, #0x0C]
	ldr r6, [r5, #0x10]
	adds r1, r7, #0x0
	ldr r0, [r3, #0x10]
	b _0814C326
	.byte 0x00, 0x00
_0814C318: .4byte 0x00002710
_0814C31C:
	ldr r7, [r5, #0x0C]
	mov r0, r8
	ldr r6, [r0, #0x10]
	ldr r1, [r0, #0x0C]
	adds r0, r6, #0x0
_0814C326:
	subs r7, r7, r1
	subs r6, r6, r0
	b _0814C380
_0814C32C:
	ldr r6, [r5, #0x0C]
	mov r1, r8
	ldr r0, [r1, #0x0C]
	subs r4, r6, r0
	adds r1, r0, #0x0
	cmp r4, #0x00
	bge _0814C33C
	negs r4, r4
_0814C33C:
	ldr r2, [r5, #0x10]
	mov r3, r8
	ldr r0, [r3, #0x10]
	subs r3, r2, r0
	cmp r3, #0x00
	bge _0814C34A
	negs r3, r3
_0814C34A:
	cmp r4, r3
	blt _0814C354
	adds r7, r6, #0x0
	adds r6, r0, #0x0
	b _0814C358
_0814C354:
	adds r7, r1, #0x0
	adds r6, r2, #0x0
_0814C358:
	ldr r5, _0814C444 @ =0x03001038
	ldr r4, _0814C448 @ =0x0819832C
	ldr r0, _0814C44C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	subs r0, r7, r1
	movs r1, #0x02
	bl _call_via_r2
	adds r7, r0, #0x0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	mov r1, r8
	ldr r0, [r1, #0x10]
	subs r0, r6, r0
	movs r1, #0x02
	bl _call_via_r2
	adds r6, r0, #0x0
_0814C380:
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0xAC
	lsls r1, r1, #0x01
	add r1, r9
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x22]
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_813A284
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _0814C450 @ =0x083A05EC
	ldr r0, _0814C454 @ =0x00000216
	add r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	mov r0, r8
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	mov r0, r8
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _0814C458 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0814C45C
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814C45E
_0814C444: .4byte 0x03001038
_0814C448: .4byte 0x0819832C
_0814C44C: .4byte 0x08198220
_0814C450: .4byte 0x083A05EC
_0814C454: .4byte 0x00000216
_0814C458: .4byte 0x00000242
_0814C45C:
	movs r0, #0xFF
_0814C45E:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r0, _0814C478 @ =0x0814C47D
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814C478: .4byte sub_814C47C
	thumb_func_start sub_814C47C
sub_814C47C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	mov r8, r0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814C538
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x28]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	add r1, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x04]
	adds r0, r3, #0x0
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x08]
	adds r0, r3, #0x0
	adds r0, #0x2B
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x02]
	adds r0, r3, #0x0
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x06]
	adds r0, r3, #0x0
	adds r0, #0x2D
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x0A]
	adds r0, r1, #0x0
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814C538
	ldr r0, _0814C530 @ =0x0000020D
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814C534 @ =0x0814C5C5
	b _0814C5B2
	.byte 0x00, 0x00
_0814C530: .4byte 0x0000020D
_0814C534: .4byte sub_814C5C4
_0814C538:
	adds r3, r5, #0x0
	adds r3, #0x4D
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x0A
	ands r0, r1
	cmp r0, #0x00
	beq _0814C558
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814C558:
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x05
	ands r0, r1
	cmp r0, #0x00
	beq _0814C574
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814C574:
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	bne _0814C5B0
	adds r0, r5, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C5B4
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0814C5B0
	ldr r0, _0814C5AC @ =0x0814C299
	b _0814C5B2
	.byte 0x00, 0x00
_0814C5AC: .4byte sub_814C298
_0814C5B0:
	ldr r0, _0814C5C0 @ =0x0814C0CD
_0814C5B2:
	str r0, [r7, #0x00]
_0814C5B4:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814C5C0: .4byte sub_814C0CC
	thumb_func_start sub_814C5C4
sub_814C5C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r7, r5, #0x0
	adds r7, #0x58
	mov r6, sp
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C5F2
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814C5F6
_0814C5F2:
	mov r0, sp
	ldrb r0, [r0, #0x00]
_0814C5F6:
	strb r0, [r6, #0x00]
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	adds r0, r5, #0x0
	movs r1, #0x28
	bl sub_804790C
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r3, r2, #0x0
	cmp r2, #0x00
	bge _0814C61E
	negs r3, r2
_0814C61E:
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0814C626
	negs r0, r1
_0814C626:
	cmp r3, r0
	ble _0814C646
	movs r3, #0x02
	cmp r2, #0x00
	bge _0814C632
	movs r3, #0x06
_0814C632:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r3, r0, #0x0
	b _0814C65E
_0814C646:
	mvns r1, r1
	asrs r1, r1, #0x1F
	movs r0, #0x04
	adds r2, r5, #0x0
	adds r2, #0x24
	ands r1, r0
	ldrb r3, [r2, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r3, r2, #0x0
_0814C65E:
	ldr r2, _0814C6BC @ =0x03001038
	ldr r0, _0814C6C0 @ =0x0819832C
	ldr r1, _0814C6C4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x04
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814C6C8
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814C6CA
	.byte 0x00, 0x00
_0814C6BC: .4byte 0x03001038
_0814C6C0: .4byte 0x0819832C
_0814C6C4: .4byte 0x08198220
_0814C6C8:
	movs r0, #0xFF
_0814C6CA:
	strb r0, [r5, #0x02]
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0x06
	strh r0, [r1, #0x00]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _0814C6F4 @ =0x0814C6F9
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C6F4: .4byte sub_814C6F8
	thumb_func_start sub_814C6F8
sub_814C6F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	adds r5, r6, #0x0
	adds r5, #0x58
	add r7, sp, #0x004
	adds r1, r7, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C726
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814C72A
_0814C726:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
_0814C72A:
	strb r0, [r7, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _0814C7AA
	ldr r1, [r3, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r6, #0x10]
	subs r0, r1, r0
	adds r3, r2, #0x0
	cmp r2, #0x00
	bge _0814C756
	negs r3, r2
_0814C756:
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _0814C75E
	negs r1, r0
_0814C75E:
	cmp r3, r1
	ble _0814C77C
	movs r3, #0x02
	cmp r2, #0x00
	bge _0814C76A
	movs r3, #0x06
_0814C76A:
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	b _0814C794
_0814C77C:
	mvns r1, r0
	asrs r1, r1, #0x1F
	movs r0, #0x04
	adds r2, r6, #0x0
	adds r2, #0x24
	ands r1, r0
	ldrb r3, [r2, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r2, #0x0
_0814C794:
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	adds r3, r6, #0x0
	adds r3, #0x4C
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0814C7AA:
	movs r3, #0xBE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	cmp r0, #0x04
	bne _0814C894
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0814C894
	adds r0, r1, #0x0
	adds r0, #0x20
	movs r2, #0x2A
	ldsh r1, [r1, r2]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0814C894
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r3, #0xAC
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r2, [r1, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x34
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bcs _0814C814
	adds r0, r2, #0x0
	adds r0, #0x37
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r4, #0xBD
	lsls r4, r4, #0x01
	adds r0, r5, r4
	strh r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r5, r2
	b _0814C82A
_0814C814:
	adds r0, r2, #0x0
	adds r0, #0x36
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r0, r5, r3
	strh r1, [r0, #0x00]
	movs r4, #0xBC
	lsls r4, r4, #0x01
	adds r0, r5, r4
_0814C82A:
	strh r1, [r0, #0x00]
	ldr r2, _0814C888 @ =0x03001038
	ldr r0, _0814C88C @ =0x0819832C
	ldr r1, _0814C890 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r2, [r1, #0x00]
	movs r3, #0xAC
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r1, r5, r4
	movs r0, #0x08
	strh r0, [r1, #0x00]
	b _0814C9D6
	.byte 0x00, 0x00
_0814C888: .4byte 0x03001038
_0814C88C: .4byte 0x0819832C
_0814C890: .4byte 0x08198220
_0814C894:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814C93C
	movs r1, #0xBE
	lsls r1, r1, #0x01
	adds r7, r5, r1
	ldrh r0, [r7, #0x00]
	cmp r0, #0x08
	bne _0814C93C
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x00
	beq _0814C8C8
	b _0814C9D6
_0814C8C8:
	movs r4, #0xBC
	lsls r4, r4, #0x01
	adds r0, r5, r4
	ldrh r1, [r0, #0x00]
	subs r4, #0x20
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	adds r0, #0x37
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _0814C902
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r4, #0x0C
	strb r4, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	strh r4, [r7, #0x00]
	b _0814C9D6
_0814C902:
	ldr r2, _0814C930 @ =0x03001038
	ldr r0, _0814C934 @ =0x0819832C
	ldr r1, _0814C938 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x0C
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x0C
	strh r0, [r7, #0x00]
	b _0814C9D6
_0814C930: .4byte 0x03001038
_0814C934: .4byte 0x0819832C
_0814C938: .4byte 0x08198220
_0814C93C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _0814C9A0
	movs r3, #0xBE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	cmp r0, #0x0C
	bne _0814C990
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0814C990
	adds r0, r2, #0x0
	adds r0, #0x20
	movs r4, #0x2A
	ldsh r1, [r2, r4]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0814C990
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0814C98C @ =0x0814C9E9
	mov r1, r8
	str r0, [r1, #0x00]
	b _0814C9D6
_0814C98C: .4byte sub_814C9E8
_0814C990:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	bne _0814C9D6
_0814C9A0:
	movs r3, #0xBE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	cmp r0, #0x0C
	bne _0814C9D6
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814C9D6
	adds r0, r1, #0x0
	adds r0, #0x20
	movs r2, #0x2A
	ldsh r1, [r1, r2]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0814C9D6
	ldr r0, _0814C9E4 @ =0x0814CC85
	mov r3, r8
	str r0, [r3, #0x00]
_0814C9D6:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C9E4: .4byte sub_814CC84
	thumb_func_start sub_814C9E8
sub_814C9E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r1, #0x0
	mov r8, r2
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r6, [r0, #0x00]
	ldr r2, _0814CA54 @ =0x083A05EC
	ldr r1, _0814CA58 @ =0x00000216
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
	ldrb r4, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x30]
	ldr r0, _0814CA5C @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	cmp r4, #0x01
	beq _0814CA78
	cmp r4, #0x01
	bgt _0814CA60
	cmp r4, #0x00
	beq _0814CA6A
	b _0814CB78
	.byte 0x00, 0x00
_0814CA54: .4byte 0x083A05EC
_0814CA58: .4byte 0x00000216
_0814CA5C: .4byte 0x0000020D
_0814CA60:
	cmp r4, #0x02
	beq _0814CA90
	cmp r4, #0x03
	beq _0814CAA8
	b _0814CB78
_0814CA6A:
	ldr r1, _0814CA74 @ =0x00000242
	adds r0, r6, r1
	strh r4, [r0, #0x00]
	negs r1, r3
	b _0814CA80
_0814CA74: .4byte 0x00000242
_0814CA78:
	ldr r1, _0814CA8C @ =0x00000242
	adds r0, r6, r1
	movs r1, #0x00
	strh r3, [r0, #0x00]
_0814CA80:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814CABA
	.byte 0x00, 0x00
_0814CA8C: .4byte 0x00000242
_0814CA90:
	ldr r1, _0814CAA4 @ =0x00000242
	adds r0, r6, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r3, [r0, #0x00]
	b _0814CABA
	.byte 0x00, 0x00
_0814CAA4: .4byte 0x00000242
_0814CAA8:
	negs r1, r3
	ldr r2, _0814CADC @ =0x00000242
	adds r0, r6, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r6, r1
	strh r2, [r0, #0x00]
_0814CABA:
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	cmp r4, #0x01
	beq _0814CAF4
	cmp r4, #0x01
	bgt _0814CAE0
	cmp r4, #0x00
	beq _0814CAEA
	b _0814CB06
_0814CADC: .4byte 0x00000242
_0814CAE0:
	cmp r4, #0x02
	beq _0814CAFA
	cmp r4, #0x03
	beq _0814CB02
	b _0814CB06
_0814CAEA:
	ldr r0, _0814CAF0 @ =0xFFFFFF00
	adds r2, r2, r0
	b _0814CB06
_0814CAF0: .4byte 0xFFFFFF00
_0814CAF4:
	movs r0, #0xA8
	lsls r0, r0, #0x05
	b _0814CB04
_0814CAFA:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r2, r2, r0
	b _0814CB06
_0814CB02:
	ldr r0, _0814CB84 @ =0xFFFFEB00
_0814CB04:
	adds r1, r1, r0
_0814CB06:
	ldr r3, [r7, #0x14]
	movs r0, #0xC0
	lsls r0, r0, #0x03
	adds r3, r3, r0
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	ldr r2, _0814CB88 @ =0x00000272
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_801E150
	adds r4, r7, r4
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0814CB8C @ =0x0814CB91
	mov r1, r8
	str r0, [r1, #0x00]
_0814CB78:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814CB84: .4byte 0xFFFFEB00
_0814CB88: .4byte 0x00000272
_0814CB8C: .4byte sub_814CB90
	thumb_func_start sub_814CB90
sub_814CB90:
	push {r4, r5, r6, lr}
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	ldr r2, _0814CC64 @ =0x03001038
	ldr r0, _0814CC68 @ =0x0819832C
	ldr r1, _0814CC6C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _0814CC70 @ =0x00000282
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814CBD8
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814CBD8:
	ldr r1, _0814CC74 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0814CC78 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0814CC3C
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814CC3C
	ldr r0, [r4, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _0814CC3C
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, _0814CC7C @ =0x02000001
	ands r0, r1
	cmp r0, r1
	beq _0814CC5C
_0814CC3C:
	ldr r0, _0814CC80 @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, [r6, #0x04]
	str r0, [r6, #0x00]
_0814CC5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814CC64: .4byte 0x03001038
_0814CC68: .4byte 0x0819832C
_0814CC6C: .4byte 0x08198220
_0814CC70: .4byte 0x00000282
_0814CC74: .4byte 0x00000242
_0814CC78: .4byte 0x00000216
_0814CC7C: .4byte 0x02000001
_0814CC80: .4byte 0x0000020D
	thumb_func_start sub_814CC84
sub_814CC84:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r1, #0x0
	mov r8, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	ldr r0, _0814CCD4 @ =0x0000020D
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0814CCDC
	ldr r0, [r6, #0x0C]
	ldr r2, _0814CCD8 @ =0xFFFFFD00
	b _0814CCE2
	.byte 0x00, 0x00
_0814CCD4: .4byte 0x0000020D
_0814CCD8: .4byte 0xFFFFFD00
_0814CCDC:
	ldr r0, [r6, #0x0C]
	movs r2, #0xC0
	lsls r2, r2, #0x02
_0814CCE2:
	adds r1, r0, r2
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	movs r0, #0xC8
	lsls r0, r0, #0x05
	adds r3, r3, r0
	ldr r0, [r6, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #0x05
	strh r1, [r0, #0x00]
	ldr r2, _0814CD9C @ =0x00000272
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r1, _0814CDA0 @ =0x0000027A
	adds r0, r5, r1
	movs r1, #0xA0
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x38]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x48
	adds r0, r6, r2
	ldr r3, [r0, #0x00]
	ldrb r1, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
	adds r2, r5, r2
	ldr r0, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r4, [sp, #0x000]
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_801E150
	ldr r0, _0814CDA4 @ =0x0000020E
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814CDA8 @ =0x0814CDAD
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814CD9C: .4byte 0x00000272
_0814CDA0: .4byte 0x0000027A
_0814CDA4: .4byte 0x0000020E
_0814CDA8: .4byte sub_814CDAC
	thumb_func_start sub_814CDAC
sub_814CDAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r4, [r0, #0x00]
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	ldr r2, [r0, #0x18]
	adds r1, r1, r2
	adds r5, r0, #0x0
	cmp r3, r1
	blt _0814CDEA
	adds r5, r4, #0x0
_0814CDEA:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r3, r12
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x23
	ldrb r0, [r2, #0x00]
	cmp r0, #0x04
	bls _0814CE34
	movs r3, #0x2A
	ldsh r0, [r1, r3]
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814CE34
	movs r0, #0x06
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814CE34:
	ldr r0, _0814CED8 @ =0x00000216
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0814CE88
	mov r0, r12
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	bne _0814CE88
	movs r0, #0x83
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldr r1, _0814CEDC @ =0x02000001
	ands r0, r1
	cmp r0, r1
	bne _0814CE88
	mov r1, r12
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x18]
	adds r2, r2, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r3, #0xF0
	lsls r3, r3, #0x08
	adds r0, r0, r3
	cmp r2, r0
	bge _0814CE88
	mov r0, r12
	adds r0, #0x52
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _0814CE88
	cmp r0, #0x9F
	ble _0814CECC
_0814CE88:
	mov r0, r12
	movs r1, #0x00
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x3C
	ldrb r0, [r0, #0x00]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814CEE0 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _0814CEE4 @ =0x0814CEE9
	str r0, [r1, #0x0C]
_0814CECC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814CED8: .4byte 0x00000216
_0814CEDC: .4byte 0x02000001
_0814CEE0: .4byte sub_813B1E8
_0814CEE4: .4byte sub_814CEE8
	thumb_func_start sub_814CEE8
sub_814CEE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x58
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814CFEC
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r2, _0814CFA8 @ =0x00000242
	adds r2, r2, r4
	mov r9, r2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	ldr r1, [r4, #0x0C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _0814CF3C
	ldr r2, _0814CFAC @ =0x00000FFF
	adds r1, r1, r2
_0814CF3C:
	asrs r7, r1, #0x0C
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _0814CF5C
	ldr r2, _0814CFAC @ =0x00000FFF
	adds r0, r0, r2
_0814CF5C:
	asrs r2, r0, #0x0C
	add r3, sp, #0x00C
	add r0, sp, #0x010
	str r0, [sp, #0x000]
	add r0, sp, #0x014
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_80457E8
	ldr r0, [sp, #0x00C]
	ldr r1, _0814CFB0 @ =0x7FFFFFFF
	cmp r0, r1
	beq _0814CF84
	ldr r0, [sp, #0x010]
	cmp r0, r1
	beq _0814CFB4
	ldr r0, [sp, #0x014]
	cmp r0, r1
	bne _0814CFB4
_0814CF84:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x0C]
	subs r0, r0, r1
	str r0, [r6, #0x0C]
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	b _0814CFDC
_0814CFA8: .4byte 0x00000242
_0814CFAC: .4byte 0x00000FFF
_0814CFB0: .4byte 0x7FFFFFFF
_0814CFB4:
	ldr r1, _0814CFE8 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r6, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
_0814CFDC:
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x14]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	b _0814D006
_0814CFE8: .4byte 0x00000242
_0814CFEC:
	ldr r0, [r5, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r6, #0x0C]
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	movs r2, #0xF0
	lsls r2, r2, #0x08
	adds r0, r0, r2
_0814D006:
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r2, r6, r1
	movs r4, #0xAC
	lsls r4, r4, #0x01
	add r4, r10
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x3E]
	str r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	adds r0, #0x42
	ldrb r1, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814D064 @ =0x0814D069
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D064: .4byte sub_814D068
	thumb_func_start sub_814D068
sub_814D068:
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r4, [r0, #0x00]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0814D0D0
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0814D126
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x80
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x02
	bl _call_via_r2
	b _0814D126
_0814D0D0:
	ldr r0, _0814D12C @ =0x00000212
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	movs r6, #0xC0
	lsls r6, r6, #0x01
	ands r6, r0
	cmp r6, #0x00
	bne _0814D126
	ldr r1, _0814D130 @ =0x0000020D
	adds r2, r3, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x0C]
	str r0, [r4, #0x0C]
	ldr r0, [r3, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r3, #0x18]
	str r0, [r4, #0x18]
	ldrh r1, [r5, #0x00]
	ldr r0, _0814D134 @ =0xFFFFFE7F
	ands r0, r1
	strh r0, [r5, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r3, r2
	strh r6, [r0, #0x00]
	ldr r0, _0814D138 @ =0x0000020E
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, [r7, #0x08]
	str r0, [r7, #0x00]
_0814D126:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D12C: .4byte 0x00000212
_0814D130: .4byte 0x0000020D
_0814D134: .4byte 0xFFFFFE7F
_0814D138: .4byte 0x0000020E
	.byte 0x30, 0xB5, 0x81, 0xB0, 0x0C, 0x1C, 0x29, 0x48, 0x22, 0x18, 0x11, 0x78, 0x11, 0x20, 0x40, 0x42
	.byte 0x08, 0x40, 0x10, 0x70, 0x20, 0x1C, 0x00, 0xF0, 0x09, 0xFC, 0xA5, 0x21, 0x89, 0x00, 0x60, 0x18
	.byte 0x00, 0x68, 0x01, 0x22, 0x52, 0x42, 0x00, 0x21, 0x00, 0x91, 0x09, 0x21, 0x00, 0x23, 0xD0, 0xF6
	.byte 0xF1, 0xFF, 0x01, 0x25, 0x00, 0x95, 0x20, 0x1C, 0x02, 0x21, 0x00, 0x22, 0x10, 0x23, 0xF9, 0xF6
	.byte 0x89, 0xFC, 0x00, 0x95, 0x20, 0x1C, 0x02, 0x21, 0x00, 0x22, 0x10, 0x23, 0xF9, 0xF6, 0xD2, 0xFC
	.byte 0x20, 0x1C, 0xF9, 0xF6, 0xC3, 0xFD, 0x20, 0x1C, 0xFA, 0xF6, 0x08, 0xFC, 0x20, 0x1C, 0xFA, 0xF6
	.byte 0xFB, 0xFB, 0x20, 0x1C, 0x00, 0x21, 0xFA, 0xF6, 0x3B, 0xFA, 0x83, 0x20, 0x80, 0x00, 0x22, 0x18
	.byte 0x11, 0x78, 0x7F, 0x20, 0x08, 0x40, 0x41, 0x21, 0x49, 0x42, 0x08, 0x40, 0x20, 0x31, 0x08, 0x40
	.byte 0x10, 0x70, 0x0B, 0x49, 0x62, 0x18, 0x11, 0x78, 0x05, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70
	.byte 0xCC, 0x20, 0x40, 0x00, 0x21, 0x18, 0x07, 0x48, 0x08, 0x60, 0xD0, 0x21, 0x49, 0x00, 0x64, 0x18
	.byte 0x05, 0x48, 0x20, 0x60, 0x01, 0xB0, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x3E, 0x03, 0x00, 0x00
	.byte 0x0D, 0x02, 0x00, 0x00, 0x81, 0xB3, 0x13, 0x08, 0xF9, 0xD1, 0x14, 0x08
	thumb_func_start sub_814D1F8
sub_814D1F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D288
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x22
	movs r3, #0x10
	bl sub_8139BB0
	ldr r2, _0814D290 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D288
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x20
	movs r5, #0x80
	lsls r5, r5, #0x01
	movs r4, #0x00
	ldsb r4, [r0, r4]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8046A90
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8046B30
	adds r0, r6, #0x0
	bl sub_8046D18
	ldr r0, _0814D294 @ =0x0814D299
	str r0, [r7, #0x00]
_0814D288:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D290: .4byte 0x00007FFF
_0814D294: .4byte sub_814D298
	thumb_func_start sub_814D298
sub_814D298:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D2BE
	adds r0, r4, #0x0
	bl sub_80479A8
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814D2BE:
	adds r0, r4, #0x0
	bl sub_8047A1C
	lsls r0, r0, #0x18
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r5, r4, r1
	cmp r0, #0x00
	bne _0814D2DE
	adds r0, r4, #0x0
	bl sub_8047994
	ldrb r0, [r5, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r5, #0x00]
_0814D2DE:
	ldrb r0, [r5, #0x00]
	lsls r1, r0, #0x1D
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r0, r1
	cmp r0, #0x00
	beq _0814D344
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
	ldr r1, _0814D34C @ =0x0000020D
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x00]
	ldr r0, _0814D350 @ =0x00000272
	adds r1, r4, r0
	movs r0, #0xE0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0814D354 @ =0x00000276
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _0814D358 @ =0x0814D35D
	str r0, [r6, #0x00]
_0814D344:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814D34C: .4byte 0x0000020D
_0814D350: .4byte 0x00000272
_0814D354: .4byte 0x00000276
_0814D358: .4byte sub_814D35C
	thumb_func_start sub_814D35C
sub_814D35C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	ldr r0, [r4, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814D39E
	ldr r0, [r4, #0x2C]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0814D3B8
_0814D39E:
	movs r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x0E
	movs r3, #0x02
	bl sub_804173C
	ldr r0, _0814D3B4 @ =0x0814DC6D
	b _0814D4FC
	.byte 0x00, 0x00
_0814D3B4: .4byte sub_814DC6C
_0814D3B8:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0x00
	beq _0814D424
	cmp r1, #0x00
	bgt _0814D3D8
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0814D3E2
	b _0814D42A
_0814D3D8:
	cmp r1, #0x01
	beq _0814D428
	cmp r1, #0x02
	beq _0814D424
	b _0814D42A
_0814D3E2:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x28
	movs r3, #0x08
	bl sub_8139BB0
	add r1, sp, #0x004
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	movs r2, #0x00
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, _0814D420 @ =0x00007FFF
	str r2, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D500
	b _0814D42A
_0814D420: .4byte 0x00007FFF
_0814D424:
	ldr r6, [r4, #0x28]
	b _0814D42A
_0814D428:
	ldr r6, [r4, #0x2C]
_0814D42A:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x24
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _0814D474 @ =0x000003E9
	bl sub_81DD77C
	lsls r1, r4, #0x02
	adds r1, r1, r4
	lsls r1, r1, #0x01
	cmp r0, r1
	bhi _0814D478
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x00
	ldsh r3, [r0, r1]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	b _0814D4AC
_0814D474: .4byte 0x000003E9
_0814D478:
	ldr r1, [r5, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	cmp r2, #0x00
	bge _0814D484
	negs r2, r2
_0814D484:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _0814D490
	negs r1, r1
_0814D490:
	cmp r2, r1
	blt _0814D4BA
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r2, #0x00
	ldsh r3, [r0, r2]
	ldr r1, [r6, #0x0C]
	ldr r2, [r5, #0x10]
_0814D4AC:
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	b _0814D4DE
_0814D4BA:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x00
	ldsh r3, [r0, r1]
	ldr r1, [r5, #0x0C]
	ldr r2, [r6, #0x10]
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
_0814D4DE:
	movs r1, #0xC2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_814DB8C
	ldr r0, _0814D510 @ =0x0814D515
_0814D4FC:
	mov r2, r9
	str r0, [r2, #0x00]
_0814D500:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814D510: .4byte sub_814D514
	thumb_func_start sub_814D514
sub_814D514:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	adds r0, r4, #0x0
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r4, r1
	str r1, [sp, #0x018]
	ldr r2, _0814D5C4 @ =0x00000272
	adds r1, r4, r2
	ldrh r5, [r1, #0x00]
	mov r8, r5
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrh r5, [r2, #0x00]
	mov r9, r5
	adds r0, #0x02
	adds r3, r4, r0
	ldrh r5, [r3, #0x00]
	mov r10, r5
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r2, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B8A8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D582
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B878
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D5A4
_0814D582:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B8A8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D5D0
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B878
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D5D0
_0814D5A4:
	ldr r2, _0814D5C4 @ =0x00000272
	adds r0, r4, r2
	mov r5, r8
	strh r5, [r0, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	mov r2, r9
	strh r2, [r0, #0x00]
	ldr r5, _0814D5C8 @ =0x00000276
	adds r0, r4, r5
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r0, _0814D5CC @ =0x0814D671
	b _0814D65A
	.byte 0x00, 0x00
_0814D5C4: .4byte 0x00000272
_0814D5C8: .4byte 0x00000276
_0814D5CC: .4byte sub_814D670
_0814D5D0:
	ldr r2, _0814D644 @ =0x00000272
	adds r0, r4, r2
	mov r5, r8
	strh r5, [r0, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	mov r2, r9
	strh r2, [r0, #0x00]
	ldr r5, _0814D648 @ =0x00000276
	adds r0, r4, r5
	mov r1, r10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D65C
	adds r0, r4, #0x0
	bl sub_814DCC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D650
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	movs r5, #0x08
	ldsh r3, [r0, r5]
	ldr r1, [sp, #0x014]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r1, [r0, #0x00]
	ldr r5, [sp, #0x014]
	adds r2, #0x04
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_814DB8C
	ldr r0, _0814D64C @ =0x0814DD15
	b _0814D65A
_0814D644: .4byte 0x00000272
_0814D648: .4byte 0x00000276
_0814D64C: .4byte sub_814DD14
_0814D650:
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_814DB8C
	ldr r0, _0814D66C @ =0x0814D35D
_0814D65A:
	str r0, [r7, #0x00]
_0814D65C:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D66C: .4byte sub_814D35C
	thumb_func_start sub_814D670
sub_814D670:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	bl sub_814DA18
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	mov r6, sp
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D6A6
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814D6AA
_0814D6A6:
	mov r0, sp
	ldrb r0, [r0, #0x00]
_0814D6AA:
	strb r0, [r6, #0x00]
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814D6E2
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
	b _0814D6E6
_0814D6E2:
	movs r3, #0x01
	negs r3, r3
_0814D6E6:
	adds r2, r5, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r4, #0x08
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r3, _0814D780 @ =0x03001038
	ldr r1, _0814D784 @ =0x0819832C
	ldr r2, _0814D788 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	ands r4, r0
	movs r0, #0x01
	orrs r4, r0
	strb r4, [r1, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x28]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814D78C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814D78E
	.byte 0x00, 0x00
_0814D780: .4byte 0x03001038
_0814D784: .4byte 0x0819832C
_0814D788: .4byte 0x08198220
_0814D78C:
	movs r0, #0xFF
_0814D78E:
	strb r0, [r5, #0x02]
	ldr r0, _0814D7A4 @ =0x0814D7A9
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814D7A4: .4byte sub_814D7A8
	thumb_func_start sub_814D7A8
sub_814D7A8:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0814D7E4
	ldr r2, _0814D7DC @ =0x00000272
	adds r0, r3, r2
	movs r1, #0xC0
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814D7E0 @ =0x00000276
	adds r1, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	b _0814D804
	.byte 0x00, 0x00
_0814D7DC: .4byte 0x00000272
_0814D7E0: .4byte 0x00000276
_0814D7E4:
	cmp r0, #0x00
	beq _0814D804
	ldr r2, _0814D830 @ =0x00000272
	adds r1, r3, r2
	movs r0, #0xC0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r3, r2
	strh r1, [r0, #0x00]
_0814D804:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814D82A
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814D834 @ =0x0814DCFD
	str r0, [r4, #0x00]
_0814D82A:
	pop {r4}
	pop {r0}
	bx r0
_0814D830: .4byte 0x00000272
_0814D834: .4byte sub_814DCFC
	thumb_func_start sub_814D838
sub_814D838:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r4, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0814D880
	ldr r2, _0814D87C @ =0x00000272
	adds r1, r4, r2
	movs r0, #0xC0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r2, #0x04
	adds r1, r4, r2
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	b _0814D8A0
_0814D87C: .4byte 0x00000272
_0814D880:
	cmp r0, #0x01
	bhi _0814D95C
	ldr r0, _0814D94C @ =0x00000272
	adds r1, r4, r0
	movs r0, #0xC0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	ldr r2, _0814D950 @ =0x00000276
	adds r0, r4, r2
	strh r1, [r0, #0x00]
_0814D8A0:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r1, [r3, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _0814D95C
	movs r0, #0x2A
	ldsh r2, [r1, r0]
	adds r0, r1, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bge _0814D8C6
	negs r0, r0
_0814D8C6:
	cmp r2, r0
	bgt _0814D95C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r3, #0x00
	bl sub_801E150
	ldr r2, _0814D94C @ =0x00000272
	adds r1, r4, r2
	movs r0, #0xE0
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, #0x04
	adds r1, r4, r2
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_814DCC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D958
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	ldr r0, _0814D954 @ =0x0814DD15
	b _0814D95A
_0814D94C: .4byte 0x00000272
_0814D950: .4byte 0x00000276
_0814D954: .4byte sub_814DD14
_0814D958:
	ldr r0, _0814D964 @ =0x0814D35D
_0814D95A:
	str r0, [r6, #0x00]
_0814D95C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D964: .4byte sub_814D35C
	thumb_func_start sub_814D968
sub_814D968:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
	movs r0, #0x84
	lsls r0, r0, #0x01
	adds r1, r6, r0
	adds r0, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x10]
	movs r0, #0x01
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x12]
	adds r4, #0x02
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x14]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x16]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x18]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x1A]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x1C]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x1E]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x20]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x22]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x24]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x26]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x28]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x2A]
	adds r4, #0x01
	movs r0, #0x00
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x2C]
	movs r0, #0x01
	ldsb r0, [r4, r0]
	strh r0, [r5, #0x2E]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814DA18
sub_814DA18:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	mov r6, sp
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814DA44
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814DA48
_0814DA44:
	mov r0, sp
	ldrb r0, [r0, #0x00]
_0814DA48:
	strb r0, [r6, #0x00]
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814DA9C @ =0x00000242
	adds r3, r5, r0
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0814DAA0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0814DAA4
	.byte 0x00, 0x00
_0814DA9C: .4byte 0x00000242
_0814DAA0:
	movs r3, #0x01
	negs r3, r3
_0814DAA4:
	adds r2, r5, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r3, _0814DB1C @ =0x03001038
	ldr r1, _0814DB20 @ =0x0819832C
	ldr r2, _0814DB24 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x28]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814DB28
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814DB2A
	.byte 0x00, 0x00
_0814DB1C: .4byte 0x03001038
_0814DB20: .4byte 0x0819832C
_0814DB24: .4byte 0x08198220
_0814DB28:
	movs r0, #0xFF
_0814DB2A:
	strb r0, [r5, #0x02]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_814DB34
sub_814DB34:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	movs r2, #0x00
	ldr r0, [r4, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	str r2, [sp, #0x000]
	movs r2, #0x05
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x00]
	adds r1, #0x20
	ldrb r0, [r1, #0x00]
	negs r0, r0
	strb r0, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814DB8C
sub_814DB8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	mov r8, r6
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	mov r10, r1
	movs r1, #0x00
	mov r9, r1
	str r1, [sp, #0x000]
	movs r1, #0x09
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	cmp r6, #0x01
	beq _0814DC16
	cmp r6, #0x01
	bgt _0814DBF8
	cmp r6, #0x00
	beq _0814DC00
	b _0814DC5A
_0814DBF8:
	mov r1, r8
	cmp r1, #0x02
	beq _0814DC2C
	b _0814DC5A
_0814DC00:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x10]
	b _0814DC56
_0814DC16:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x18]
	b _0814DC56
_0814DC2C:
	ldr r0, [r4, #0x00]
	mov r1, r9
	str r1, [sp, #0x000]
	movs r1, #0x09
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x24]
_0814DC56:
	adds r1, #0x20
	strb r0, [r1, #0x00]
_0814DC5A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814DC6C
sub_814DC6C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0814DC94
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_813A5C8
	b _0814DCA0
_0814DC94:
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_813A818
_0814DCA0:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814DCC0 @ =0x0814DDF9
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814DCC0: .4byte sub_814DDF8
	thumb_func_start sub_814DCC4
sub_814DCC4:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814DCF8 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0814DCEC
	movs r1, #0x01
_0814DCEC:
	adds r0, r1, #0x0
	add sp, #0x010
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0814DCF8: .4byte 0x00007FFF
	thumb_func_start sub_814DCFC
sub_814DCFC:
	push {r4, lr}
	adds r4, r2, #0x0
	bl sub_814DB34
	ldr r0, _0814DD10 @ =0x0814D839
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814DD10: .4byte sub_814D838
	thumb_func_start sub_814DD14
sub_814DD14:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814DD28
	ldr r0, _0814DD30 @ =0x0814D35D
	str r0, [r4, #0x00]
_0814DD28:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814DD30: .4byte sub_814D35C
	.byte 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x0C, 0x1C, 0x12, 0x48, 0x22, 0x18, 0x10, 0x78, 0x10, 0x21
	.byte 0x08, 0x43, 0x10, 0x70, 0x20, 0x1C, 0xEB, 0xF7, 0xA9, 0xFE, 0x0F, 0x49, 0x62, 0x18, 0x10, 0x78
	.byte 0x08, 0x21, 0x08, 0x43, 0x10, 0x70, 0x20, 0x1C, 0xFE, 0xF7, 0x76, 0xF9, 0xCC, 0x22, 0x52, 0x00
	.byte 0xA1, 0x18, 0x0A, 0x48, 0x08, 0x60, 0xD0, 0x21, 0x49, 0x00, 0x60, 0x18, 0x08, 0x49, 0x01, 0x60
	.byte 0x0C, 0x32, 0xA0, 0x18, 0x01, 0x60, 0xD4, 0x20, 0x40, 0x00, 0x24, 0x18, 0x21, 0x60, 0x10, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x3E, 0x03, 0x00, 0x00, 0x3D, 0x03, 0x00, 0x00, 0x81, 0xB3, 0x13, 0x08
	.byte 0xC5, 0xC5, 0x14, 0x08, 0x10, 0xB5, 0x0C, 0x1C, 0x12, 0x48, 0x22, 0x18, 0x10, 0x78, 0x10, 0x21
	.byte 0x08, 0x43, 0x10, 0x70, 0x20, 0x1C, 0xEB, 0xF7, 0x79, 0xFE, 0x0F, 0x49, 0x62, 0x18, 0x10, 0x78
	.byte 0x08, 0x21, 0x08, 0x43, 0x10, 0x70, 0x20, 0x1C, 0xFE, 0xF7, 0x46, 0xF9, 0xCC, 0x22, 0x52, 0x00
	.byte 0xA1, 0x18, 0x0A, 0x48, 0x08, 0x60, 0xD0, 0x21, 0x49, 0x00, 0x60, 0x18, 0x08, 0x49, 0x01, 0x60
	.byte 0x0C, 0x32, 0xA0, 0x18, 0x01, 0x60, 0xD4, 0x20, 0x40, 0x00, 0x24, 0x18, 0x21, 0x60, 0x10, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x3E, 0x03, 0x00, 0x00, 0x3D, 0x03, 0x00, 0x00, 0x81, 0xB3, 0x13, 0x08
	.byte 0xCD, 0xC0, 0x14, 0x08
	thumb_func_start sub_814DDF8
sub_814DDF8:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r3, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814DE30
	ldr r0, [r3, #0x2C]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814DE30
	ldr r0, _0814DE2C @ =0x0814D35D
	b _0814DE3E
	.byte 0x00, 0x00
_0814DE2C: .4byte sub_814D35C
_0814DE30:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814DE40
	ldr r0, _0814DE48 @ =0x0814DC6D
_0814DE3E:
	str r0, [r4, #0x00]
_0814DE40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814DE48: .4byte sub_814DC6C
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x80, 0x46, 0x0D, 0x1C, 0xD1, 0x21, 0x89, 0x00, 0x68, 0x18
	.byte 0x07, 0x68, 0x3F, 0x48, 0x2A, 0x18, 0x10, 0x78, 0x10, 0x21, 0x08, 0x43, 0x10, 0x70, 0xA5, 0x21
	.byte 0x89, 0x00, 0x6E, 0x18, 0x30, 0x68, 0x21, 0x30, 0x00, 0x78, 0x01, 0x28, 0x0D, 0xD1, 0x39, 0x4A
	.byte 0xA8, 0x18, 0xA0, 0x22, 0x12, 0x01, 0x02, 0x80, 0x9D, 0x20, 0x80, 0x00, 0x29, 0x18, 0x80, 0x20
	.byte 0x40, 0x01, 0x08, 0x80, 0x34, 0x49, 0x68, 0x18, 0x02, 0x80, 0x28, 0x1C, 0x00, 0xF0, 0x6E, 0xFA
	.byte 0x85, 0x20, 0x80, 0x00, 0x2A, 0x18, 0x11, 0x78, 0x08, 0x20, 0x40, 0x42, 0x08, 0x40, 0x01, 0x24
	.byte 0x20, 0x43, 0x10, 0x70, 0x2D, 0x49, 0x6A, 0x18, 0x10, 0x78, 0x08, 0x21, 0x08, 0x43, 0x10, 0x70
	.byte 0x38, 0x1C, 0x00, 0xF0, 0xF1, 0xFA, 0x33, 0x68, 0xDA, 0x22, 0x52, 0x00, 0xA8, 0x18, 0x00, 0x68
	.byte 0x08, 0x21, 0x41, 0x56, 0x21, 0x40, 0x89, 0x01, 0x5A, 0x7C, 0x41, 0x20, 0x40, 0x42, 0x10, 0x40
	.byte 0x08, 0x43, 0x58, 0x74, 0x30, 0x68, 0x21, 0x30, 0x00, 0x78, 0xDF, 0x22, 0x52, 0x00, 0xA9, 0x18
	.byte 0x00, 0x24, 0x08, 0x80, 0xEE, 0x20, 0x40, 0x00, 0x29, 0x18, 0xE8, 0x68, 0x08, 0x60, 0x22, 0x32
	.byte 0xA9, 0x18, 0x28, 0x69, 0x08, 0x60, 0x4C, 0xF0, 0x15, 0xF8, 0x01, 0x1C, 0x04, 0x20, 0x8F, 0xF0
	.byte 0x37, 0xFC, 0xE8, 0x22, 0x52, 0x00, 0xA9, 0x18, 0x08, 0x80, 0xD0, 0x21, 0x49, 0x00, 0x78, 0x18
	.byte 0x04, 0x60, 0x38, 0x3A, 0xA9, 0x18, 0x12, 0x48, 0x08, 0x60, 0xD0, 0x20, 0x40, 0x00, 0x2A, 0x18
	.byte 0x10, 0x4B, 0x13, 0x60, 0x7C, 0x38, 0x40, 0x44, 0x01, 0x88, 0x0F, 0x48, 0x81, 0x42, 0x09, 0xD1
	.byte 0x3B, 0x30, 0x29, 0x18, 0x0F, 0x20, 0x08, 0x80, 0x0C, 0x48, 0x10, 0x60, 0xD6, 0x21, 0x49, 0x00
	.byte 0x68, 0x18, 0x03, 0x60, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x3E, 0x03, 0x00, 0x00, 0x72, 0x02, 0x00, 0x00, 0x76, 0x02, 0x00, 0x00, 0x3D, 0x03, 0x00, 0x00
	.byte 0x7D, 0xDF, 0x14, 0x08, 0x61, 0xE0, 0x14, 0x08, 0x97, 0x01, 0x00, 0x00, 0xE9, 0xB1, 0x13, 0x08
	thumb_func_start sub_814DF7C
sub_814DF7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	movs r2, #0x58
	adds r2, r2, r6
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldr r3, [r2, #0x00]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl _call_via_r3
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _0814E04A
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814E022
	ldr r1, _0814E058 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0814E022
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	mov r12, r0
	ands r0, r1
	cmp r0, #0x00
	beq _0814E022
	ldr r2, [r5, #0x0C]
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r1, r12
	str r1, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E04A
_0814E022:
	movs r4, #0xA4
	lsls r4, r4, #0x01
	mov r2, r8
	adds r1, r2, r4
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0814E05C @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_8150590
	add r4, r9
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_814E410
_0814E04A:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E058: .4byte 0x00000216
_0814E05C: .4byte 0x0000020D
	thumb_func_start sub_814E060
sub_814E060:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x010
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E0FC
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	adds r0, r6, #0x0
	adds r1, r2, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E098
	ldr r0, _0814E094 @ =0x081505A9
	b _0814E0FA
	.byte 0x00, 0x00
_0814E094: .4byte sub_81505A8
_0814E098:
	movs r1, #0x00
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814E0A2
	movs r1, #0x01
_0814E0A2:
	strb r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r3, _0814E0DC @ =0x00000352
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0814E0E4
	adds r0, r6, #0x0
	adds r1, r2, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E0E4
	ldr r0, _0814E0E0 @ =0x081505A9
	b _0814E0FA
	.byte 0x00, 0x00
_0814E0DC: .4byte 0x00000352
_0814E0E0: .4byte sub_81505A8
_0814E0E4:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0814E0FC
	ldr r0, _0814E104 @ =0x0814E109
_0814E0FA:
	str r0, [r7, #0x00]
_0814E0FC:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E104: .4byte sub_814E108
	thumb_func_start sub_814E108
sub_814E108:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r1, #0x0
	mov r8, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r6, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	movs r3, #0x00
	strb r0, [r1, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r0, r6, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0814E162
	cmp r0, #0x01
	beq _0814E174
	b _0814E184
_0814E162:
	ldr r0, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x04
	movs r3, #0x00
	bl sub_801E150
	b _0814E184
_0814E174:
	ldr r0, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r3, #0x00
	bl sub_801E150
_0814E184:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814E1B8 @ =0x08150619
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814E1B8: .4byte sub_8150618
	thumb_func_start sub_814E1BC
sub_814E1BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r10, r1
	add r4, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E2AA
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r1, #0xDF
	lsls r1, r1, #0x01
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0814E208
	cmp r0, #0x01
	beq _0814E24C
	b _0814E2B8
_0814E208:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814E2B8
	movs r1, #0x00
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814E220
	movs r1, #0x01
_0814E220:
	strb r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r2, _0814E248 @ =0x00000352
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0814E28A
	b _0814E29C
_0814E248: .4byte 0x00000352
_0814E24C:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814E2B8
	movs r1, #0x00
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814E264
	movs r1, #0x01
_0814E264:
	strb r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r2, _0814E294 @ =0x00000352
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	bne _0814E29C
_0814E28A:
	ldr r0, _0814E298 @ =0x0814E061
	mov r1, r8
	str r0, [r1, #0x00]
	b _0814E364
	.byte 0x00, 0x00
_0814E294: .4byte 0x00000352
_0814E298: .4byte sub_814E060
_0814E29C:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814E2B8
_0814E2AA:
	ldr r0, _0814E2B4 @ =0x0814E061
	mov r2, r8
	str r0, [r2, #0x00]
	b _0814E364
	.byte 0x00, 0x00
_0814E2B4: .4byte sub_814E060
_0814E2B8:
	movs r0, #0xB3
	lsls r0, r0, #0x01
	add r0, r9
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0814E2CC
	cmp r0, #0x01
	beq _0814E316
	b _0814E364
_0814E2CC:
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bgt _0814E2EC
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r1, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814E304
_0814E2EC:
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	negs r0, r0
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
_0814E304:
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	b _0814E364
_0814E316:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	ble _0814E364
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	bgt _0814E340
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r1, [r0, #0x00]
	ldr r2, _0814E33C @ =0x00000242
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814E356
_0814E33C: .4byte 0x00000242
_0814E340:
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _0814E374 @ =0x00000242
	adds r1, r6, r2
	strh r0, [r1, #0x00]
_0814E356:
	ldr r1, _0814E374 @ =0x00000242
	adds r0, r6, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x0C]
	adds r0, r0, r1
	str r0, [r6, #0x0C]
_0814E364:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E374: .4byte 0x00000242
	thumb_func_start sub_814E378
sub_814E378:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r2, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r7, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r7, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r6, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x08]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0A]
	adds r6, #0x02
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0C]
	adds r6, #0x01
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x0E]
	adds r6, #0x01
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x8C
	lsls r0, r0, #0x01
	adds r1, r7, r0
	adds r0, r6, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r1, r7, r0
	adds r0, r6, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r6, #0x08
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x28]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2A]
	adds r6, #0x02
	movs r0, #0x00
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2C]
	movs r0, #0x01
	ldsb r0, [r6, r0]
	strh r0, [r4, #0x2E]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814E410
sub_814E410:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r7, r0
	ldr r0, _0814E498 @ =0x0000020D
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814E49C @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _0814E4A0 @ =0x0814E061
	str r0, [r5, #0x0C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E498: .4byte 0x0000020D
_0814E49C: .4byte sub_813B1E8
_0814E4A0: .4byte sub_814E060
	thumb_func_start sub_814E4A4
sub_814E4A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r6, #0x04
	orrs r0, r6
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x08
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_801E68C
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r1, _0814E544 @ =0x0000027A
	adds r0, r4, r1
	movs r1, #0xC0
	lsls r1, r1, #0x03
	strh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814E548 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	adds r1, #0x1C
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814E54C @ =0x0000020E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r1, _0814E550 @ =0x0000020F
	adds r4, r4, r1
	ldrb r0, [r4, #0x00]
	orrs r0, r6
	strb r0, [r4, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814E544: .4byte 0x0000027A
_0814E548: .4byte 0x0000020D
_0814E54C: .4byte 0x0000020E
_0814E550: .4byte 0x0000020F
	thumb_func_start sub_814E554
sub_814E554:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x58
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r4, r5, r3
	cmp r1, #0x00
	bne _0814E5AA
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xB2
	lsls r1, r1, #0x02
	adds r2, r5, r1
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r1, r5, r3
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x18]
	str r0, [r1, #0x00]
	str r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r7, [r0, #0x20]
	b _0814E5C0
_0814E5AA:
	cmp r1, #0x01
	bne _0814E5C0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r7, [r0, #0x00]
_0814E5C0:
	movs r4, #0xB3
	lsls r4, r4, #0x01
	adds r0, r6, r4
	movs r1, #0x00
	ldsh r6, [r0, r1]
	cmp r6, #0x00
	beq _0814E5D4
	cmp r6, #0x01
	beq _0814E660
	b _0814E698
_0814E5D4:
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r4, [r0, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0814E628
	ldr r1, [r4, #0x0C]
	ldr r0, _0814E620 @ =0xFFFFEC00
	adds r1, r1, r0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r4, #0xB0
	lsls r4, r4, #0x04
	adds r3, r3, r4
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	negs r1, r7
	ldr r2, _0814E624 @ =0x00000242
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r5, r3
	strh r6, [r0, #0x00]
	b _0814E698
_0814E620: .4byte 0xFFFFEC00
_0814E624: .4byte 0x00000242
_0814E628:
	ldr r1, [r4, #0x0C]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r1, r1, r0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	movs r0, #0xB0
	lsls r0, r0, #0x04
	adds r3, r3, r0
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	ldr r1, _0814E65C @ =0x00000242
	adds r0, r5, r1
	strh r7, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r6, [r0, #0x00]
	b _0814E698
	.byte 0x00, 0x00
_0814E65C: .4byte 0x00000242
_0814E660:
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r2, r2, r4
	ldr r3, [r0, #0x14]
	movs r4, #0xB0
	lsls r4, r4, #0x04
	adds r3, r3, r4
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	str r6, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	ldr r1, _0814E6D4 @ =0x00000242
	adds r0, r5, r1
	strh r4, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r7, [r0, #0x00]
_0814E698:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	movs r4, #0x85
	lsls r4, r4, #0x02
	adds r2, r5, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814E6D4: .4byte 0x00000242
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0xB0, 0x0F, 0x1C, 0x90, 0x46
	.byte 0x1D, 0x4E, 0x1E, 0x4C, 0x1E, 0x48, 0x24, 0x1A, 0x32, 0x68, 0x12, 0x19, 0xF8, 0x68, 0x80, 0x25
	.byte 0x6D, 0x00, 0x29, 0x1C, 0x8C, 0xF0, 0xB8, 0xF9, 0x32, 0x68, 0x12, 0x19, 0x38, 0x69, 0x29, 0x1C
	.byte 0x8C, 0xF0, 0xB2, 0xF9, 0x32, 0x68, 0x12, 0x19, 0x78, 0x69, 0xB9, 0x69, 0x40, 0x18, 0x29, 0x1C
	.byte 0x8C, 0xF0, 0xAA, 0xF9, 0x32, 0x68, 0x12, 0x19, 0x41, 0x46, 0xC8, 0x68, 0x29, 0x1C, 0x8C, 0xF0
	.byte 0xA3, 0xF9, 0x32, 0x68, 0x12, 0x19, 0x43, 0x46, 0x18, 0x69, 0x29, 0x1C, 0x8C, 0xF0, 0x9C, 0xF9
	.byte 0x32, 0x68, 0x12, 0x19, 0x44, 0x46, 0x60, 0x69, 0xA1, 0x69, 0x40, 0x18, 0x29, 0x1C, 0x8C, 0xF0
	.byte 0x93, 0xF9, 0xDF, 0x21, 0x49, 0x00, 0x78, 0x18, 0x00, 0x22, 0x80, 0x5E, 0x00, 0x28, 0x09, 0xD0
	.byte 0x01, 0x28, 0x26, 0xD0, 0x2F, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08
	.byte 0x20, 0x82, 0x19, 0x08, 0xA5, 0x23, 0x9B, 0x00, 0xF8, 0x18, 0x00, 0x68, 0x41, 0x7C, 0x40, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x0A, 0xD0, 0xC8, 0x24, 0xE4, 0x01, 0xA1, 0x46, 0x00, 0x20, 0x00, 0x90
	.byte 0x80, 0x21, 0xC9, 0x00, 0x8A, 0x46, 0x52, 0x46, 0x01, 0x92, 0x14, 0xE0, 0x00, 0x23, 0x99, 0x46
	.byte 0xC8, 0x24, 0xE4, 0x01, 0x00, 0x94, 0x80, 0x20, 0xC0, 0x00, 0x82, 0x46, 0x51, 0x46, 0x01, 0x91
	.byte 0x09, 0xE0, 0x80, 0x22, 0xD2, 0x00, 0x91, 0x46, 0x4B, 0x46, 0x00, 0x93, 0x00, 0x24, 0xA2, 0x46
	.byte 0xC8, 0x20, 0xC0, 0x01, 0x01, 0x90, 0xFA, 0x68, 0x00, 0x99, 0x50, 0x18, 0x43, 0x46, 0xD9, 0x68
	.byte 0x88, 0x42, 0x1F, 0xDB, 0x4C, 0x46, 0x10, 0x1B, 0x88, 0x42, 0x1B, 0xDC, 0x3A, 0x69, 0x01, 0x99
	.byte 0x50, 0x18, 0x19, 0x69, 0x88, 0x42, 0x15, 0xDB, 0x53, 0x46, 0xD0, 0x1A, 0x88, 0x42, 0x11, 0xDC
	.byte 0x79, 0x69, 0xB8, 0x69, 0x0B, 0x18, 0x80, 0x24, 0xE4, 0x00, 0x1A, 0x19, 0x40, 0x46, 0x41, 0x69
	.byte 0x80, 0x69, 0x09, 0x18, 0x8A, 0x42, 0x05, 0xDB, 0x00, 0x22, 0x98, 0x1A, 0x88, 0x42, 0x01, 0xDC
	.byte 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x02, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_814E820
sub_814E820:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r1, r4, r2
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	bne _0814E884
	ldrb r0, [r0, #0x09]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0814E8A8
	ldr r2, _0814E878 @ =0x03001038
	ldr r0, _0814E87C @ =0x0819832C
	ldr r1, _0814E880 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [r4, #0x0C]
	subs r0, r2, r3
	ldr r1, [r5, #0x0C]
	cmp r0, r1
	bgt _0814E8A8
	adds r0, r2, r3
	cmp r0, r1
	blt _0814E8A8
_0814E874:
	movs r0, #0x01
	b _0814E8AA
_0814E878: .4byte 0x03001038
_0814E87C: .4byte 0x0819832C
_0814E880: .4byte 0x08198220
_0814E884:
	cmp r1, #0x01
	bne _0814E8A8
	ldrb r0, [r0, #0x09]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0814E8A8
	ldr r2, [r4, #0x10]
	ldr r1, [r5, #0x10]
	cmp r2, r1
	blt _0814E8A8
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrh r0, [r0, #0x00]
	subs r0, r2, r0
	cmp r0, r1
	ble _0814E874
_0814E8A8:
	movs r0, #0x00
_0814E8AA:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_814E8B0
sub_814E8B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0x00
	beq _0814E900
	cmp r1, #0x00
	bgt _0814E8EE
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0814E91C
	b _0814E906
_0814E8EE:
	cmp r1, #0x01
	beq _0814E904
	cmp r1, #0x02
	bne _0814E906
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	b _0814E906
_0814E900:
	ldr r5, [r6, #0x28]
	b _0814E906
_0814E904:
	ldr r5, [r6, #0x2C]
_0814E906:
	ldrh r0, [r7, #0x18]
	lsls r0, r0, #0x08
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r2, r2, r1
	cmp r0, r2
	bgt _0814E91C
	ldrh r0, [r7, #0x1A]
	lsls r0, r0, #0x08
	cmp r0, r2
	bge _0814E926
_0814E91C:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _0814EACE
_0814E926:
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r6, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r1, r0
	adds r1, r6, #0x0
	cmp r6, #0x00
	bge _0814E93A
	negs r1, r6
_0814E93A:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0814E942
	negs r0, r2
_0814E942:
	cmp r1, r0
	ble _0814E980
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r6, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r6, #0x00
	bge _0814E96E
	movs r3, #0x06
_0814E96E:
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	b _0814E9A8
_0814E980:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r3, r4, #0x0
	adds r3, #0x24
	ands r2, r0
	ldrb r1, [r3, #0x00]
	subs r0, #0x0C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
_0814E9A8:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_814EE18
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EA0C
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x00]
	movs r5, #0xAC
	lsls r5, r5, #0x01
	add r5, r8
	ldr r3, [r5, #0x00]
	movs r2, #0x1A
	ldsh r0, [r3, r2]
	cmp r1, r0
	blt _0814E9EC
	movs r2, #0xBC
	lsls r2, r2, #0x01
	add r2, r8
	ldrh r0, [r3, #0x1C]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r3, [r5, #0x00]
	movs r5, #0x1E
	ldsh r0, [r3, r5]
	cmp r1, r0
	ble _0814E9EC
	ldrh r0, [r3, #0x1E]
	strh r0, [r2, #0x00]
_0814E9EC:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x04
	bl sub_815041C
	ldr r0, _0814EA08 @ =0x08150499
	mov r1, r9
	str r0, [r1, #0x00]
	b _0814EACE
	.byte 0x00, 0x00
_0814EA08: .4byte sub_8150498
_0814EA0C:
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814EA30
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814EA32
_0814EA30:
	movs r0, #0xFF
_0814EA32:
	strb r0, [r4, #0x02]
	add r0, sp, #0x008
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x10
	bl sub_8139BB0
	add r1, sp, #0x008
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, _0814EA70 @ =0x00007FFF
	str r3, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EA74
	movs r2, #0xBE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	b _0814EA78
	.byte 0x00, 0x00
_0814EA70: .4byte 0x00007FFF
_0814EA74:
	ldr r1, _0814EA98 @ =0x0000023E
	adds r0, r4, r1
_0814EA78:
	ldrh r7, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813B178
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0814EA9C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r6, r0, r2
	b _0814EAA8
_0814EA98: .4byte 0x0000023E
_0814EA9C:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r1, #0xA4
	lsls r1, r1, #0x06
	adds r6, r0, r1
_0814EAA8:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	str r7, [sp, #0x000]
	add r3, sp, #0x004
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r3, r6, #0x0
	bl sub_813A44C
	adds r0, r4, #0x0
	bl sub_813B5B4
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
_0814EACE:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_814EADC
sub_814EADC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _0814EB10
	b _0814EC3C
_0814EB10:
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EB24
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814EB30
_0814EB24:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814EB30:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r6, [r0, #0x28]
	ldrh r0, [r7, #0x18]
	lsls r0, r0, #0x08
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r2, r2, r1
	cmp r0, r2
	bgt _0814EC3C
	ldrh r0, [r7, #0x1A]
	lsls r0, r0, #0x08
	cmp r0, r2
	blt _0814EC3C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	movs r5, #0xAF
	lsls r5, r5, #0x02
	adds r3, r4, r5
	lsrs r0, r0, #0x17
	add r0, r8
	ldrh r2, [r0, #0x00]
	subs r5, #0x7E
	adds r1, r4, r5
	strh r2, [r1, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	str r1, [r3, #0x00]
	ldrh r2, [r0, #0x10]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r1, r4, r3
	strh r2, [r1, #0x00]
	adds r5, #0x0A
	adds r1, r4, r5
	movs r2, #0x18
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r5, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r1, r0
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _0814EB9A
	negs r1, r5
_0814EB9A:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0814EBA2
	negs r0, r2
_0814EBA2:
	cmp r1, r0
	ble _0814EBE2
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r5, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r5, #0x00
	bge _0814EBCE
	movs r3, #0x06
_0814EBCE:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r5, r0, #0x0
	b _0814EC0C
_0814EBE2:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r1, #0x24
	ands r2, r0
	ldrb r3, [r1, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r5, r1, #0x0
_0814EC0C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815033C
_0814EC3C:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_814EC48
sub_814EC48:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r4, r0
	adds r0, #0xD6
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0814EC9C
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	movs r3, #0x80
	lsls r3, r3, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r5, #0x00]
_0814EC9C:
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814ECD2
	adds r0, r4, #0x0
	bl sub_80479A8
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	ldr r0, _0814ECDC @ =0x0814E8B1
	str r0, [r7, #0x00]
_0814ECD2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814ECDC: .4byte sub_814E8B0
	thumb_func_start sub_814ECE0
sub_814ECE0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r4, r0
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0814ED2C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x10
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	ldrb r0, [r5, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r5, #0x00]
_0814ED2C:
	adds r0, r4, #0x0
	bl sub_8047A3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814ED9E
	adds r0, r4, #0x0
	bl sub_80479A8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r2, #0x08
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r1, #0x08
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	subs r2, #0x34
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x18]
	adds r2, #0x20
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
	ldr r0, _0814EDA8 @ =0x0814EADD
	str r0, [r7, #0x00]
_0814ED9E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814EDA8: .4byte sub_814EADC
	thumb_func_start sub_814EDAC
sub_814EDAC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r6, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r5, #0x08
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x08]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0A]
	adds r5, #0x02
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0C]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x0E]
	adds r5, #0x01
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r6, r0
	adds r0, r5, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r5, #0x08
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x28]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2A]
	adds r5, #0x02
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2C]
	movs r0, #0x01
	ldsb r0, [r5, r0]
	strh r0, [r4, #0x2E]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_814EE18
sub_814EE18:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r0, #0x0
	mov r8, r1
	ldr r0, [r1, #0x0C]
	mov r10, r0
	ldr r6, [r1, #0x10]
	ldr r1, [r4, #0x0C]
	str r1, [sp, #0x018]
	ldr r0, [r4, #0x10]
	mov r9, r0
	add r0, sp, #0x008
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x08
	bl sub_8139BB0
	add r1, sp, #0x008
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, _0814EEC4 @ =0x00007FFF
	str r3, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	mov r2, r8
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814EE6A
	b _0814F058
_0814EE6A:
	mov r1, r10
	ldr r0, [sp, #0x018]
	subs r5, r1, r0
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _0814EE78
	negs r1, r5
_0814EE78:
	mov r0, r9
	subs r7, r6, r0
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _0814EE84
	negs r0, r7
_0814EE84:
	cmp r1, r0
	blt _0814EF44
	adds r3, r5, #0x0
	adds r1, r3, #0x0
	cmp r3, #0x00
	bge _0814EE92
	negs r1, r3
_0814EE92:
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0814EEEC
	cmp r3, #0x00
	bge _0814EEC8
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x02
	beq _0814EEBC
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0814EF88
_0814EEBC:
	cmp r6, r9
	blt _0814EEC2
	b _0814EFC8
_0814EEC2:
	b _0814EF8C
_0814EEC4: .4byte 0x00007FFF
_0814EEC8:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x06
	beq _0814EEE6
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x06
	beq _0814EF88
_0814EEE6:
	cmp r6, r9
	bge _0814EFBC
	b _0814EF7E
_0814EEEC:
	mov r0, r8
	ldr r1, [r0, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r3, r1, r0
	cmp r3, #0x00
	bge _0814EEFA
	negs r3, r3
_0814EEFA:
	ldr r0, _0814EF2C @ =0x00000276
	add r0, r8
	ldrh r0, [r0, #0x00]
	subs r0, r6, r0
	subs r6, r0, r3
	mov r1, r9
	subs r6, r1, r6
	mov r1, r8
	ldr r0, [r1, #0x10]
	adds r2, r0, r3
	mov r0, r9
	subs r2, r2, r0
	cmp r5, #0x00
	bge _0814EF30
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x02
	bl sub_8150388
	b _0814F05A
	.byte 0x00, 0x00
_0814EF2C: .4byte 0x00000276
_0814EF30:
	movs r0, #0x07
	str r0, [sp, #0x000]
	movs r0, #0x05
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x06
	bl sub_8150388
	b _0814F05A
_0814EF44:
	adds r3, r7, #0x0
	adds r1, r7, #0x0
	cmp r7, #0x00
	bge _0814EF4E
	negs r1, r7
_0814EF4E:
	movs r0, #0xC0
	lsls r0, r0, #0x06
	cmp r1, r0
	bgt _0814EFD4
	cmp r7, #0x00
	bge _0814EF98
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x04
	beq _0814EF78
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x04
	beq _0814EF88
_0814EF78:
	ldr r1, [sp, #0x018]
	cmp r10, r1
	blt _0814EF8C
_0814EF7E:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x05
	bne _0814F058
_0814EF88:
	movs r0, #0x01
	b _0814F05A
_0814EF8C:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x03
	bne _0814F058
	b _0814EF88
_0814EF98:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r3, #0x07
	adds r0, r3, #0x0
	ands r0, r1
	mov r2, r8
	adds r2, #0x24
	cmp r0, #0x00
	beq _0814EFB6
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814EF88
_0814EFB6:
	ldr r0, [sp, #0x018]
	cmp r10, r0
	blt _0814EFC8
_0814EFBC:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x07
	bne _0814F058
	b _0814EF88
_0814EFC8:
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x01
	bne _0814F058
	b _0814EF88
_0814EFD4:
	cmp r7, #0x00
	bge _0814EFDA
	negs r3, r7
_0814EFDA:
	ldr r1, _0814F034 @ =0x03001038
	mov r9, r1
	ldr r4, _0814F038 @ =0x0819832C
	ldr r0, _0814F03C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r5, _0814F040 @ =0x00000272
	add r5, r8
	ldrh r0, [r5, #0x00]
	movs r1, #0x02
	str r3, [sp, #0x01C]
	bl _call_via_r2
	mov r1, r10
	subs r0, r1, r0
	ldr r3, [sp, #0x01C]
	subs r6, r0, r3
	ldr r0, [sp, #0x018]
	subs r6, r0, r6
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldrh r0, [r5, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	add r0, r10
	ldr r3, [sp, #0x01C]
	adds r2, r0, r3
	ldr r0, [sp, #0x018]
	subs r2, r2, r0
	cmp r7, #0x00
	bge _0814F044
	movs r0, #0x05
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x04
	bl sub_8150388
	b _0814F05A
	.byte 0x00, 0x00
_0814F034: .4byte 0x03001038
_0814F038: .4byte 0x0819832C
_0814F03C: .4byte 0x08198220
_0814F040: .4byte 0x00000272
_0814F044:
	movs r0, #0x07
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	mov r0, r8
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_8150388
	b _0814F05A
_0814F058:
	movs r0, #0x00
_0814F05A:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_814F06C
sub_814F06C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	adds r5, r1, #0x0
	str r2, [sp, #0x010]
	adds r0, r5, #0x0
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r5
	mov r10, r1
	mov r0, r9
	add r1, sp, #0x00C
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F09C
	b _0814F24C
_0814F09C:
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r4, [r0, #0x28]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8150270
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F0B6
	b _0814F24C
_0814F0B6:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0814F174
	ldr r2, _0814F104 @ =0x03001038
	ldr r0, _0814F108 @ =0x0819832C
	ldr r1, _0814F10C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814F110
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814F114
_0814F104: .4byte 0x03001038
_0814F108: .4byte 0x0819832C
_0814F10C: .4byte 0x08198220
_0814F110:
	movs r1, #0x01
	negs r1, r1
_0814F114:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r8
	cmp r0, #0x01
	beq _0814F14C
	cmp r0, #0x01
	bgt _0814F12A
	cmp r0, #0x00
	beq _0814F134
	b _0814F1F8
_0814F12A:
	cmp r0, #0x02
	beq _0814F160
	cmp r0, #0x03
	beq _0814F168
	b _0814F1F8
_0814F134:
	ldr r0, [r5, #0x0C]
	ldr r1, _0814F144 @ =0xFFFFFA00
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	ldr r2, _0814F148 @ =0xFFFFEB00
	adds r6, r0, r2
	b _0814F1F8
	.byte 0x00, 0x00
_0814F144: .4byte 0xFFFFFA00
_0814F148: .4byte 0xFFFFEB00
_0814F14C:
	ldr r0, [r5, #0x0C]
	movs r1, #0x90
	lsls r1, r1, #0x05
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	ldr r2, _0814F15C @ =0xFFFFFA00
	adds r6, r0, r2
	b _0814F1F8
_0814F15C: .4byte 0xFFFFFA00
_0814F160:
	ldr r0, [r5, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _0814F1F4
_0814F168:
	ldr r0, [r5, #0x0C]
	ldr r2, _0814F170 @ =0xFFFFEE00
	adds r7, r0, r2
	b _0814F1F6
_0814F170: .4byte 0xFFFFEE00
_0814F174:
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814F1A0
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814F1A4
_0814F1A0:
	movs r1, #0x01
	negs r1, r1
_0814F1A4:
	cmp r1, #0x01
	beq _0814F1D4
	cmp r1, #0x01
	bgt _0814F1B2
	cmp r1, #0x00
	beq _0814F1BC
	b _0814F1F8
_0814F1B2:
	cmp r1, #0x02
	beq _0814F1DE
	cmp r1, #0x03
	beq _0814F1F0
	b _0814F1F8
_0814F1BC:
	ldr r0, [r5, #0x0C]
	ldr r2, _0814F1CC @ =0xFFFFFA00
	adds r7, r0, r2
	ldr r0, [r5, #0x10]
	ldr r1, _0814F1D0 @ =0xFFFFEB00
	adds r6, r0, r1
	b _0814F1F8
	.byte 0x00, 0x00
_0814F1CC: .4byte 0xFFFFFA00
_0814F1D0: .4byte 0xFFFFEB00
_0814F1D4:
	ldr r0, [r5, #0x0C]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r7, r0, r2
	b _0814F1F6
_0814F1DE:
	ldr r0, [r5, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r7, r0, r1
	ldr r0, [r5, #0x10]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r6, r0, r2
	b _0814F1F8
_0814F1F0:
	ldr r0, [r5, #0x0C]
	ldr r1, _0814F244 @ =0xFFFFEE00
_0814F1F4:
	adds r7, r0, r1
_0814F1F6:
	ldr r6, [r5, #0x10]
_0814F1F8:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r2, #0x44
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	mov r0, r9
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0814F24C
	mov r0, r9
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x01
	bl sub_814FDEC
	ldr r1, [sp, #0x014]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r4, [r0, #0x00]
	ldr r0, _0814F248 @ =0x0814F299
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	b _0814F286
_0814F244: .4byte 0xFFFFEE00
_0814F248: .4byte sub_814F298
_0814F24C:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F286
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813A5C8
_0814F286:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814F298
sub_814F298:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	mov r12, r1
	adds r5, r2, #0x0
	movs r4, #0xEA
	lsls r4, r4, #0x01
	add r4, r12
	ldrh r0, [r4, #0x00]
	cmp r0, #0x01
	beq _0814F2D6
	cmp r0, #0x01
	bgt _0814F2B6
	cmp r0, #0x00
	beq _0814F2BC
	b _0814F342
_0814F2B6:
	cmp r0, #0x02
	beq _0814F2FC
	b _0814F342
_0814F2BC:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814F342
	adds r0, r3, #0x0
	mov r1, r12
	movs r2, #0x01
	b _0814F2EE
_0814F2D6:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814F342
	adds r0, r3, #0x0
	mov r1, r12
	movs r2, #0x02
_0814F2EE:
	movs r3, #0x01
	bl sub_814FDEC
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	b _0814F342
_0814F2FC:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	movs r1, #0x2C
	ldsh r0, [r0, r1]
	cmp r0, #0x5F
	ble _0814F342
	ldr r4, _0814F348 @ =0x0000020D
	mov r0, r12
	adds r3, r0, r4
	ldrb r2, [r3, #0x00]
	movs r1, #0x05
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	ldrb r2, [r0, #0x00]
	ands r1, r2
	strb r1, [r0, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814F34C @ =0x0814F351
	str r0, [r5, #0x00]
_0814F342:
	pop {r4, r5}
	pop {r0}
	bx r0
_0814F348: .4byte 0x0000020D
_0814F34C: .4byte sub_814F350
	thumb_func_start sub_814F350
sub_814F350:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r3, r0, #0x0
	mov r9, r1
	str r2, [sp, #0x018]
	mov r0, r9
	adds r0, #0x58
	str r0, [sp, #0x01C]
	movs r7, #0xD1
	lsls r7, r7, #0x02
	add r7, r9
	ldr r5, [r7, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x01
	adds r1, r5, r6
	str r1, [sp, #0x020]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r4, r3, r2
	ldr r0, [r4, #0x00]
	str r0, [sp, #0x024]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	add r1, r9
	str r1, [sp, #0x028]
	ldrh r1, [r1, #0x00]
	cmp r1, #0x05
	bne _0814F392
	b _0814F83E
_0814F392:
	cmp r1, #0x05
	bgt _0814F3AA
	cmp r1, #0x03
	bne _0814F39C
	b _0814F5CC
_0814F39C:
	cmp r1, #0x03
	ble _0814F3A2
	b _0814F6E4
_0814F3A2:
	cmp r1, #0x02
	beq _0814F3D4
	bl _0814FC20
_0814F3AA:
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bne _0814F3B4
	b _0814FB8C
_0814F3B4:
	cmp r1, r0
	bgt _0814F3C2
	cmp r1, #0x06
	bne _0814F3BE
	b _0814FA4A
_0814F3BE:
	bl _0814FC20
_0814F3C2:
	ldr r0, _0814F3D0 @ =0x00000401
	cmp r1, r0
	bne _0814F3CC
	bl _0814FBD0
_0814F3CC:
	bl _0814FC20
_0814F3D0:
	lsls r1, r0, #0x10
	lsls r0, r0, #0x00
_0814F3D4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x3B
	bhi _0814F48C
	mov r0, r9
	movs r1, #0x00
	bl sub_814FFAC
	ldr r0, [r7, #0x00]
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_8046A90
	ldr r0, [r7, #0x00]
	str r4, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_8046B30
	ldr r0, [r7, #0x00]
	bl sub_8046D18
	ldr r0, [r7, #0x00]
	bl sub_80479A8
	ldr r0, [r7, #0x00]
	bl sub_8047994
	ldr r2, [r7, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	ldr r6, [sp, #0x020]
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r7, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	ldr r2, _0814F488 @ =0x0000020F
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ldr r3, [sp, #0x028]
	strh r0, [r3, #0x00]
	b _0814FC20
_0814F488:
	lsls r7, r1, #0x08
	lsls r0, r0, #0x00
_0814F48C:
	ldr r2, [r7, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r9
	movs r1, #0x01
	bl sub_814FFAC
	ldr r1, [r7, #0x00]
	ldr r6, _0814F5B8 @ =0x0000020F
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x03
	bl sub_8150244
	adds r4, r0, #0x0
	ldr r0, [r7, #0x00]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r5, #0x01
	str r5, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8046A90
	ldr r0, [r7, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8046B30
	ldr r0, [r7, #0x00]
	bl sub_8046D18
	ldr r0, [r7, #0x00]
	bl sub_80479A8
	ldr r0, [r7, #0x00]
	bl sub_8047994
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x020]
	adds r0, r0, r2
	ldrh r0, [r0, #0x10]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r1, r1, r3
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r4, #0x92
	lsls r4, r4, #0x02
	adds r1, r1, r4
	lsls r0, r0, #0x01
	ldr r6, [sp, #0x020]
	adds r0, r0, r6
	movs r2, #0x18
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r4, [sp, #0x024]
	ldr r1, [r4, #0x0C]
	mov r6, r9
	ldr r0, [r6, #0x0C]
	subs r6, r1, r0
	ldr r1, [r4, #0x10]
	mov r2, r9
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _0814F5BC @ =0x03001038
	mov r10, r3
	adds r0, r6, #0x0
	muls r0, r6
	adds r4, r1, #0x0
	mov r1, r8
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _0814F576
	adds r0, #0xFF
_0814F576:
	asrs r5, r0, #0x08
	ldr r4, _0814F5C0 @ =0x0819832C
	ldr r0, _0814F5C4 @ =0x08198220
	subs r4, r4, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	ldr r2, _0814F5C8 @ =0x00000242
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r1, r1, r4
	strh r0, [r1, #0x00]
	ldr r6, [sp, #0x028]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	b _0814FC20
	.byte 0x00, 0x00
_0814F5B8: .4byte 0x0000020F
_0814F5BC: .4byte 0x03001038
_0814F5C0: .4byte 0x0819832C
_0814F5C4: .4byte 0x08198220
_0814F5C8: .4byte 0x00000242
_0814F5CC:
	ldr r1, _0814F6D8 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x0C]
	adds r0, r0, r1
	str r0, [r5, #0x0C]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r3, #0x98
	adds r2, r5, r3
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r3
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	ble _0814F614
	b _0814FC20
_0814F614:
	movs r0, #0x03
	bl sub_8150244
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r1, r1, r0
	lsls r1, r1, #0x0F
	lsrs r1, r1, #0x10
	ldr r0, [r7, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x05
	bl sub_8046A90
	movs r0, #0x03
	bl sub_8150244
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r1, r1, r0
	lsls r1, r1, #0x0F
	lsrs r1, r1, #0x10
	ldr r0, [r7, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x05
	bl sub_8046B30
	movs r1, #0xE8
	lsls r1, r1, #0x01
	add r1, r9
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x26
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r1, r6
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x020]
	adds r0, r0, r2
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x020]
	adds r0, r0, r3
	ldrh r0, [r0, #0x28]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _0814F6DC @ =0x0813B1E9
	ldr r6, [sp, #0x018]
	str r0, [r6, #0x00]
	ldr r0, _0814F6E0 @ =0x0814F351
	str r0, [r6, #0x0C]
	ldr r0, [r7, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	ldr r1, [r1, #0x0C]
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r4, #0x00]
	ldr r1, [r1, #0x10]
	str r1, [r0, #0x00]
	b _0814FBC2
_0814F6D8: .4byte 0x00000242
_0814F6DC: .4byte sub_813B1E8
_0814F6E0: .4byte sub_814F350
_0814F6E4:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r6, [sp, #0x024]
	ldr r0, [r6, #0x0C]
	ldr r4, [r1, #0x00]
	subs r0, r0, r4
	movs r1, #0x14
	bl __divsi3
	adds r6, r4, r0
	movs r0, #0xB4
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x10]
	ldr r4, [r1, #0x00]
	subs r0, r0, r4
	movs r1, #0x14
	bl __divsi3
	adds r4, r4, r0
	mov r8, r4
	ldr r3, [sp, #0x024]
	ldr r4, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r4, r4, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x020]
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	str r1, [sp, #0x000]
	add r2, sp, #0x004
	movs r1, #0x00
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	mov r2, r8
	adds r3, r4, #0x0
	bl sub_813A44C
	ldr r3, [r7, #0x00]
	ldr r2, _0814F7E0 @ =0x00000242
	mov r10, r2
	adds r0, r3, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	beq _0814F766
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r1, r3, r6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bne _0814F7F0
_0814F766:
	ldr r4, [sp, #0x024]
	ldr r1, [r4, #0x0C]
	ldr r0, [r3, #0x0C]
	subs r6, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r3, #0x10]
	subs r1, r1, r0
	mov r8, r1
	ldr r4, _0814F7E4 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r2, r1, #0x0
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _0814F790
	adds r0, #0xFF
_0814F790:
	asrs r5, r0, #0x08
	ldr r0, [r7, #0x00]
	add r0, r10
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bne _0814F7B6
	ldr r0, _0814F7E8 @ =0x0819832C
	ldr r1, _0814F7EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r4, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	add r1, r10
	strh r0, [r1, #0x00]
_0814F7B6:
	ldr r0, [r7, #0x00]
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r0, r0, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0814F830
	ldr r0, _0814F7E8 @ =0x0819832C
	ldr r1, _0814F7EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r4, #0x00]
	adds r2, r2, r0
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	adds r1, r1, r6
	strh r0, [r1, #0x00]
	b _0814F830
_0814F7E0: .4byte 0x00000242
_0814F7E4: .4byte 0x03001038
_0814F7E8: .4byte 0x0819832C
_0814F7EC: .4byte 0x08198220
_0814F7F0:
	ldr r5, _0814F890 @ =0x03001038
	ldr r4, _0814F894 @ =0x0819832C
	ldr r0, _0814F898 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x02
	bl _call_via_r2
	ldr r2, [r7, #0x00]
	add r2, r10
	ldrh r1, [r2, #0x00]
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x00]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r0, r4
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r1, #0x02
	bl _call_via_r2
	ldr r2, [r7, #0x00]
	adds r2, r2, r4
	ldrh r1, [r2, #0x00]
	subs r1, r1, r0
	strh r1, [r2, #0x00]
_0814F830:
	ldr r0, [sp, #0x01C]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
_0814F83E:
	add r0, sp, #0x008
	mov r1, r9
	movs r2, #0x28
	movs r3, #0x10
	bl sub_8139BB0
	add r1, sp, #0x008
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, [sp, #0x01C]
	movs r4, #0xBF
	lsls r4, r4, #0x01
	adds r3, r3, r4
	mov r10, r3
	ldrb r1, [r3, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0814F8A0
	ldr r3, _0814F89C @ =0x00007FFF
	str r3, [sp, #0x000]
	add r0, sp, #0x008
	mov r1, r9
	ldr r2, [sp, #0x024]
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F958
	mov r6, r10
	ldrb r0, [r6, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x00]
	b _0814F958
_0814F890: .4byte 0x03001038
_0814F894: .4byte 0x0819832C
_0814F898: .4byte 0x08198220
_0814F89C: .4byte 0x00007FFF
_0814F8A0:
	ldr r3, _0814F944 @ =0x00007FFF
	str r3, [sp, #0x000]
	add r0, sp, #0x008
	mov r1, r9
	ldr r2, [sp, #0x024]
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814F958
	ldr r1, [sp, #0x01C]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0814F958
	movs r7, #0xD1
	lsls r7, r7, #0x02
	add r7, r9
	ldr r2, [r7, #0x00]
	ldr r3, [sp, #0x024]
	ldr r1, [r3, #0x0C]
	ldr r0, [r2, #0x0C]
	subs r6, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	mov r8, r1
	ldr r4, _0814F948 @ =0x03001038
	mov r9, r4
	adds r0, r6, #0x0
	muls r0, r6
	adds r2, r1, #0x0
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _0814F8F6
	adds r0, #0xFF
_0814F8F6:
	asrs r5, r0, #0x08
	ldr r4, _0814F94C @ =0x0819832C
	ldr r0, _0814F950 @ =0x08198220
	subs r4, r4, r0
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	ldr r6, _0814F954 @ =0x00000242
	adds r1, r1, r6
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	mov r3, r10
	ldrb r1, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r4, [sp, #0x01C]
	subs r6, #0xC6
	adds r1, r4, r6
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	b _0814FC62
_0814F944: .4byte 0x00007FFF
_0814F948: .4byte 0x03001038
_0814F94C: .4byte 0x0819832C
_0814F950: .4byte 0x08198220
_0814F954: .4byte 0x00000242
_0814F958:
	movs r4, #0xD1
	lsls r4, r4, #0x02
	add r4, r9
	ldr r1, [r4, #0x00]
	ldr r2, _0814FA20 @ =0x00000242
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r1, #0x0C]
	adds r0, r0, r2
	str r0, [r1, #0x0C]
	ldr r1, [r4, #0x00]
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r1, #0x10]
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r1, [r4, #0x00]
	adds r6, #0x98
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r1, #0x18]
	adds r0, r0, r2
	str r0, [r1, #0x18]
	ldr r0, [r4, #0x00]
	bl sub_8046D18
	ldr r1, [r4, #0x00]
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r1, r5
	ldr r0, [r0, #0x00]
	movs r6, #0x04
	ldsh r0, [r0, r6]
	cmp r0, #0xA0
	bgt _0814F9BE
	adds r0, r1, #0x0
	bl sub_80479A8
	ldr r0, [sp, #0x01C]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814F9BE:
	ldr r1, [r4, #0x00]
	adds r0, r1, r5
	ldr r0, [r0, #0x00]
	movs r2, #0x06
	ldsh r0, [r0, r2]
	cmp r0, #0xA0
	bgt _0814F9E2
	adds r0, r1, #0x0
	bl sub_8047994
	ldr r3, [sp, #0x01C]
	movs r6, #0xBF
	lsls r6, r6, #0x01
	adds r2, r3, r6
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814F9E2:
	ldr r2, [r4, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0814FA14
	ldr r3, _0814FA24 @ =0x00000216
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0814FA14
	ldr r4, [sp, #0x01C]
	movs r6, #0xBF
	lsls r6, r6, #0x01
	adds r0, r4, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x0C
	bne _0814FA28
_0814FA14:
	ldr r0, [sp, #0x01C]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r0, r1
	b _0814FAFC
	.byte 0x00, 0x00
_0814FA20: .4byte 0x00000242
_0814FA24: .4byte 0x00000216
_0814FA28:
	ldr r0, [sp, #0x01C]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0814FA3A
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0814FA3A:
	ldr r3, [sp, #0x01C]
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r1, r3, r4
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	b _0814FC20
_0814FA4A:
	ldr r6, _0814FB74 @ =0x00000242
	adds r0, r5, r6
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x0C]
	adds r0, r0, r1
	str r0, [r5, #0x0C]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	bl sub_8046D18
	ldr r1, [r7, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r1, r4
	ldr r0, [r0, #0x00]
	movs r6, #0x04
	ldsh r0, [r0, r6]
	cmp r0, #0xA0
	bgt _0814FA94
	adds r0, r1, #0x0
	bl sub_80479A8
	movs r2, #0xEB
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814FA94:
	ldr r1, [r7, #0x00]
	adds r0, r1, r4
	ldr r0, [r0, #0x00]
	movs r2, #0x06
	ldsh r0, [r0, r2]
	cmp r0, #0xA0
	bgt _0814FAB6
	adds r0, r1, #0x0
	bl sub_8047994
	movs r2, #0xEB
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814FAB6:
	ldr r2, [r7, #0x00]
	movs r3, #0x83
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0814FAE8
	ldr r4, _0814FB78 @ =0x00000216
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0814FAE8
	movs r0, #0xEB
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x0C
	beq _0814FAE8
	b _0814FC20
_0814FAE8:
	ldr r2, _0814FB7C @ =0x0000020D
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r6, [sp, #0x01C]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
_0814FAFC:
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r5, #0xD1
	lsls r5, r5, #0x02
	add r5, r9
	ldr r0, [r5, #0x00]
	mov r2, r9
	ldr r1, [r2, #0x0C]
	ldr r2, [r2, #0x10]
	mov r4, r9
	ldr r3, [r4, #0x14]
	ldr r4, [r4, #0x18]
	adds r3, r3, r4
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	bl sub_8047F60
	ldr r0, [r5, #0x00]
	movs r1, #0x00
	bl sub_804776C
	ldr r0, [r5, #0x00]
	movs r1, #0x00
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r6, [sp, #0x020]
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	ldr r2, [sp, #0x01C]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r2, r3
	strh r0, [r1, #0x00]
	ldr r0, _0814FB80 @ =0x0813B1E9
	ldr r4, [sp, #0x018]
	str r0, [r4, #0x00]
	ldr r0, _0814FB84 @ =0x0813B361
	str r0, [r4, #0x0C]
	movs r6, #0xA6
	lsls r6, r6, #0x01
	adds r1, r2, r6
	ldr r0, _0814FB88 @ =0x0814F06D
	str r0, [r1, #0x00]
	b _0814FC64
	.byte 0x00, 0x00
_0814FB74: .4byte 0x00000242
_0814FB78: .4byte 0x00000216
_0814FB7C: .4byte 0x0000020D
_0814FB80: .4byte sub_813B1E8
_0814FB84: .4byte sub_813B360
_0814FB88: .4byte sub_814F06C
_0814FB8C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814FC20
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, [r7, #0x00]
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r9
	movs r0, #0x0F
	strh r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	ldr r0, [r2, #0x00]
	str r0, [r2, #0x0C]
	ldr r0, _0814FBCC @ =0x0813B1E9
	str r0, [r2, #0x00]
_0814FBC2:
	ldr r3, [sp, #0x028]
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	b _0814FC20
_0814FBCC: .4byte sub_813B1E8
_0814FBD0:
	.byte 0x18, 0x1C, 0x49, 0x46, 0x02, 0x22, 0x00, 0x23, 0x00, 0xF0, 0x08, 0xF9, 0x85, 0x22, 0x92, 0x00
	.byte 0x4A, 0x44, 0x11, 0x78, 0x08, 0x20, 0x40, 0x42, 0x08, 0x40, 0x01, 0x21, 0x08, 0x43, 0x10, 0x70
	.byte 0xA5, 0x20, 0x80, 0x00, 0x48, 0x44, 0x02, 0x68, 0x91, 0x7C, 0x07, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x90, 0x74, 0xE9, 0x21, 0x49, 0x00, 0x49, 0x44, 0x3C, 0x20, 0x08, 0x80, 0x19, 0x48, 0x06, 0x9C
	.byte 0x20, 0x60, 0x19, 0x48, 0xE0, 0x60, 0xD2, 0x21, 0x49, 0x00, 0x49, 0x44, 0x17, 0x48, 0x08, 0x60
_0814FC20:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	add r5, r9
	ldr r0, [r5, #0x00]
	movs r6, #0x06
	ldsh r0, [r0, r6]
	bl sub_81501E4
	movs r4, #0xD1
	lsls r4, r4, #0x02
	add r4, r9
	ldr r1, [r4, #0x00]
	ldr r2, _0814FC80 @ =0x00000272
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r3, #0x06
	ldsh r0, [r0, r3]
	bl sub_8150178
	ldr r1, [r4, #0x00]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r1, r1, r6
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0x06
	ldsh r0, [r0, r1]
	bl sub_8150118
	ldr r1, [r4, #0x00]
	ldr r2, _0814FC84 @ =0x00000276
	adds r1, r1, r2
_0814FC62:
	strh r0, [r1, #0x00]
_0814FC64:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0xE9, 0xB1, 0x13, 0x08, 0x61, 0xB3, 0x13, 0x08, 0x6D, 0xF0, 0x14, 0x08
_0814FC80: .4byte 0x00000272
_0814FC84: .4byte 0x00000276
	thumb_func_start sub_814FC88
sub_814FC88:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r7, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r7, #0x0
	bl sub_8047F60
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r6, #0x04
	orrs r0, r6
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_801E150
	ldr r0, _0814FDDC @ =0x0000020D
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0814FDE0 @ =0x0000020E
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r0, [r2, #0x00]
	ldr r1, _0814FDE4 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r2, _0814FDE8 @ =0x0000020F
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r6
	strb r0, [r1, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x1C
	subs r2, #0xFF
	adds r1, r7, r2
	movs r2, #0x04
	bl CpuSet
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1A]
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1C]
	adds r0, r5, #0x0
	adds r0, #0x27
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x1E]
	adds r0, r5, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x0A]
	adds r0, r5, #0x0
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0x2B
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x0E]
	adds r0, r5, #0x0
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x28]
	adds r0, r5, #0x0
	adds r0, #0x2D
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x2A]
	adds r0, r5, #0x0
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x2F
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x2E]
	adds r0, r5, #0x0
	adds r0, #0x30
	adds r1, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814FDDC: .4byte 0x0000020D
_0814FDE0: .4byte 0x0000020E
_0814FDE4: .4byte 0xFFFC7FFF
_0814FDE8: .4byte 0x0000020F
	thumb_func_start sub_814FDEC
sub_814FDEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r3, #0x0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	cmp r4, #0x00
	beq _0814FEE8
	adds r0, r7, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814FE54
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0814FE60
_0814FE54:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814FE60:
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r4, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r6, #0x10]
	subs r2, r1, r0
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _0814FE7A
	negs r1, r4
_0814FE7A:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0814FE82
	negs r0, r2
_0814FE82:
	cmp r1, r0
	ble _0814FEC0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r4, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r4, #0x00
	bge _0814FEAE
	movs r3, #0x06
_0814FEAE:
	adds r2, r6, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	b _0814FEE8
_0814FEC0:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r3, r6, #0x0
	adds r3, #0x24
	ands r2, r0
	ldrb r1, [r3, #0x00]
	subs r0, #0x0C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
_0814FEE8:
	mov r2, r8
	cmp r2, #0x01
	beq _0814FF2C
	cmp r2, #0x01
	bgt _0814FEF8
	cmp r2, #0x00
	beq _0814FF00
	b _0814FF98
_0814FEF8:
	mov r0, r8
	cmp r0, #0x02
	beq _0814FF58
	b _0814FF98
_0814FF00:
	ldr r2, _0814FF24 @ =0x083A05EC
	ldr r1, _0814FF28 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x04
	b _0814FF7A
_0814FF24: .4byte 0x083A05EC
_0814FF28: .4byte 0x00000216
_0814FF2C:
	ldr r2, _0814FF50 @ =0x083A05EC
	ldr r1, _0814FF54 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x08
	b _0814FF7A
_0814FF50: .4byte 0x083A05EC
_0814FF54: .4byte 0x00000216
_0814FF58:
	ldr r2, _0814FFA4 @ =0x083A05EC
	ldr r1, _0814FFA8 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x0C
_0814FF7A:
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0814FF98:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814FFA4: .4byte 0x083A05EC
_0814FFA8: .4byte 0x00000216
	thumb_func_start sub_814FFAC
sub_814FFAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	mov r0, r8
	cmp r0, #0x00
	beq _0815001C
	ldr r2, _0814FFF8 @ =0x083A05EC
	ldr r1, _0814FFFC @ =0x00000216
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
	beq _08150000
	cmp r0, #0x01
	ble _08150044
	cmp r0, #0x02
	beq _08150014
	b _08150058
_0814FFF8: .4byte 0x083A05EC
_0814FFFC: .4byte 0x00000216
_08150000:
	ldr r0, [r4, #0x0C]
	movs r1, #0x90
	lsls r1, r1, #0x05
	adds r6, r0, r1
	ldr r0, [r4, #0x10]
	ldr r1, _08150010 @ =0xFFFFFA00
	adds r5, r0, r1
	b _08150096
_08150010: .4byte 0xFFFFFA00
_08150014:
	ldr r0, [r4, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	b _08150092
_0815001C:
	ldr r2, _0815004C @ =0x083A05EC
	ldr r1, _08150050 @ =0x00000216
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
	beq _08150074
	cmp r0, #0x01
	bgt _08150054
_08150044:
	cmp r0, #0x00
	beq _0815005E
	b _08150096
	.byte 0x00, 0x00
_0815004C: .4byte 0x083A05EC
_08150050: .4byte 0x00000216
_08150054:
	cmp r0, #0x02
	beq _0815007C
_08150058:
	cmp r0, #0x03
	beq _0815008E
	b _08150096
_0815005E:
	ldr r0, [r4, #0x0C]
	ldr r1, _0815006C @ =0xFFFFFA00
	adds r6, r0, r1
	ldr r0, [r4, #0x10]
	ldr r1, _08150070 @ =0xFFFFEB00
	adds r5, r0, r1
	b _08150096
_0815006C: .4byte 0xFFFFFA00
_08150070: .4byte 0xFFFFEB00
_08150074:
	ldr r0, [r4, #0x0C]
	movs r1, #0x90
	lsls r1, r1, #0x05
	b _08150092
_0815007C:
	ldr r0, [r4, #0x0C]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r6, r0, r1
	ldr r0, [r4, #0x10]
	movs r1, #0xA0
	lsls r1, r1, #0x04
	adds r5, r0, r1
	b _08150096
_0815008E:
	ldr r0, [r4, #0x0C]
	ldr r1, _081500D4 @ =0xFFFFEE00
_08150092:
	adds r6, r0, r1
	ldr r5, [r4, #0x10]
_08150096:
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0xC0
	lsls r0, r0, #0x03
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8047F60
	mov r1, r8
	cmp r1, #0x00
	beq _081500D8
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r4, [sp, #0x000]
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_801E150
	b _081500F0
	.byte 0x00, 0x00
_081500D4: .4byte 0xFFFFEE00
_081500D8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_801E150
_081500F0:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804761C
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8150118
sub_8150118:
	push {lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xD0
	bgt _08150128
	movs r0, #0x80
	lsls r0, r0, #0x03
	b _08150172
_08150128:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _08150138
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _0815013E
_08150138:
	movs r0, #0xC0
	lsls r0, r0, #0x03
	b _08150172
_0815013E:
	movs r0, #0xB0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _0815014C
	movs r0, #0xE0
	lsls r0, r0, #0x03
	b _08150172
_0815014C:
	movs r0, #0xC8
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0815015C
	movs r0, #0xE0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _08150162
_0815015C:
	movs r0, #0x80
	lsls r0, r0, #0x04
	b _08150172
_08150162:
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	ble _0815016E
	movs r0, #0x00
	b _08150172
_0815016E:
	movs r0, #0xA0
	lsls r0, r0, #0x04
_08150172:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8150178
sub_8150178:
	push {lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xD0
	bgt _08150188
	movs r0, #0xA0
	lsls r0, r0, #0x03
	b _081501DE
_08150188:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _08150196
	movs r0, #0xE0
	lsls r0, r0, #0x03
	b _081501DE
_08150196:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _081501A4
	movs r0, #0x90
	lsls r0, r0, #0x04
	b _081501DE
_081501A4:
	movs r0, #0xB0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _081501B2
	movs r0, #0xB0
	lsls r0, r0, #0x04
	b _081501DE
_081501B2:
	movs r0, #0xC8
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _081501C0
	movs r0, #0xC0
	lsls r0, r0, #0x04
	b _081501DE
_081501C0:
	movs r0, #0xE0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _081501CE
	movs r0, #0xD0
	lsls r0, r0, #0x04
	b _081501DE
_081501CE:
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	ble _081501DA
	movs r0, #0x00
	b _081501DE
_081501DA:
	movs r0, #0xF0
	lsls r0, r0, #0x04
_081501DE:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_81501E4
sub_81501E4:
	push {lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xD0
	bgt _081501F4
	movs r0, #0x80
	lsls r0, r0, #0x04
	b _0815023E
_081501F4:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _08150204
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _0815020A
_08150204:
	movs r0, #0xA0
	lsls r0, r0, #0x04
	b _0815023E
_0815020A:
	movs r0, #0xB0
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0815021A
	movs r0, #0xC8
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _08150220
_0815021A:
	movs r0, #0xC0
	lsls r0, r0, #0x04
	b _0815023E
_08150220:
	movs r0, #0xE0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _0815022E
	movs r0, #0x90
	lsls r0, r0, #0x05
	b _0815023E
_0815022E:
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	ble _0815023A
	movs r0, #0x00
	b _0815023E
_0815023A:
	movs r0, #0xA0
	lsls r0, r0, #0x05
_0815023E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8150244
sub_8150244:
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _08150254
	movs r0, #0x80
	lsls r0, r0, #0x01
	b _0815026A
_08150254:
	cmp r0, #0x01
	bne _0815025E
	movs r0, #0xC0
	lsls r0, r0, #0x01
	b _0815026A
_0815025E:
	cmp r0, #0x01
	bgt _08150266
	movs r0, #0x10
	b _0815026A
_08150266:
	movs r0, #0xB0
	lsls r0, r0, #0x01
_0815026A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8150270
sub_8150270:
	push {r4, r5, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x08
	bl sub_8139CAC
	movs r0, #0x30
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	movs r3, #0x30
	bl sub_80FBB50
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0815029E
	movs r1, #0x01
_0815029E:
	adds r0, r1, #0x0
	add sp, #0x014
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_81502A8
sub_81502A8:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	ldr r0, _08150324 @ =0x0000033E
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r1, [r4, #0x00]
	ldr r0, _08150328 @ =0x0000020D
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8139AA0
	ldr r0, [r4, #0x00]
	bl sub_814FC88
	ldr r0, _0815032C @ =0x0000033D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08150330 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08150334 @ =0x0813B361
	str r0, [r1, #0x00]
	movs r0, #0xD2
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08150338 @ =0x0814F06D
	str r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08150324: .4byte 0x0000033E
_08150328: .4byte 0x0000020D
_0815032C: .4byte 0x0000033D
_08150330: .4byte sub_813B380
_08150334: .4byte sub_813B360
_08150338: .4byte sub_814F06C
	thumb_func_start sub_815033C
sub_815033C:
	push {lr}
	mov r12, r0
	lsls r1, r1, #0x18
	ldr r3, _08150368 @ =0x00000212
	add r3, r12
	ldrh r2, [r3, #0x00]
	ldr r0, _0815036C @ =0xFFFFFE7F
	ands r0, r2
	strh r0, [r3, #0x00]
	movs r2, #0xAD
	lsls r2, r2, #0x02
	add r2, r12
	movs r0, #0x00
	strb r0, [r2, #0x00]
	cmp r1, #0x00
	bne _08150374
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, _08150370 @ =0x0814EC49
	b _0815037C
	.byte 0x00, 0x00
_08150368: .4byte 0x00000212
_0815036C: .4byte 0xFFFFFE7F
_08150370: .4byte sub_814EC48
_08150374:
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, _08150384 @ =0x0814ECE1
_0815037C:
	str r0, [r1, #0x00]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150384: .4byte sub_814ECE0
	thumb_func_start sub_8150388
sub_8150388:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [sp, #0x01C]
	ldr r2, [sp, #0x020]
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	mov r8, r6
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r12, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r9, r2
	ldr r7, _081503D4 @ =0x00000283
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _081503EA
	cmp r5, r0
	bgt _081503D8
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, r6
	beq _081503E6
	cmp r0, r3
	beq _081503E6
	cmp r0, r2
	bne _0815040C
	b _081503E6
	.byte 0x00, 0x00
_081503D4: .4byte 0x00000283
_081503D8:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, r12
	bne _0815040C
_081503E6:
	movs r0, #0x01
	b _0815040E
_081503EA:
	cmp r5, r0
	bgt _081503FE
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, r9
	bne _0815040C
	b _081503E6
_081503FE:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, r8
	beq _081503E6
_0815040C:
	movs r0, #0x00
_0815040E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_815041C
sub_815041C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08150490 @ =0x083A05EC
	ldr r1, _08150494 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150490: .4byte 0x083A05EC
_08150494: .4byte 0x00000216
	thumb_func_start sub_8150498
sub_8150498:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081504BC
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _081504E6
_081504BC:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_814EE18
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081504E6
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081504EC @ =0x081506DD
	str r0, [r6, #0x00]
	ldr r0, _081504F0 @ =0x081506B5
	str r0, [r6, #0x0C]
_081504E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081504EC: .4byte sub_81506DC
_081504F0: .4byte sub_81506B4
	thumb_func_start sub_81504F4
sub_81504F4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	ldr r0, _08150584 @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_814EDAC
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x10
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	adds r0, r4, #0x0
	bl sub_80479A8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r2, #0x08
	adds r1, r4, r2
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xF4
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x18]
	subs r2, #0x14
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08150588 @ =0x0813B381
	str r0, [r1, #0x00]
	subs r2, #0x30
	adds r1, r4, r2
	ldr r0, _0815058C @ =0x0814EADD
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150584: .4byte 0x0000033E
_08150588: .4byte sub_813B380
_0815058C: .4byte sub_814EADC
	thumb_func_start sub_8150590
sub_8150590:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_81505A8
sub_81505A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xDF
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	beq _081505C4
	cmp r1, #0x01
	beq _081505DC
	b _081505F4
_081505C4:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r1, [sp, #0x000]
	movs r1, #0x06
	movs r3, #0x00
	bl sub_801E150
	b _081505F4
_081505DC:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x07
	movs r3, #0x00
	bl sub_801E150
_081505F4:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08150614 @ =0x0814E1BD
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08150614: .4byte sub_814E1BC
	thumb_func_start sub_8150618
sub_8150618:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r4, [r0, #0x00]
	subs r1, #0xB0
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x2C
	ldsh r0, [r0, r1]
	cmp r0, #0xDF
	ble _081506A6
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08150684 @ =0x0000020D
	adds r2, r3, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08150688 @ =0x00000216
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xFA
	lsls r0, r0, #0x02
	bl sub_81DD77C
	cmp r0, #0xF9
	bls _08150690
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_814E554
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0815068C @ =0x08150729
	b _081506A0
_08150684: .4byte 0x0000020D
_08150688: .4byte 0x00000216
_0815068C: .4byte 0x08150729
_08150690:
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_814E554
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _081506AC @ =0x0815071D
_081506A0:
	str r0, [r1, #0x00]
	ldr r0, _081506B0 @ =0x08150735
	str r0, [r5, #0x00]
_081506A6:
	pop {r4, r5}
	pop {r0}
	bx r0
_081506AC: .4byte sub_815071C
_081506B0: .4byte sub_8150734
	thumb_func_start sub_81506B4
sub_81506B4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815041C
	ldr r3, _081506D8 @ =0x0814E8B1
	str r3, [r5, #0x0C]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081506D8: .4byte sub_814E8B0
	thumb_func_start sub_81506DC
sub_81506DC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081506FE
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _08150714
_081506FE:
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08150714
	ldr r0, [r5, #0x0C]
	str r0, [r5, #0x00]
_08150714:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
