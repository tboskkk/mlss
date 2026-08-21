	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80D0BA0
sub_80D0BA0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D0C74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	ldr r0, [r5, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D0C6A
	ldr r0, [r4, #0x28]
	ldr r1, _080D0C78 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r2, [r5, #0x30]
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x46
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x30]
	adds r0, #0xCA
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x30]
	ldr r1, _080D0C7C @ =0x0413438C
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldr r1, [r5, #0x30]
	ldrh r0, [r1, #0x24]
	adds r0, #0x01
	strh r0, [r1, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D0C30
	ldr r2, _080D0C78 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D0C66
_080D0C30:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D0C38
	adds r1, #0xFF
_080D0C38:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D0C4E
	adds r2, #0xFF
_080D0C4E:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x7D
	movs r3, #0x00
	bl sub_80DF024
_080D0C66:
	ldr r0, _080D0C80 @ =0x080D2D35
	str r0, [r6, #0x4C]
_080D0C6A:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D0C74: .4byte 0x03000FD8
_080D0C78: .4byte 0x00000111
_080D0C7C: .4byte 0x0413438C
_080D0C80: .4byte sub_80D2D34
	thumb_func_start sub_80D0C84
sub_80D0C84:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D0D14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0CAC
	cmp r1, #0x04
	bne _080D0CC8
_080D0CAC:
	ldr r2, _080D0D18 @ =0x00002054
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D0CC8:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0CDA
	cmp r1, #0x04
	bne _080D0D0A
_080D0CDA:
	ldr r2, _080D0D1C @ =0x03001038
	ldr r0, _080D0D20 @ =0x0819832C
	ldr r1, _080D0D24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D0D0A:
	ldr r0, _080D0D28 @ =0x080D0D2D
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D0D14: .4byte 0x03000FD8
_080D0D18: .4byte 0x00002054
_080D0D1C: .4byte 0x03001038
_080D0D20: .4byte 0x0819832C
_080D0D24: .4byte 0x08198220
_080D0D28: .4byte sub_80D0D2C
	thumb_func_start sub_80D0D2C
sub_80D0D2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D0DE0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r9, r0
	ldr r4, [r1, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	ldr r5, [r6, #0x2C]
	bl sub_80884AC
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D0D62
	b _080D0E60
_080D0D62:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x7D
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0D82
	cmp r1, #0x04
	bne _080D0E34
_080D0D82:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D0D8A
	adds r1, #0xFF
_080D0D8A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080D0DA0
	adds r0, #0xFF
_080D0DA0:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080D0DB6
	adds r3, #0xFF
_080D0DB6:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x0A
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D0DE4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D0DF4
_080D0DE0: .4byte 0x03000FD8
_080D0DE4:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D0DF4:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D0DFC
	adds r0, #0xFF
_080D0DFC:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D0E70 @ =0x03001038
	ldr r0, _080D0E74 @ =0x0819832C
	ldr r1, _080D0E78 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D0E16
	adds r1, #0x3F
_080D0E16:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080D0E34:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	mov r3, r9
	adds r3, #0xAE
	ldrh r2, [r3, #0x00]
	ldr r1, _080D0E7C @ =0x00000FFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xA8
	movs r0, #0x01
	str r0, [r2, #0x00]
	adds r2, #0x06
	ldrh r0, [r2, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r0, _080D0E80 @ =0x080D0E85
	str r0, [r6, #0x4C]
_080D0E60:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D0E70: .4byte 0x03001038
_080D0E74: .4byte 0x0819832C
_080D0E78: .4byte 0x08198220
_080D0E7C: .4byte 0x00000FFF
_080D0E80: .4byte sub_80D0E84
	thumb_func_start sub_80D0E84
sub_80D0E84:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r0, _080D0FAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r6, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	movs r1, #0xB4
	adds r1, r1, r4
	mov r9, r1
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	ldrh r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrh r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x86
	strh r0, [r3, #0x00]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r1, r0, #0x01
	mov r12, r1
	lsls r2, r0, #0x02
	str r2, [sp, #0x008]
	str r2, [sp, #0x004]
	lsls r1, r0, #0x03
	adds r1, r1, r0
	str r1, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	ldr r2, [sp, #0x00C]
	cmp r0, r2
	bge _080D0EFC
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D0EFC:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r10, r1
	cmp r0, #0x00
	beq _080D0F0C
	b _080D1448
_080D0F0C:
	mov r1, r12
	cmp r1, #0x00
	bge _080D0F14
	movs r1, #0x00
_080D0F14:
	ldr r0, _080D0FB0 @ =0x00007FFF
	cmp r1, r0
	ble _080D0F1C
	adds r1, r0, #0x0
_080D0F1C:
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080D0F30
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D0F32
_080D0F30:
	movs r2, #0x00
_080D0F32:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r10, r1
	cmp r2, #0x00
	beq _080D1018
	ldr r2, _080D0FAC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D0FB4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0F66
	movs r1, #0x4C
_080D0F5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F5A
_080D0F66:
	mov r2, r8
	cmp r2, #0x00
	beq _080D0F7A
	movs r1, #0x4C
_080D0F6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F6E
_080D0F7A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0F8E
	movs r1, #0x4C
_080D0F82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F82
_080D0F8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1010
	movs r1, #0x04
_080D0F98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0FA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0FA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0F98
	b _080D1010
	.byte 0x00, 0x00
_080D0FAC: .4byte 0x03000FD8
_080D0FB0: .4byte 0x00007FFF
_080D0FB4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0FCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FBE
_080D0FCA:
	mov r2, r8
	cmp r2, #0x00
	beq _080D0FE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FD4
_080D0FE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0FF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FEA
_080D0FF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1010
	movs r1, #0x10
_080D1000:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D100A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D100A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1000
_080D1010:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D1018:
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D1022
	movs r1, #0x00
_080D1022:
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	bge _080D102A
	movs r2, #0x00
_080D102A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1034
	adds r1, r0, #0x0
_080D1034:
	ldr r0, _080D112C @ =0x00007FFF
	cmp r2, r0
	ble _080D103C
	adds r2, r0, #0x0
_080D103C:
	cmp r2, r1
	bge _080D1042
	adds r1, r2, #0x0
_080D1042:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D105A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D105C
_080D105A:
	movs r1, #0x00
_080D105C:
	cmp r1, #0x00
	bne _080D1062
	b _080D11AE
_080D1062:
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080D1130 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1082
	b _080D11AE
_080D1082:
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x20
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D1134 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D119A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1138
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D10E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D10D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D10D8
_080D10E4:
	mov r2, r8
	cmp r2, #0x00
	beq _080D10FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D10EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D10EE
_080D10FA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1110
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1104:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1104
_080D1110:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1196
	movs r1, #0x10
_080D111A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1124
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1124:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D111A
	b _080D1196
_080D112C: .4byte 0x00007FFF
_080D1130: .4byte 0x0300034C
_080D1134: .4byte 0x03000FD8
_080D1138:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1150
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1144:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1144
_080D1150:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1166
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D115A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D115A
_080D1166:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D117C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1170:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1170
_080D117C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1196
	movs r1, #0x10
_080D1186:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1190
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1190:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1186
_080D1196:
	bl sub_807F448
_080D119A:
	mov r1, r10
	ldrh r0, [r1, #0x00]
	ldr r1, _080D1284 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r10
	strh r1, [r3, #0x00]
_080D11AE:
	mov r4, r10
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D11BA
	b _080D1448
_080D11BA:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D11C2
	movs r1, #0x00
_080D11C2:
	ldr r0, _080D1288 @ =0x00007FFF
	cmp r1, r0
	ble _080D11CA
	adds r1, r0, #0x0
_080D11CA:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D11E2
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D11E4
_080D11E2:
	movs r2, #0x00
_080D11E4:
	cmp r2, #0x00
	bne _080D11EA
	b _080D12F8
_080D11EA:
	ldr r3, _080D128C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r10
	ldrh r1, [r0, #0x00]
	ldr r0, _080D1284 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r10
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1290
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D123A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D122E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D122E
_080D123A:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1250
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1244:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1244
_080D1250:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1266
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D125A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D125A
_080D1266:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D12EC
	movs r1, #0x10
_080D1270:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D127A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D127A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1270
	b _080D12EC
	.byte 0x00, 0x00
_080D1284: .4byte 0x00000FFF
_080D1288: .4byte 0x00007FFF
_080D128C: .4byte 0x03000FD8
_080D1290:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D12A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D129A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D129A
_080D12A6:
	mov r2, r8
	cmp r2, #0x00
	beq _080D12BC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D12B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D12B0
_080D12BC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D12D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D12C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D12C6
_080D12D2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D12EC
	movs r1, #0x10
_080D12DC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D12E6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D12E6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D12DC
_080D12EC:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D1448
_080D12F8:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	ble _080D1306
	b _080D1448
_080D1306:
	ldr r0, _080D13C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D131C
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D131C
	b _080D1448
_080D131C:
	ldr r2, _080D13CC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D134C
	b _080D1448
_080D134C:
	mov r0, r10
	ldrh r1, [r0, #0x00]
	ldr r0, _080D13D0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D13D4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1380
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1374:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1374
_080D1380:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1396
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D138A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D138A
_080D1396:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D13AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13A0
_080D13AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1430
	movs r1, #0x10
_080D13B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D13C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D13C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D13B6
	b _080D1430
_080D13C8: .4byte 0x0300034C
_080D13CC: .4byte 0x03000FD8
_080D13D0: .4byte 0x00000FFF
_080D13D4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D13EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13DE
_080D13EA:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1400
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13F4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13F4
_080D1400:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1416
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D140A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D140A
_080D1416:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1430
	movs r1, #0x10
_080D1420:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D142A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D142A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1420
_080D1430:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x20
	bl sub_807EAE4
_080D1448:
	mov r2, r10
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080D14DC
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r2, #0x00
	bge _080D145C
	movs r2, #0x00
_080D145C:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080D1464
	movs r3, #0x00
_080D1464:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D146E
	adds r2, r0, #0x0
_080D146E:
	ldr r0, _080D14D0 @ =0x00007FFF
	cmp r3, r0
	ble _080D1476
	adds r3, r0, #0x0
_080D1476:
	cmp r3, r2
	bge _080D147C
	adds r2, r3, #0x0
_080D147C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D1496
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080D1498
_080D1496:
	movs r2, #0x00
_080D1498:
	cmp r2, #0x00
	beq _080D14DC
	cmp r1, #0x02
	bne _080D14DC
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D14B2
	cmp r1, #0x04
	bne _080D14B6
_080D14B2:
	ldr r0, _080D14D4 @ =0x080D2DA5
	str r0, [r7, #0x4C]
_080D14B6:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D14CA
	cmp r1, #0x04
	beq _080D14CA
	b _080D15D0
_080D14CA:
	ldr r0, _080D14D8 @ =0x080CFCCD
	str r0, [r5, #0x4C]
	b _080D15D0
_080D14D0: .4byte 0x00007FFF
_080D14D4: .4byte sub_80D2DA4
_080D14D8: .4byte sub_80CFCCC
_080D14DC:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D14E4
	movs r1, #0x00
_080D14E4:
	ldr r0, _080D15E0 @ =0x00007FFF
	cmp r1, r0
	ble _080D14EC
	adds r1, r0, #0x0
_080D14EC:
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080D1506
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1508
_080D1506:
	movs r2, #0x00
_080D1508:
	cmp r2, #0x00
	beq _080D1530
	adds r1, r7, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080D1530
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D152C
	cmp r1, #0x04
	bne _080D1530
_080D152C:
	ldr r0, _080D15E4 @ =0x080CFE81
	str r0, [r5, #0x4C]
_080D1530:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D15D0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r7, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D15E8 @ =0x0413428C
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r7, #0x24]
	adds r0, #0x01
	strh r0, [r7, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D1596
	ldr r3, _080D15EC @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D15CC
_080D1596:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D159E
	adds r1, #0xFF
_080D159E:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D15B4
	adds r2, #0xFF
_080D15B4:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	movs r0, #0x6A
	movs r3, #0x00
	bl sub_80DF024
_080D15CC:
	ldr r0, _080D15F0 @ =0x080D2D29
	str r0, [r7, #0x4C]
_080D15D0:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D15E0: .4byte 0x00007FFF
_080D15E4: .4byte sub_80CFE80
_080D15E8: .4byte 0x0413428C
_080D15EC: .4byte 0x00000111
_080D15F0: .4byte sub_80D2D28
	thumb_func_start sub_80D15F4
sub_80D15F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D1648 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D162A
	cmp r1, #0x04
	bne _080D1668
_080D162A:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _080D164C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080D1658
	.byte 0x00, 0x00
_080D1648: .4byte 0x03000FD8
_080D164C:
	ldr r2, _080D16E4 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080D1658:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D1668:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1684
	cmp r1, #0x04
	bne _080D1736
_080D1684:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D168C
	adds r1, #0xFF
_080D168C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080D16A2
	adds r0, #0xFF
_080D16A2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080D16B8
	adds r3, #0xFF
_080D16B8:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x14
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D16E8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D16F8
_080D16E4: .4byte 0x0000204D
_080D16E8:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D16F8:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D1700
	adds r0, #0xFF
_080D1700:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D1748 @ =0x03001038
	ldr r0, _080D174C @ =0x0819832C
	ldr r1, _080D1750 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D171A
	adds r1, #0x3F
_080D171A:
	asrs r1, r1, #0x06
	adds r1, #0x02
	movs r0, #0x04
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080D1736:
	ldr r0, _080D1754 @ =0x080D1759
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D1748: .4byte 0x03001038
_080D174C: .4byte 0x0819832C
_080D1750: .4byte 0x08198220
_080D1754: .4byte sub_80D1758
	thumb_func_start sub_80D1758
sub_80D1758:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D1890 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, #0xCD
	movs r0, #0x00
	ldsb r0, [r4, r0]
	subs r4, r0, #0x4
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080D17AA
	lsls r1, r4, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	cmp r3, r0
	bge _080D17AA
	ldr r2, _080D1894 @ =0x03001038
	ldr r0, _080D1898 @ =0x0819832C
	ldr r1, _080D189C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080D17AA:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D1884
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D17E4
	cmp r2, #0x04
	bne _080D1848
_080D17E4:
	ldr r3, [r5, #0x30]
	ldr r0, [r3, #0x38]
	cmp r0, #0x00
	bge _080D17EE
	adds r0, #0xFF
_080D17EE:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x14
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _080D1808
	adds r0, #0xFF
_080D1808:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r1, [r3, #0x40]
	cmp r1, #0x00
	bge _080D181E
	adds r1, #0xFF
_080D181E:
	asrs r3, r1, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bge _080D1834
	adds r0, #0xFF
_080D1834:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D1848:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D1856
	cmp r2, #0x04
	bne _080D1872
_080D1856:
	ldr r2, _080D18A0 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D1872:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D18A4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D18A8 @ =0x080D18AD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D1884:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D1890: .4byte 0x03000FD8
_080D1894: .4byte 0x03001038
_080D1898: .4byte 0x0819832C
_080D189C: .4byte 0x08198220
_080D18A0: .4byte 0x00002036
_080D18A4: .4byte 0x00000FFF
_080D18A8: .4byte sub_80D18AC
	thumb_func_start sub_80D18AC
sub_80D18AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D19D4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D18F6
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r2, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080D18F6
	strh r1, [r2, #0x06]
_080D18F6:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r0, r2, #0x02
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r3, r0, r1
	lsls r2, r2, #0x03
	adds r4, r1, #0x0
	adds r4, r4, r2
	mov r9, r4
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r9
	bge _080D192C
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D192C:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D193C
	b _080D1E5A
_080D193C:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080D1944
	movs r2, #0x00
_080D1944:
	ldr r0, _080D19D8 @ =0x00007FFF
	cmp r2, r0
	ble _080D194C
	adds r2, r0, #0x0
_080D194C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x008]
	cmp r1, r2
	bgt _080D1966
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D1968
_080D1966:
	movs r1, #0x00
_080D1968:
	cmp r1, #0x00
	beq _080D1A40
	ldr r2, _080D19D4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D19DC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1990
	movs r1, #0x66
_080D1984:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1984
_080D1990:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D19A4
	movs r1, #0x66
_080D1998:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1998
_080D19A4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D19B8
	movs r1, #0x66
_080D19AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19AC
_080D19B8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1A38
	movs r1, #0x06
_080D19C2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D19CC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D19CC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D19C2
	b _080D1A38
_080D19D4: .4byte 0x03000FD8
_080D19D8: .4byte 0x00007FFF
_080D19DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D19F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D19E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19E6
_080D19F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1A08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D19FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19FC
_080D1A08:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1A1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1A12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1A12
_080D1A1E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1A38
	movs r1, #0x10
_080D1A28:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1A32
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1A32:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1A28
_080D1A38:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D1A40:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	mov r3, r9
	cmp r3, #0x00
	bge _080D1A4E
	movs r2, #0x00
_080D1A4E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1A58
	adds r1, r0, #0x0
_080D1A58:
	ldr r0, _080D1B4C @ =0x00007FFF
	cmp r2, r0
	ble _080D1A60
	adds r2, r0, #0x0
_080D1A60:
	cmp r2, r1
	bge _080D1A66
	adds r1, r2, #0x0
_080D1A66:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D1A7C
	ldr r4, [sp, #0x008]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D1A7E
_080D1A7C:
	movs r1, #0x00
_080D1A7E:
	cmp r1, #0x00
	bne _080D1A84
	b _080D1BCC
_080D1A84:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x20
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D1B50 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1AA2
	b _080D1BCC
_080D1AA2:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D1B54 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D1BBA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1B58
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1B02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1AF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1AF6
_080D1B02:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1B18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B0C
_080D1B18:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1B2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B22
_080D1B2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1BB6
	movs r1, #0x10
_080D1B38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1B42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1B42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1B38
	b _080D1BB6
	.byte 0x00, 0x00
_080D1B4C: .4byte 0x00007FFF
_080D1B50: .4byte 0x0300034C
_080D1B54: .4byte 0x03000FD8
_080D1B58:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1B70
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B64
_080D1B70:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1B86
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B7A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B7A
_080D1B86:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1B9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B90
_080D1B9C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1BB6
	movs r1, #0x10
_080D1BA6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1BB0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1BB0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1BA6
_080D1BB6:
	bl sub_807F448
_080D1BBA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D1C9C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D1BCC:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D1BD8
	b _080D1E5A
_080D1BD8:
	mov r1, r9
	cmp r1, #0x00
	bge _080D1BE0
	movs r1, #0x00
_080D1BE0:
	ldr r0, _080D1CA0 @ =0x00007FFF
	cmp r1, r0
	ble _080D1BE8
	adds r1, r0, #0x0
_080D1BE8:
	ldr r2, [sp, #0x008]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080D1BFE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1C00
_080D1BFE:
	movs r2, #0x00
_080D1C00:
	cmp r2, #0x00
	bne _080D1C06
	b _080D1D10
_080D1C06:
	ldr r3, _080D1CA4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080D1C9C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1CA8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1C54
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C48:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C48
_080D1C54:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1C6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C5E
_080D1C6A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1C80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C74
_080D1C80:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1D04
	movs r1, #0x10
_080D1C8A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1C94
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1C94:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1C8A
	b _080D1D04
_080D1C9C: .4byte 0x00000FFF
_080D1CA0: .4byte 0x00007FFF
_080D1CA4: .4byte 0x03000FD8
_080D1CA8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1CBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CB2
_080D1CBE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1CD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CC8
_080D1CD4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1CEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CDE
_080D1CEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1D04
	movs r1, #0x10
_080D1CF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1CFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1CFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1CF4
_080D1D04:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D1E5A
_080D1D10:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080D1D1C
	b _080D1E5A
_080D1D1C:
	ldr r0, _080D1DDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1D32
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D1D32
	b _080D1E5A
_080D1D32:
	ldr r2, _080D1DE0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080D1E5A
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D1DE4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1DE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1D94
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1D88:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1D88
_080D1D94:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1DAA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1D9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1D9E
_080D1DAA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1DC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1DB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1DB4
_080D1DC0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1E44
	movs r1, #0x10
_080D1DCA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1DD4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1DD4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1DCA
	b _080D1E44
_080D1DDC: .4byte 0x0300034C
_080D1DE0: .4byte 0x03000FD8
_080D1DE4: .4byte 0x00000FFF
_080D1DE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1DFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1DF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1DF2
_080D1DFE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1E14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1E08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1E08
_080D1E14:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1E2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1E1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1E1E
_080D1E2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1E44
	movs r1, #0x10
_080D1E34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1E3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1E3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1E34
_080D1E44:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D1E5A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D1ED0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080D1E70
	movs r2, #0x00
_080D1E70:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1E7A
	adds r1, r0, #0x0
_080D1E7A:
	ldr r0, _080D1EC4 @ =0x00007FFF
	cmp r2, r0
	ble _080D1E82
	adds r2, r0, #0x0
_080D1E82:
	cmp r2, r1
	bge _080D1E88
	adds r1, r2, #0x0
_080D1E88:
	mov r4, r10
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, r1
	blt _080D1EA0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D1EA2
_080D1EA0:
	movs r1, #0x00
_080D1EA2:
	cmp r1, #0x00
	beq _080D1ED0
	cmp r3, #0x01
	ble _080D1ED0
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D1EC8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D1ECC @ =0x080D25F9
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D1F84
	.byte 0x00, 0x00
_080D1EC4: .4byte 0x00007FFF
_080D1EC8: .4byte 0x00000FFF
_080D1ECC: .4byte sub_80D25F8
_080D1ED0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D1F94 @ =0x00007FFF
	cmp r1, r0
	ble _080D1EDC
	adds r1, r0, #0x0
_080D1EDC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D1EF4
	mov r6, r10
	movs r2, #0x00
	ldsh r0, [r6, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1EF6
_080D1EF4:
	movs r2, #0x00
_080D1EF6:
	cmp r2, #0x00
	beq _080D1F24
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F0C
	cmp r1, #0x04
	bne _080D1F24
_080D1F0C:
	ldr r2, _080D1F98 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D1F24:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D1F84
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F50
	cmp r1, #0x04
	bne _080D1F54
_080D1F50:
	ldr r0, _080D1F9C @ =0x080D22ED
	str r0, [r2, #0x4C]
_080D1F54:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F66
	cmp r1, #0x04
	bne _080D1F7E
_080D1F66:
	ldr r2, _080D1F98 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D1F7E:
	ldr r0, _080D1FA0 @ =0x080D1FA5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D1F84:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D1F94: .4byte 0x00007FFF
_080D1F98: .4byte 0x00002036
_080D1F9C: .4byte sub_80D22EC
_080D1FA0: .4byte sub_80D1FA4
	thumb_func_start sub_80D1FA4
sub_80D1FA4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D2050 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2048
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1FD2
	cmp r1, #0x04
	bne _080D2016
_080D1FD2:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D1FDA
	adds r1, #0xFF
_080D1FDA:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D1FF0
	adds r2, #0xFF
_080D1FF0:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080D2016:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2028
	cmp r1, #0x04
	bne _080D2044
_080D2028:
	ldr r2, _080D2054 @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D2044:
	ldr r0, _080D2058 @ =0x080D205D
	str r0, [r5, #0x4C]
_080D2048:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2050: .4byte 0x03000FD8
_080D2054: .4byte 0x00002036
_080D2058: .4byte sub_80D205C
	thumb_func_start sub_80D205C
sub_80D205C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D20E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D20DE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D2092
	adds r1, #0xFF
_080D2092:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D209C
	adds r2, #0xFF
_080D209C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D20A6
	adds r3, #0xFF
_080D20A6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D20C2
	cmp r1, #0x04
	bne _080D20DA
_080D20C2:
	ldr r2, _080D20EC @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D20DA:
	ldr r0, _080D20F0 @ =0x080D20F5
	str r0, [r6, #0x4C]
_080D20DE:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D20E8: .4byte 0x03000FD8
_080D20EC: .4byte 0x00002036
_080D20F0: .4byte sub_80D20F4
	thumb_func_start sub_80D20F4
sub_80D20F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D21A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D2116
	b _080D22E0
_080D2116:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2134
	cmp r1, #0x04
	bne _080D2172
_080D2134:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2142
	adds r0, #0xFF
_080D2142:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2150
	adds r0, #0xFF
_080D2150:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D215E
	adds r0, #0xFF
_080D215E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D2172:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D2186
	cmp r2, #0x04
	bne _080D21E8
_080D2186:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D21AC
	ldr r2, _080D21A8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D21B8
_080D21A4: .4byte 0x03000FD8
_080D21A8: .4byte 0x00002002
_080D21AC:
	ldr r2, _080D2284 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D21B8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D21CE
	movs r2, #0x01
_080D21CE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D21E8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D21F6
	cmp r2, #0x04
	bne _080D2200
_080D21F6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D2200:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D2214
	cmp r2, #0x04
	bne _080D2256
_080D2214:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2222
	adds r0, #0xFF
_080D2222:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2230
	adds r0, #0xFF
_080D2230:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D223E
	adds r0, #0xFF
_080D223E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D2256:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2264
	cmp r1, #0x04
	bne _080D22C8
_080D2264:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D228C
	ldr r2, _080D2288 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D2298
	.byte 0x00, 0x00
_080D2284: .4byte 0x0000204F
_080D2288: .4byte 0x00002002
_080D228C:
	ldr r2, _080D22E8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D2298:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D22AE
	movs r2, #0x01
_080D22AE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D22C8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D22D6
	cmp r2, #0x04
	bne _080D22E0
_080D22D6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D22E0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D22E8: .4byte 0x0000204F
	thumb_func_start sub_80D22EC
sub_80D22EC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x2C]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2304
	cmp r1, #0x04
	bne _080D2370
_080D2304:
	ldr r1, [r3, #0x38]
	ldr r0, [r4, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080D2310
	adds r0, #0xFF
_080D2310:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r5, r0, #0x01
	ldr r1, [r3, #0x3C]
	ldr r0, [r4, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080D2330
	adds r1, #0xFF
_080D2330:
	asrs r2, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080D235C
	adds r0, #0xFF
_080D235C:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_080D2370:
	ldr r0, _080D237C @ =0x080D2381
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D237C: .4byte sub_80D2380
	thumb_func_start sub_80D2380
sub_80D2380:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r5, [r6, #0x2C]
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D2482
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x9C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D23B8
	cmp r1, #0x04
	bne _080D247E
_080D23B8:
	ldr r1, [r5, #0x38]
	ldr r0, [r6, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080D23C4
	adds r0, #0xFF
_080D23C4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r3, r0, #0x01
	ldr r1, [r5, #0x3C]
	ldr r0, [r6, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080D23E4
	adds r1, #0xFF
_080D23E4:
	asrs r2, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r1, [r5, #0x18]
	cmp r1, #0x00
	bge _080D240C
	adds r1, #0xFF
_080D240C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	movs r2, #0x00
	ldsb r2, [r0, r2]
	adds r1, r1, r2
	movs r0, #0x50
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D242E
	adds r4, r2, #0x0
	b _080D243E
_080D242E:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D243E:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D2446
	adds r0, #0xFF
_080D2446:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D248C @ =0x03001038
	ldr r0, _080D2490 @ =0x0819832C
	ldr r1, _080D2494 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D2464
	adds r1, #0x3F
_080D2464:
	asrs r1, r1, #0x06
	adds r1, r7, r1
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080D247E:
	ldr r0, _080D2498 @ =0x080D249D
	str r0, [r6, #0x4C]
_080D2482:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D248C: .4byte 0x03001038
_080D2490: .4byte 0x0819832C
_080D2494: .4byte 0x08198220
_080D2498: .4byte sub_80D249C
	thumb_func_start sub_80D249C
sub_80D249C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D24B8
	b _080D25EC
_080D24B8:
	ldr r0, [r4, #0x28]
	ldr r1, _080D2538 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x19
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D253C @ =0x0423448C
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D2520
	ldr r2, _080D2538 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D25D6
_080D2520:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bhi _080D25A0
	lsls r0, r0, #0x02
	ldr r1, _080D2540 @ =0x080D2544
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D2538: .4byte 0x00000111
_080D253C: .4byte 0x0423448C
_080D2540: .4byte 0x080D2544
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08, 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08, 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x00, 0x94, 0x7D, 0x20, 0x00, 0x23, 0x0C, 0xF0, 0x43, 0xFD, 0x1A, 0xE0
_080D25A0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D25A8
	adds r1, #0xFF
_080D25A8:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D25BE
	adds r2, #0xFF
_080D25BE:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D25D6:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D25E8
	cmp r1, #0x04
	bne _080D25EC
_080D25E8:
	ldr r0, _080D25F4 @ =0x080D2D29
	str r0, [r5, #0x4C]
_080D25EC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D25F4: .4byte sub_80D2D28
	thumb_func_start sub_80D25F8
sub_80D25F8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D265C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2624
	cmp r1, #0x04
	bne _080D2628
_080D2624:
	ldr r0, _080D2660 @ =0x080D29D5
	str r0, [r2, #0x4C]
_080D2628:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D263A
	cmp r1, #0x04
	bne _080D2652
_080D263A:
	ldr r2, _080D2664 @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D2652:
	ldr r0, _080D2668 @ =0x080D266D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_080D265C: .4byte 0x03000FD8
_080D2660: .4byte sub_80D29D4
_080D2664: .4byte 0x00002036
_080D2668: .4byte sub_80D266C
	thumb_func_start sub_80D266C
sub_80D266C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D2718 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2710
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D269A
	cmp r1, #0x04
	bne _080D26DE
_080D269A:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D26A2
	adds r1, #0xFF
_080D26A2:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D26B8
	adds r2, #0xFF
_080D26B8:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080D26DE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D26F0
	cmp r1, #0x04
	bne _080D270C
_080D26F0:
	ldr r2, _080D271C @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D270C:
	ldr r0, _080D2720 @ =0x080D2725
	str r0, [r5, #0x4C]
_080D2710:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2718: .4byte 0x03000FD8
_080D271C: .4byte 0x00002036
_080D2720: .4byte sub_80D2724
	thumb_func_start sub_80D2724
sub_80D2724:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D27A8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D27CC
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x65
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D275C
	adds r1, #0xFF
_080D275C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D2766
	adds r2, #0xFF
_080D2766:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D2770
	adds r3, #0xFF
_080D2770:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D278C
	cmp r1, #0x04
	bne _080D27C8
_080D278C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080D27AC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080D27B8
_080D27A8: .4byte 0x03000FD8
_080D27AC:
	ldr r2, _080D27D4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080D27B8:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D27C8:
	ldr r0, _080D27D8 @ =0x080D27DD
	str r0, [r7, #0x4C]
_080D27CC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D27D4: .4byte 0x0000204D
_080D27D8: .4byte sub_80D27DC
	thumb_func_start sub_80D27DC
sub_80D27DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D288C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D27FE
	b _080D29C8
_080D27FE:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D281C
	cmp r1, #0x04
	bne _080D285A
_080D281C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D282A
	adds r0, #0xFF
_080D282A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2838
	adds r0, #0xFF
_080D2838:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2846
	adds r0, #0xFF
_080D2846:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D285A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D286E
	cmp r2, #0x04
	bne _080D28D0
_080D286E:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D2894
	ldr r2, _080D2890 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D28A0
_080D288C: .4byte 0x03000FD8
_080D2890: .4byte 0x00002002
_080D2894:
	ldr r2, _080D296C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D28A0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D28B6
	movs r2, #0x01
_080D28B6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D28D0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D28DE
	cmp r2, #0x04
	bne _080D28E8
_080D28DE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D28E8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D28FC
	cmp r2, #0x04
	bne _080D293E
_080D28FC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D290A
	adds r0, #0xFF
_080D290A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2918
	adds r0, #0xFF
_080D2918:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2926
	adds r0, #0xFF
_080D2926:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D293E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D294C
	cmp r1, #0x04
	bne _080D29B0
_080D294C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D2974
	ldr r2, _080D2970 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D2980
	.byte 0x00, 0x00
_080D296C: .4byte 0x0000204F
_080D2970: .4byte 0x00002002
_080D2974:
	ldr r2, _080D29D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D2980:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D2996
	movs r2, #0x01
_080D2996:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D29B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D29BE
	cmp r2, #0x04
	bne _080D29C8
_080D29BE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D29C8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D29D0: .4byte 0x0000204F
	thumb_func_start sub_80D29D4
sub_80D29D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bhi _080D2A48
	lsls r0, r0, #0x02
	ldr r1, _080D29F4 @ =0x080D29F8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D29F4: .4byte 0x080D29F8
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08, 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08, 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x21, 0x69, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x62, 0x69
	.byte 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0xA3, 0x69, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33
	.byte 0x1B, 0x12, 0x00, 0x94, 0x01, 0x48, 0x0C, 0xF0, 0xF1, 0xFA, 0x14, 0xE0, 0x02, 0x30, 0x00, 0x00
_080D2A48:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D2A50
	adds r1, #0xFF
_080D2A50:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D2A5A
	adds r2, #0xFF
_080D2A5A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D2A64
	adds r3, #0xFF
_080D2A64:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2A80
	cmp r1, #0x04
	bne _080D2AE2
_080D2A80:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D2A88
	adds r0, #0xFF
_080D2A88:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	subs r5, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080D2AA2
	adds r0, #0xFF
_080D2AA2:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080D2AB8
	adds r3, #0xFF
_080D2AB8:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x33
	bl sub_8088274
_080D2AE2:
	ldr r0, _080D2AF0 @ =0x080D2AF5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D2AF0: .4byte sub_80D2AF4
	thumb_func_start sub_80D2AF4
sub_80D2AF4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D2B10
	b _080D2D1C
_080D2B10:
	ldr r0, [r4, #0x28]
	ldr r1, _080D2B94 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x5F
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D2B98 @ =0x0423458C
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D2B7A
	ldr r2, _080D2B94 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D2B7A
	b _080D2D06
_080D2B7A:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bls _080D2B88
	b _080D2CD0
_080D2B88:
	lsls r0, r0, #0x02
	ldr r1, _080D2B9C @ =0x080D2BA0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D2B94: .4byte 0x00000111
_080D2B98: .4byte 0x0423458C
_080D2B9C: .4byte 0x080D2BA0
	.byte 0xC4, 0x2B, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08, 0xF8, 0x2B, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08
	.byte 0x2C, 0x2C, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08, 0x60, 0x2C, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08
	.byte 0x94, 0x2C, 0x0D, 0x08, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x00, 0x48, 0x66, 0xE0, 0xAC, 0x2E, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31
	.byte 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B
	.byte 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06
	.byte 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x4C, 0xE0, 0xC5, 0x2E, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29
	.byte 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16
	.byte 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30
	.byte 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x32, 0xE0, 0xE3, 0x2E, 0x00, 0x00
	.byte 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78
	.byte 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12
	.byte 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x18, 0xE0
	.byte 0x01, 0x2F, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x02, 0x48, 0x00, 0x94, 0x00, 0x23, 0x0C, 0xF0, 0xAD, 0xF9, 0x1C, 0xE0, 0x1F, 0x2F, 0x00, 0x00
_080D2CD0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D2CD8
	adds r1, #0xFF
_080D2CD8:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D2CEE
	adds r2, #0xFF
_080D2CEE:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D2D06:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2D18
	cmp r1, #0x04
	bne _080D2D1C
_080D2D18:
	ldr r0, _080D2D24 @ =0x080D2D29
	str r0, [r5, #0x4C]
_080D2D1C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2D24: .4byte sub_80D2D28
