	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8062B88
sub_8062B88:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	bl sub_8062794
	adds r6, r7, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	bgt _08062C2A
	ldr r5, _08062C34 @ =0x03001038
	ldr r4, _08062C38 @ =0x0819832C
	ldr r0, _08062C3C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB8
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	ldr r3, _08062C40 @ =0x0300034C
	ldr r2, _08062C44 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x01
	bne _08062C2A
	ldr r0, [r7, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_807C298
_08062C2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08062C34: .4byte 0x03001038
_08062C38: .4byte 0x0819832C
_08062C3C: .4byte 0x08198220
_08062C40: .4byte 0x0300034C
_08062C44: .4byte 0x00000888
	thumb_func_start sub_8062C48
sub_8062C48:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08062C6C
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _08062C6C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08062C6C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _08062C8E
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bne _08062C88
	adds r0, #0xB4
	strh r1, [r0, #0x00]
_08062C88:
	adds r0, r4, #0x0
	bl sub_807C298
_08062C8E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8062C94
sub_8062C94:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08062CD8
	ldr r0, _08062CCC @ =0x0000010B
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08062CD4
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _08062CD0 @ =0x08062D85
	b _08062CD6
	.byte 0x00, 0x00
_08062CCC: .4byte 0x0000010B
_08062CD0: .4byte sub_8062D84
_08062CD4:
	ldr r0, _08062CE0 @ =0x08062D69
_08062CD6:
	str r0, [r4, #0x4C]
_08062CD8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062CE0: .4byte sub_8062D68
	.byte 0x00, 0xB5, 0x02, 0x1C, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x10, 0x1C, 0xA0, 0x30, 0x01, 0x21, 0x01, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x0D, 0x2E, 0x06, 0x08, 0x10, 0xB5, 0x04, 0x1C
	.byte 0xE0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x22, 0x81, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x21, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x21, 0x1C, 0x9C, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x37, 0xF1, 0xF3, 0xF8, 0x22, 0x1C, 0xA0, 0x32, 0x01, 0x21, 0x01, 0x40, 0x02, 0x31
	.byte 0x11, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x71, 0x2E, 0x06, 0x08
	thumb_func_start sub_8062D68
sub_8062D68:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062D80 @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08062D80: .4byte sub_808750C
	thumb_func_start sub_8062D84
sub_8062D84:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062DD0
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08062DAE
	adds r1, #0xFF
_08062DAE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062DB8
	adds r2, #0xFF
_08062DB8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08062DC2
	adds r3, #0xFF
_08062DC2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062DD8 @ =0x0000105D
	bl sub_80DF024
	ldr r0, _08062DDC @ =0x08062DE1
	str r0, [r4, #0x4C]
_08062DD0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08062DD8: .4byte 0x0000105D
_08062DDC: .4byte sub_8062DE0
	thumb_func_start sub_8062DE0
sub_8062DE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062E00
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062E08 @ =0x0806259D
	str r0, [r4, #0x4C]
_08062E00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062E08: .4byte sub_806259C
	thumb_func_start sub_8062E0C
sub_8062E0C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062E60
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08062E32
	adds r1, #0xFF
_08062E32:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062E3C
	adds r2, #0xFF
_08062E3C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08062E46
	adds r3, #0xFF
_08062E46:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062E68 @ =0x0000105D
	bl sub_80DF024
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08062E6C @ =0x08062DE1
	str r0, [r4, #0x4C]
_08062E60:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08062E68: .4byte 0x0000105D
_08062E6C: .4byte sub_8062DE0
	thumb_func_start sub_8062E70
sub_8062E70:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08062E8C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062E94 @ =0x08062E99
	str r0, [r4, #0x4C]
_08062E8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062E94: .4byte sub_8062E98
	thumb_func_start sub_8062E98
sub_8062E98:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062EF4
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
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
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062EFC @ =0x08062F01
	str r0, [r4, #0x4C]
_08062EF4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062EFC: .4byte sub_8062F00
	thumb_func_start sub_8062F00
sub_8062F00:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F34
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F24
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062F30
_08062F24:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062F30:
	ldr r0, _08062F3C @ =0x08062F41
	str r0, [r4, #0x4C]
_08062F34:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062F3C: .4byte sub_8062F40
	thumb_func_start sub_8062F40
sub_8062F40:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062F80
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F68
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062F74
_08062F68:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062F74:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _08062F88 @ =0x08062F8D
	str r0, [r4, #0x4C]
_08062F80:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062F88: .4byte sub_8062F8C
	thumb_func_start sub_8062F8C
sub_8062F8C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062FC8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062FB8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062FC4
_08062FB8:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062FC4:
	ldr r0, _08062FD0 @ =0x08062E0D
	str r0, [r4, #0x4C]
_08062FC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062FD0: .4byte sub_8062E0C
	thumb_func_start sub_8062FD4
sub_8062FD4:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08062FE8
	b _080630F2
_08062FE8:
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08062FFC
	adds r1, #0xFF
_08062FFC:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08063006
	adds r2, #0xFF
_08063006:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063010
	adds r3, #0xFF
_08063010:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080630FC @ =0x000012AB
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063024
	adds r0, #0xFF
_08063024:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0C
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063032
	adds r0, #0xFF
_08063032:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806303E
	adds r0, #0xFF
_0806303E:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063100 @ =0x000040F4
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08063104 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063108 @ =0x080632E5
	str r0, [r5, #0x58]
	ldr r0, _0806310C @ =0x080632C1
	str r0, [r5, #0x5C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08063110 @ =0x08063119
	str r0, [r5, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08063114 @ =0x08063309
	str r0, [r6, #0x4C]
_080630F2:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080630FC: .4byte 0x000012AB
_08063100: .4byte 0x000040F4
_08063104: .4byte sub_8087540
_08063108: .4byte sub_80632E4
_0806310C: .4byte sub_80632C0
_08063110: .4byte sub_8063118
_08063114: .4byte sub_8063308
