	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8046A90
sub_8046A90:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, [sp, #0x014]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, r5, #0x0
	cmp r2, #0x01
	bne _08046ABA
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x04]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08046ABA:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	adds r2, #0x66
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r2, #0x08
	adds r0, r4, r2
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r2, [r1, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bne _08046AE0
	movs r0, #0x00
	b _08046B1E
_08046AE0:
	cmp r6, #0x01
	bne _08046AF8
	adds r1, r5, #0x0
	cmp r2, r0
	blt _08046AEC
	negs r1, r5
_08046AEC:
	ldr r2, _08046AF4 @ =0x0000030A
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	b _08046AFE
_08046AF4: .4byte 0x0000030A
_08046AF8:
	ldr r1, _08046B24 @ =0x0000031A
	adds r0, r4, r1
	strh r7, [r0, #0x00]
_08046AFE:
	ldr r2, _08046B28 @ =0x00000312
	adds r1, r4, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08046B2C @ =0x000002B5
	adds r3, r4, r0
	movs r0, #0x03
	ands r6, r0
	lsls r2, r6, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0x01
_08046B1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08046B24: .4byte 0x0000031A
_08046B28: .4byte 0x00000312
_08046B2C: .4byte 0x000002B5
	thumb_func_start sub_8046B30
sub_8046B30:
	push {r4, r5, r6, lr}
	mov r12, r0
	adds r6, r1, #0x0
	ldr r0, [sp, #0x010]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0x0
	cmp r2, #0x01
	bne _08046B5A
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x06]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08046B5A:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x06]
	movs r1, #0xBF
	lsls r1, r1, #0x02
	add r1, r12
	strh r0, [r1, #0x00]
	movs r0, #0xC1
	lsls r0, r0, #0x02
	add r0, r12
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r2, [r1, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bne _08046B84
	movs r0, #0x00
	b _08046BBE
_08046B84:
	cmp r6, #0x01
	bne _08046B9A
	adds r1, r4, #0x0
	cmp r2, r0
	blt _08046B90
	negs r1, r4
_08046B90:
	movs r0, #0xC3
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	b _08046BA2
_08046B9A:
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r12
	strh r5, [r0, #0x00]
_08046BA2:
	movs r1, #0xC5
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, _08046BC4 @ =0x000002B5
	add r2, r12
	lsls r3, r6, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08046BBE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08046BC4: .4byte 0x000002B5
	.byte 0xF0, 0xB5, 0x04, 0x1C, 0x0E, 0x1C, 0x05, 0x98, 0x1B, 0x04, 0x1B, 0x0C, 0x00, 0x04, 0x05, 0x0C
	.byte 0x2F, 0x1C, 0x01, 0x2A, 0x09, 0xD1, 0xA5, 0x21, 0x89, 0x00, 0x60, 0x18, 0x01, 0x68, 0x18, 0x04
	.byte 0x00, 0x14, 0x09, 0x89, 0x40, 0x18, 0x00, 0x04, 0x03, 0x0C, 0xA5, 0x22, 0x92, 0x00, 0xA0, 0x18
	.byte 0x00, 0x68, 0x01, 0x89, 0x66, 0x32, 0xA0, 0x18, 0x01, 0x80, 0x07, 0x49, 0x60, 0x18, 0x03, 0x80
	.byte 0x04, 0x32, 0xA0, 0x18, 0x05, 0x4B, 0xE1, 0x18, 0x00, 0x23, 0xC2, 0x5E, 0x00, 0x23, 0xC8, 0x5E
	.byte 0x82, 0x42, 0x05, 0xD1, 0x00, 0x20, 0x21, 0xE0, 0x02, 0x03, 0x00, 0x00, 0x06, 0x03, 0x00, 0x00
	.byte 0x01, 0x2E, 0x09, 0xD1, 0x29, 0x1C, 0x82, 0x42, 0x00, 0xDB, 0x69, 0x42, 0x01, 0x4A, 0xA0, 0x18
	.byte 0x01, 0x80, 0x04, 0xE0, 0x0E, 0x03, 0x00, 0x00, 0x0A, 0x4B, 0xE0, 0x18, 0x07, 0x80, 0x0A, 0x48
	.byte 0x21, 0x18, 0x00, 0x20, 0x08, 0x80, 0x09, 0x49, 0x62, 0x18, 0x03, 0x20, 0x06, 0x40, 0x11, 0x78
	.byte 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x30, 0x43, 0x10, 0x70, 0x01, 0x20, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x1E, 0x03, 0x00, 0x00, 0x16, 0x03, 0x00, 0x00, 0xB6, 0x02, 0x00, 0x00
	.byte 0x70, 0xB5, 0x84, 0x46, 0x0D, 0x1C, 0x04, 0x98, 0x1B, 0x04, 0x1B, 0x0C, 0x00, 0x04, 0x04, 0x0C
	.byte 0x26, 0x1C, 0x01, 0x2A, 0x09, 0xD1, 0xA5, 0x20, 0x80, 0x00, 0x60, 0x44, 0x01, 0x68, 0x18, 0x04
	.byte 0x00, 0x14, 0x49, 0x89, 0x40, 0x18, 0x00, 0x04, 0x03, 0x0C, 0xA5, 0x20, 0x80, 0x00, 0x60, 0x44
	.byte 0x00, 0x68, 0x40, 0x89, 0xC0, 0x21, 0x89, 0x00, 0x61, 0x44, 0x08, 0x80, 0xC2, 0x20, 0x80, 0x00
	.byte 0x60, 0x44, 0x03, 0x80, 0x00, 0x20, 0x0A, 0x5E, 0x18, 0x04, 0x00, 0x14, 0x82, 0x42, 0x01, 0xD1
	.byte 0x00, 0x20, 0x1F, 0xE0, 0x01, 0x2D, 0x08, 0xD1, 0x21, 0x1C, 0x82, 0x42, 0x00, 0xDB, 0x61, 0x42
	.byte 0xC4, 0x20, 0x80, 0x00, 0x60, 0x44, 0x01, 0x80, 0x03, 0xE0, 0xC8, 0x20, 0x80, 0x00, 0x60, 0x44
	.byte 0x06, 0x80, 0xC6, 0x21, 0x89, 0x00, 0x61, 0x44, 0x00, 0x20, 0x08, 0x80, 0x07, 0x4B, 0x63, 0x44
	.byte 0x03, 0x20, 0x05, 0x40, 0xAA, 0x00, 0x19, 0x78, 0x0D, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x43
	.byte 0x18, 0x70, 0x01, 0x20, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xB6, 0x02, 0x00, 0x00
	thumb_func_start sub_8046D18
sub_8046D18:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, _08046D78 @ =0x0000020F
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08046D2C
	b _0804713A
_08046D2C:
	ldr r2, _08046D7C @ =0x000002B5
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	bne _08046DA8
	ldr r3, _08046D80 @ =0x00000312
	adds r1, r5, r3
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	ldr r6, _08046D84 @ =0x0000030A
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x04]
	adds r0, r0, r4
	strh r0, [r1, #0x04]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046D8C
	ldr r2, [r3, #0x00]
	ldr r1, _08046D88 @ =0x00000302
	adds r0, r5, r1
	movs r3, #0x04
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046DF0
	strh r3, [r2, #0x04]
	b _08046DF0
_08046D78: .4byte 0x0000020F
_08046D7C: .4byte 0x000002B5
_08046D80: .4byte 0x00000312
_08046D84: .4byte 0x0000030A
_08046D88: .4byte 0x00000302
_08046D8C:
	ldr r2, [r3, #0x00]
	ldr r6, _08046DA4 @ =0x00000302
	adds r0, r5, r6
	movs r3, #0x04
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046DF0
	strh r3, [r2, #0x04]
	b _08046DF0
_08046DA4: .4byte 0x00000302
_08046DA8:
	cmp r1, #0x20
	bne _08046DF0
	ldr r6, _08046E44 @ =0x00000312
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046E48 @ =0x03001038
	ldr r0, _08046E4C @ =0x0819832C
	ldr r1, _08046E50 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _08046E54 @ =0x00000302
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	ldr r3, _08046E58 @ =0x0000031A
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x04]
_08046DF0:
	ldr r1, _08046E5C @ =0x000002B5
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x40
	bne _08046E7A
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	movs r6, #0xC3
	lsls r6, r6, #0x02
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x06]
	adds r0, r0, r4
	strh r0, [r1, #0x06]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046E60
	ldr r2, [r3, #0x00]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x06
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046EC8
	strh r3, [r2, #0x06]
	b _08046EC8
	.byte 0x00, 0x00
_08046E44: .4byte 0x00000312
_08046E48: .4byte 0x03001038
_08046E4C: .4byte 0x0819832C
_08046E50: .4byte 0x08198220
_08046E54: .4byte 0x00000302
_08046E58: .4byte 0x0000031A
_08046E5C: .4byte 0x000002B5
_08046E60:
	ldr r2, [r3, #0x00]
	movs r6, #0xC1
	lsls r6, r6, #0x02
	adds r0, r5, r6
	movs r3, #0x06
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046EC8
	strh r3, [r2, #0x06]
	b _08046EC8
_08046E7A:
	cmp r1, #0x80
	bne _08046EC8
	movs r6, #0xC5
	lsls r6, r6, #0x02
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046F14 @ =0x03001038
	ldr r0, _08046F18 @ =0x0819832C
	ldr r1, _08046F1C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x06]
_08046EC8:
	ldr r1, _08046F20 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x01
	bne _08046F4C
	ldr r2, _08046F24 @ =0x00000316
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	ldr r6, _08046F28 @ =0x0000030E
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x08]
	adds r0, r0, r4
	strh r0, [r1, #0x08]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046F30
	ldr r2, [r3, #0x00]
	ldr r1, _08046F2C @ =0x00000306
	adds r0, r5, r1
	movs r3, #0x08
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046F94
	strh r3, [r2, #0x08]
	b _08046F94
_08046F14: .4byte 0x03001038
_08046F18: .4byte 0x0819832C
_08046F1C: .4byte 0x08198220
_08046F20: .4byte 0x000002B6
_08046F24: .4byte 0x00000316
_08046F28: .4byte 0x0000030E
_08046F2C: .4byte 0x00000306
_08046F30:
	ldr r2, [r3, #0x00]
	ldr r6, _08046F48 @ =0x00000306
	adds r0, r5, r6
	movs r3, #0x08
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046F94
	strh r3, [r2, #0x08]
	b _08046F94
_08046F48: .4byte 0x00000306
_08046F4C:
	cmp r1, #0x02
	bne _08046F94
	ldr r6, _08046FE8 @ =0x00000316
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046FEC @ =0x03001038
	ldr r0, _08046FF0 @ =0x0819832C
	ldr r1, _08046FF4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _08046FF8 @ =0x00000306
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	ldr r3, _08046FFC @ =0x0000031E
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x08]
_08046F94:
	ldr r1, _08047000 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r0
	cmp r1, #0x04
	bne _0804701E
	movs r2, #0xC6
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	movs r6, #0xC4
	lsls r6, r6, #0x02
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x0A]
	adds r0, r0, r4
	strh r0, [r1, #0x0A]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08047004
	ldr r2, [r3, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x0A
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _0804706C
	strh r3, [r2, #0x0A]
	b _0804706C
	.byte 0x00, 0x00
_08046FE8: .4byte 0x00000316
_08046FEC: .4byte 0x03001038
_08046FF0: .4byte 0x0819832C
_08046FF4: .4byte 0x08198220
_08046FF8: .4byte 0x00000306
_08046FFC: .4byte 0x0000031E
_08047000: .4byte 0x000002B6
_08047004:
	ldr r2, [r3, #0x00]
	movs r6, #0xC2
	lsls r6, r6, #0x02
	adds r0, r5, r6
	movs r3, #0x0A
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _0804706C
	strh r3, [r2, #0x0A]
	b _0804706C
_0804701E:
	cmp r1, #0x08
	bne _0804706C
	movs r6, #0xC6
	lsls r6, r6, #0x02
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _080470AC @ =0x03001038
	ldr r0, _080470B0 @ =0x0819832C
	ldr r1, _080470B4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	movs r3, #0xC8
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x0A]
_0804706C:
	ldr r1, _080470B8 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	bne _080470E8
	movs r2, #0xCC
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r2, r5, r3
	movs r4, #0xC9
	lsls r4, r4, #0x02
	adds r0, r5, r4
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	subs r3, #0x04
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	ble _080470BC
	cmp r1, r0
	ble _080470C6
	b _080470C4
_080470AC: .4byte 0x03001038
_080470B0: .4byte 0x0819832C
_080470B4: .4byte 0x08198220
_080470B8: .4byte 0x000002B6
_080470BC:
	cmp r0, #0x00
	bge _080470C6
	cmp r1, r0
	bge _080470C6
_080470C4:
	str r0, [r2, #0x00]
_080470C6:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r3, [r0, #0x00]
	ldr r6, _080470E4 @ =0x00000322
	adds r2, r5, r6
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x0C]
	b _0804713A
	.byte 0x00, 0x00
_080470E4: .4byte 0x00000322
_080470E8:
	cmp r1, #0x20
	bne _0804713A
	movs r2, #0xCC
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08047140 @ =0x03001038
	ldr r0, _08047144 @ =0x0819832C
	ldr r1, _08047148 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r4, #0xCA
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r6, _0804714C @ =0x00000322
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r1, [r4, r6]
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	ldrh r1, [r3, #0x00]
	muls r0, r1
	ldr r3, _08047150 @ =0x00000332
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xCB
	lsls r6, r6, #0x02
	adds r1, r5, r6
	str r0, [r1, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x0C]
_0804713A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08047140: .4byte 0x03001038
_08047144: .4byte 0x0819832C
_08047148: .4byte 0x08198220
_0804714C: .4byte 0x00000322
_08047150: .4byte 0x00000332
	thumb_func_start sub_8047154
sub_8047154:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r12, r2
	movs r6, #0x00
	mov r8, r6
	ldr r1, _08047198 @ =0x00000216
	adds r0, r7, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r2
	cmp r1, #0x00
	beq _0804721C
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	bne _080471B0
	cmp r1, #0x04
	bne _0804719C
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08047188
	adds r0, r5, #0x3
_08047188:
	asrs r0, r0, #0x02
	lsls r1, r0, #0x01
	adds r6, r1, r0
	lsls r0, r0, #0x02
	subs r5, r5, r0
	lsls r5, r5, #0x01
	b _080471D4
	.byte 0x00, 0x00
_08047198: .4byte 0x00000216
_0804719C:
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471A4
	adds r0, r5, #0x7
_080471A4:
	asrs r0, r0, #0x03
	lsls r1, r0, #0x02
	adds r6, r1, r0
	lsls r0, r0, #0x03
	subs r5, r5, r0
	b _080471D4
_080471B0:
	cmp r1, #0x04
	bne _080471C6
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471BC
	adds r0, r5, #0x3
_080471BC:
	asrs r0, r0, #0x02
	lsls r6, r0, #0x02
	subs r5, r5, r6
	lsls r5, r5, #0x01
	b _080471D4
_080471C6:
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080471CE
	adds r0, r5, #0x7
_080471CE:
	asrs r0, r0, #0x03
	lsls r6, r0, #0x03
	subs r5, r5, r6
_080471D4:
	adds r4, r7, #0x0
	adds r4, #0x24
	movs r0, #0x07
	adds r2, r5, #0x0
	ands r2, r0
	ldrb r3, [r4, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x4C
	ldrb r0, [r3, #0x00]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r2, _08047250 @ =0x083A05EC
	ldr r1, _08047254 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	ands r5, r0
	lsrs r0, r0, #0x07
	mov r8, r0
_0804721C:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	adds r1, r6, r5
	movs r2, #0x00
	str r2, [sp, #0x000]
	mov r2, r12
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x00]
	mov r1, r8
	lsls r3, r1, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08047250: .4byte 0x083A05EC
_08047254: .4byte 0x00000216
