	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A9AA0
sub_80A9AA0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A9BAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r7, #0x2C]
	mov r12, r0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9BA4
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9AD8
	cmp r1, #0x04
	bne _080A9B38
_080A9AD8:
	mov r0, r12
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _080A9AE2
	adds r1, #0xFF
_080A9AE2:
	asrs r1, r1, #0x08
	mov r0, r12
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	mov r1, r12
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080A9AFA
	adds r0, #0xFF
_080A9AFA:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	mov r0, r12
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _080A9B12
	adds r3, #0xFF
_080A9B12:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0xC0
	bl sub_8088274
_080A9B38:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9B4A
	cmp r1, #0x04
	bne _080A9B66
_080A9B4A:
	ldr r2, _080A9BB0 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x06
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
_080A9B66:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A9B78
	cmp r1, #0x04
	bne _080A9B94
_080A9B78:
	ldr r2, _080A9BB4 @ =0x0000205F
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A9B94:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A9BB8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A9BBC @ =0x080A9BC1
	str r0, [r7, #0x4C]
_080A9BA4:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A9BAC: .4byte 0x03000FD8
_080A9BB0: .4byte 0x00002030
_080A9BB4: .4byte 0x0000205F
_080A9BB8: .4byte 0x00000FFF
_080A9BBC: .4byte sub_80A9BC0
	thumb_func_start sub_80A9BC0
sub_80A9BC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080A9CE0 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x03
	subs r2, r2, r1
	ldr r3, [sp, #0x008]
	subs r4, r3, r2
	lsls r0, r1, #0x02
	adds r0, r0, r1
	subs r3, r3, r0
	str r3, [sp, #0x008]
	movs r0, #0x80
	lsls r0, r0, #0x07
	adds r0, r0, r2
	mov r10, r0
	adds r3, r6, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080A9C32
	adds r2, r6, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A9C32:
	adds r1, r6, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080A9C42
	b _080AA174
_080A9C42:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080A9C4A
	movs r1, #0x00
_080A9C4A:
	ldr r0, _080A9CE4 @ =0x00007FFF
	cmp r1, r0
	ble _080A9C52
	adds r1, r0, #0x0
_080A9C52:
	adds r0, r6, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9C68
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9C6A
_080A9C68:
	movs r2, #0x00
_080A9C6A:
	adds r6, r5, #0x0
	adds r6, #0x7E
	movs r3, #0xAE
	adds r3, r3, r5
	mov r9, r3
	cmp r2, #0x00
	beq _080A9D4C
	ldr r2, _080A9CE0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A9CE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9C9C
	movs r1, #0x80
_080A9C90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9C90
_080A9C9C:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9CB0
	movs r1, #0x80
_080A9CA4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CA4
_080A9CB0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9CC4
	movs r1, #0x80
_080A9CB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CB8
_080A9CC4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9D44
	movs r1, #0x08
_080A9CCE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9CD8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9CD8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9CCE
	b _080A9D44
_080A9CE0: .4byte 0x03000FD8
_080A9CE4: .4byte 0x00007FFF
_080A9CE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9CFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9CF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9CF2
_080A9CFE:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9D14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9D08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9D08
_080A9D14:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9D2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9D1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9D1E
_080A9D2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9D44
	movs r1, #0x10
_080A9D34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9D3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9D3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9D34
_080A9D44:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A9D4C:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080A9D56
	movs r1, #0x00
_080A9D56:
	mov r0, r10
	cmp r0, #0x00
	bge _080A9D5E
	movs r2, #0x00
_080A9D5E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A9D68
	adds r1, r0, #0x0
_080A9D68:
	ldr r0, _080A9E60 @ =0x00007FFF
	cmp r2, r0
	ble _080A9D70
	adds r2, r0, #0x0
_080A9D70:
	cmp r2, r1
	bge _080A9D76
	adds r1, r2, #0x0
_080A9D76:
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, r1
	blt _080A9D8C
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A9D8E
_080A9D8C:
	movs r1, #0x00
_080A9D8E:
	cmp r1, #0x00
	bne _080A9D94
	b _080A9EE0
_080A9D94:
	movs r2, #0x14
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080A9E64 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A9DB4
	b _080A9EE0
_080A9DB4:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A9E68 @ =0x03000FD8
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
	bne _080A9ECE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9E6C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9E16
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E0A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E0A
_080A9E16:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9E2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E20
_080A9E2C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9E42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E36
_080A9E42:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9ECA
	movs r1, #0x10
_080A9E4C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9E56
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9E56:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9E4C
	b _080A9ECA
	.byte 0x00, 0x00
_080A9E60: .4byte 0x00007FFF
_080A9E64: .4byte 0x0300034C
_080A9E68: .4byte 0x03000FD8
_080A9E6C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9E84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E78
_080A9E84:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9E9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9E8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9E8E
_080A9E9A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9EB0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9EA4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9EA4
_080A9EB0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9ECA
	movs r1, #0x10
_080A9EBA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9EC4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9EC4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9EBA
_080A9ECA:
	bl sub_807F448
_080A9ECE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080A9FB4 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080A9EE0:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A9EEC
	b _080AA174
_080A9EEC:
	mov r1, r10
	cmp r1, #0x00
	bge _080A9EF4
	movs r1, #0x00
_080A9EF4:
	ldr r0, _080A9FB8 @ =0x00007FFF
	cmp r1, r0
	ble _080A9EFC
	adds r1, r0, #0x0
_080A9EFC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9F12
	movs r3, #0x00
	ldsh r0, [r6, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9F14
_080A9F12:
	movs r2, #0x00
_080A9F14:
	cmp r2, #0x00
	bne _080A9F1A
	b _080AA028
_080A9F1A:
	ldr r3, _080A9FBC @ =0x03000FD8
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
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080A9FB4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A9FC0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9F6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F5E
_080A9F6A:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9F80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F74
_080A9F80:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9F96
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9F8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9F8A
_080A9F96:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA01C
	movs r1, #0x10
_080A9FA0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9FAA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9FAA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9FA0
	b _080AA01C
	.byte 0x00, 0x00
_080A9FB4: .4byte 0x00000FFF
_080A9FB8: .4byte 0x00007FFF
_080A9FBC: .4byte 0x03000FD8
_080A9FC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A9FD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FCA
_080A9FD6:
	mov r2, r8
	cmp r2, #0x00
	beq _080A9FEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FE0
_080A9FEC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA002
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9FF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9FF6
_080AA002:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA01C
	movs r1, #0x10
_080AA00C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA016
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA016:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA00C
_080AA01C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080AA174
_080AA028:
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, r10
	ble _080AA032
	b _080AA174
_080AA032:
	ldr r0, _080AA0F4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080AA048
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AA048
	b _080AA174
_080AA048:
	ldr r2, _080AA0F8 @ =0x03000FD8
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
	beq _080AA078
	b _080AA174
_080AA078:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080AA0FC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AA100
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA0AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0A0
_080AA0AC:
	mov r2, r8
	cmp r2, #0x00
	beq _080AA0C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0B6
_080AA0C2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA0D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA0CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA0CC
_080AA0D8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA15C
	movs r1, #0x10
_080AA0E2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA0EC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA0EC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA0E2
	b _080AA15C
_080AA0F4: .4byte 0x0300034C
_080AA0F8: .4byte 0x03000FD8
_080AA0FC: .4byte 0x00000FFF
_080AA100:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA116
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA10A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA10A
_080AA116:
	mov r2, r8
	cmp r2, #0x00
	beq _080AA12C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA120:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA120
_080AA12C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AA142
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AA136:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA136
_080AA142:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AA15C
	movs r1, #0x10
_080AA14C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AA156
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AA156:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AA14C
_080AA15C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
_080AA174:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080AA180
	b _080AA288
_080AA180:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080AA18C
	movs r2, #0x00
_080AA18C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AA196
	adds r1, r0, #0x0
_080AA196:
	ldr r0, _080AA1CC @ =0x00007FFF
	cmp r2, r0
	ble _080AA19E
	adds r2, r0, #0x0
_080AA19E:
	cmp r2, r1
	bge _080AA1A4
	adds r1, r2, #0x0
_080AA1A4:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080AA1BE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AA1C0
_080AA1BE:
	movs r1, #0x00
_080AA1C0:
	cmp r1, #0x00
	beq _080AA288
	cmp r4, #0x01
	ble _080AA1D4
	ldr r6, _080AA1D0 @ =0x040A1588
	b _080AA1D6
_080AA1CC: .4byte 0x00007FFF
_080AA1D0: .4byte 0x040A1588
_080AA1D4:
	ldr r6, _080AA218 @ =0x040A1488
_080AA1D6:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080AA21C
	cmp r1, #0x01
	bne _080AA21C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AA372
	.byte 0x00, 0x00
_080AA218: .4byte 0x040A1488
_080AA21C:
	cmp r4, #0x01
	ble _080AA24C
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AA228
	adds r1, #0xFF
_080AA228:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AA232
	adds r2, #0xFF
_080AA232:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AA23C
	adds r3, #0xFF
_080AA23C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080AA248 @ =0x00002E47
	bl sub_80DF024
	b _080AA272
_080AA248: .4byte 0x00002E47
_080AA24C:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AA254
	adds r1, #0xFF
_080AA254:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AA25E
	adds r2, #0xFF
_080AA25E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AA268
	adds r3, #0xFF
_080AA268:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080AA384 @ =0x0000070B
	bl sub_80DF024
_080AA272:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080AA388 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080AA288:
	ldr r0, [r5, #0x10]
	mov r3, r8
	str r0, [r3, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r3, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r3, #0x18]
	ldr r0, _080AA38C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080AA2AC
	movs r2, #0x00
_080AA2AC:
	ldr r0, _080AA390 @ =0x00007FFF
	cmp r2, r0
	ble _080AA2B4
	adds r2, r0, #0x0
_080AA2B4:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080AA2D0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA2D2
_080AA2D0:
	movs r1, #0x00
_080AA2D2:
	cmp r1, #0x00
	beq _080AA2DE
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080AA2DE:
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r2
	bgt _080AA2F8
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA2FA
_080AA2F8:
	movs r1, #0x00
_080AA2FA:
	cmp r1, #0x00
	beq _080AA35E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA31A
	cmp r1, #0x04
	bne _080AA332
_080AA31A:
	ldr r2, _080AA394 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AA332:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA344
	cmp r1, #0x04
	bne _080AA35E
_080AA344:
	ldr r2, _080AA398 @ =0x0000205F
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AA35E:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA372
	ldr r0, _080AA39C @ =0x080AA3A1
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080AA372:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA384: .4byte 0x0000070B
_080AA388: .4byte 0x00000FFF
_080AA38C: .4byte 0x03000FD8
_080AA390: .4byte 0x00007FFF
_080AA394: .4byte 0x00002030
_080AA398: .4byte 0x0000205F
_080AA39C: .4byte sub_80AA3A0
	thumb_func_start sub_80AA3A0
sub_80AA3A0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080AA4D0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r6, [r1, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AA3C2
	b _080AA4C8
_080AA3C2:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA3D4
	cmp r1, #0x04
	bne _080AA426
_080AA3D4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3E2
	adds r0, #0xFF
_080AA3E2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3F0
	adds r0, #0xFF
_080AA3F0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA3FE
	adds r0, #0xFF
_080AA3FE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AA414
	adds r0, #0xFF
_080AA414:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080AA4D4 @ =0x000007CC
	adds r0, r4, #0x0
	bl sub_8088164
_080AA426:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA438
	cmp r1, #0x04
	bne _080AA442
_080AA438:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80885C4
_080AA442:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AA462
	cmp r2, #0x04
	bne _080AA4B0
_080AA462:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA470
	adds r0, #0xFF
_080AA470:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA47E
	adds r0, #0xFF
_080AA47E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AA48C
	adds r0, #0xFF
_080AA48C:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AA49E
	adds r0, #0xFF
_080AA49E:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080AA4D4 @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080AA4B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AA4BE
	cmp r2, #0x04
	bne _080AA4C8
_080AA4BE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080AA4C8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AA4D0: .4byte 0x03000FD8
_080AA4D4: .4byte 0x000007CC
	thumb_func_start sub_80AA4D8
sub_80AA4D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA5A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AA5CA
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA510
	cmp r1, #0x04
	bne _080AA572
_080AA510:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AA518
	adds r1, #0xFF
_080AA518:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AA52E
	adds r0, #0xFF
_080AA52E:
	asrs r0, r0, #0x08
	adds r1, r2, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AA544
	adds r3, #0xFF
_080AA544:
	asrs r3, r3, #0x08
	subs r3, #0x1E
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AA55E
	adds r0, #0xFF
_080AA55E:
	asrs r0, r0, #0x08
	adds r0, #0x14
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080AA572:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA584
	cmp r1, #0x04
	bne _080AA5C4
_080AA584:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AA5A8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080AA5B4
_080AA5A4: .4byte 0x03000FD8
_080AA5A8:
	ldr r2, _080AA5D8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080AA5B4:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AA5C4:
	ldr r0, _080AA5DC @ =0x080AA5E1
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA5CA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA5D8: .4byte 0x0000204D
_080AA5DC: .4byte sub_80AA5E0
	thumb_func_start sub_80AA5E0
sub_80AA5E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA6C0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_8087CE4
	adds r5, r4, #0x0
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA6B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AA616
	adds r1, #0xFF
_080AA616:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AA620
	adds r2, #0xFF
_080AA620:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AA62A
	adds r3, #0xFF
_080AA62A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AA6C4 @ =0x00002F7D
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA650
	cmp r1, #0x04
	bne _080AA67E
_080AA650:
	ldr r2, _080AA6C8 @ =0x03001038
	ldr r0, _080AA6CC @ =0x0819832C
	ldr r1, _080AA6D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080AA67E:
	ldr r4, [r6, #0x08]
	ldr r2, _080AA6D4 @ =0x0000205F
	adds r5, r4, #0x0
	adds r5, #0x23
	ldrb r3, [r5, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	ldrh r2, [r4, #0x16]
	ldrb r0, [r4, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	orrs r2, r0
	ldrb r3, [r5, #0x00]
	adds r0, r6, #0x0
	bl sub_8082E1C
	ldr r0, _080AA6D8 @ =0x080AC4AD
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA6B4:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AA6C0: .4byte 0x03000FD8
_080AA6C4: .4byte 0x00002F7D
_080AA6C8: .4byte 0x03001038
_080AA6CC: .4byte 0x0819832C
_080AA6D0: .4byte 0x08198220
_080AA6D4: .4byte 0x0000205F
_080AA6D8: .4byte sub_80AC4AC
	thumb_func_start sub_80AA6DC
sub_80AA6DC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r3, _080AA7BC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _080AA726
	adds r3, r2, #0x0
	adds r3, #0x86
	adds r0, r2, #0x0
	adds r0, #0x82
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r2, #0x0
	adds r1, #0x84
	movs r2, #0x00
	ldsh r1, [r1, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _080AA71E
	adds r0, #0x7F
_080AA71E:
	asrs r1, r0, #0x07
	ldrh r0, [r3, #0x00]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
_080AA726:
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x10]
	ldr r2, [r5, #0x38]
	subs r0, r0, r2
	ldr r1, [r4, #0x38]
	subs r1, r1, r2
	muls r0, r1
	cmp r0, #0x00
	bgt _080AA7B4
	str r2, [r4, #0x10]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AA756
	cmp r2, #0x04
	bne _080AA772
_080AA756:
	ldr r2, _080AA7C0 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x08
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
_080AA772:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AA780
	cmp r2, #0x04
	bne _080AA7B0
_080AA780:
	ldr r2, _080AA7C4 @ =0x03001038
	ldr r0, _080AA7C8 @ =0x0819832C
	ldr r1, _080AA7CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AA7B0:
	ldr r0, _080AA7D0 @ =0x080AA7D5
	str r0, [r6, #0x4C]
_080AA7B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA7BC: .4byte 0x03000FD8
_080AA7C0: .4byte 0x00002030
_080AA7C4: .4byte 0x03001038
_080AA7C8: .4byte 0x0819832C
_080AA7CC: .4byte 0x08198220
_080AA7D0: .4byte sub_80AA7D4
	thumb_func_start sub_80AA7D4
sub_80AA7D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA8D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA8C4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA814
	cmp r1, #0x04
	bne _080AA884
_080AA814:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AA81C
	adds r1, #0xFF
_080AA81C:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r12, r1
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AA834
	adds r0, #0xFF
_080AA834:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AA84A
	adds r3, #0xFF
_080AA84A:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _080AA870
	adds r0, #0xFF
_080AA870:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_8088164
_080AA884:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA896
	cmp r1, #0x04
	bne _080AA8B2
_080AA896:
	ldr r2, _080AA8D4 @ =0x0000205F
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080AA8B2:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AA8D8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AA8DC @ =0x080AA8E1
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA8C4:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AA8D0: .4byte 0x03000FD8
_080AA8D4: .4byte 0x0000205F
_080AA8D8: .4byte 0x00000FFF
_080AA8DC: .4byte sub_80AA8E0
	thumb_func_start sub_80AA8E0
sub_80AA8E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080AAA38 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, #0xCD
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r4, r0, #0x0
	subs r4, #0x0C
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _080AA91A
	adds r0, #0xFF
_080AA91A:
	asrs r0, r0, #0x08
	cmp r0, r4
	bge _080AA950
	ldr r0, [r7, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080AA938
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
_080AA938:
	ldr r2, _080AAA3C @ =0x03001038
	ldr r0, _080AAA40 @ =0x0819832C
	ldr r1, _080AAA44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, [r5, #0x18]
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x08]
	strh r0, [r1, #0x06]
_080AA950:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	negs r0, r0
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r3, r0, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r0, r2, r0
	str r0, [sp, #0x008]
	adds r4, r0, #0x0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	mov r9, r1
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r9
	bge _080AA990
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AA990:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AA9A0
	b _080AAECA
_080AA9A0:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080AA9A8
	movs r2, #0x00
_080AA9A8:
	ldr r0, _080AAA48 @ =0x00007FFF
	cmp r2, r0
	ble _080AA9B0
	adds r2, r0, #0x0
_080AA9B0:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x00C]
	cmp r1, r2
	bgt _080AA9CA
	mov r1, r10
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080AA9CC
_080AA9CA:
	movs r1, #0x00
_080AA9CC:
	cmp r1, #0x00
	beq _080AAAB0
	ldr r2, _080AAA38 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AAA4C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AA9F4
	movs r1, #0x33
_080AA9E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA9E8
_080AA9F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAA08
	movs r1, #0x33
_080AA9FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AA9FC
_080AAA08:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAA1C
	movs r1, #0x33
_080AAA10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA10
_080AAA1C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAAA8
	movs r1, #0x03
_080AAA26:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAA30
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAA30:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAA26
	b _080AAAA8
_080AAA38: .4byte 0x03000FD8
_080AAA3C: .4byte 0x03001038
_080AAA40: .4byte 0x0819832C
_080AAA44: .4byte 0x08198220
_080AAA48: .4byte 0x00007FFF
_080AAA4C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAA62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA56
_080AAA62:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAA78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA6C
_080AAA78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAA8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAA82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAA82
_080AAA8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAAA8
	movs r1, #0x10
_080AAA98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAAA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAAA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAA98
_080AAAA8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AAAB0:
	adds r1, r4, #0x0
	mov r2, r9
	cmp r1, #0x00
	bge _080AAABA
	movs r1, #0x00
_080AAABA:
	mov r4, r9
	cmp r4, #0x00
	bge _080AAAC2
	movs r2, #0x00
_080AAAC2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AAACC
	adds r1, r0, #0x0
_080AAACC:
	ldr r0, _080AABC0 @ =0x00007FFF
	cmp r2, r0
	ble _080AAAD4
	adds r2, r0, #0x0
_080AAAD4:
	cmp r2, r1
	bge _080AAADA
	adds r1, r2, #0x0
_080AAADA:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AAAF0
	ldr r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	ble _080AAAF2
_080AAAF0:
	movs r1, #0x00
_080AAAF2:
	cmp r1, #0x00
	bne _080AAAF8
	b _080AAC40
_080AAAF8:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080AABC4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AAB16
	b _080AAC40
_080AAB16:
	movs r0, #0x01
	adds r1, r7, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080AABC8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080AAC2E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AABCC
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080AAB76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB6A
_080AAB76:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAB8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB80
_080AAB8C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AABA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAB96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAB96
_080AABA2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAC2A
	movs r1, #0x10
_080AABAC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AABB6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AABB6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AABAC
	b _080AAC2A
	.byte 0x00, 0x00
_080AABC0: .4byte 0x00007FFF
_080AABC4: .4byte 0x0300034C
_080AABC8: .4byte 0x03000FD8
_080AABCC:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080AABE4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AABD8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AABD8
_080AABE4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AABFA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AABEE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AABEE
_080AABFA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAC10
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAC04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAC04
_080AAC10:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAC2A
	movs r1, #0x10
_080AAC1A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAC24
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAC24:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAC1A
_080AAC2A:
	bl sub_807F448
_080AAC2E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	ldr r1, _080AAD14 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r4, #0x00]
_080AAC40:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080AAC4C
	b _080AAECA
_080AAC4C:
	mov r1, r9
	cmp r1, #0x00
	bge _080AAC54
	movs r1, #0x00
_080AAC54:
	ldr r0, _080AAD18 @ =0x00007FFF
	cmp r1, r0
	ble _080AAC5C
	adds r1, r0, #0x0
_080AAC5C:
	ldr r4, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080AAC72
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AAC74
_080AAC72:
	movs r2, #0x00
_080AAC74:
	cmp r2, #0x00
	bne _080AAC7A
	b _080AAD88
_080AAC7A:
	ldr r3, _080AAD1C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AAD14 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AAD20
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AACCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACBE
_080AACCA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AACE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACD4
_080AACE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AACF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AACEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AACEA
_080AACF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAD7C
	movs r1, #0x10
_080AAD00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAD0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAD0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAD00
	b _080AAD7C
	.byte 0x00, 0x00
_080AAD14: .4byte 0x00000FFF
_080AAD18: .4byte 0x00007FFF
_080AAD1C: .4byte 0x03000FD8
_080AAD20:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAD36
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD2A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD2A
_080AAD36:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAD4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD40
_080AAD4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAD62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAD56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAD56
_080AAD62:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAD7C
	movs r1, #0x10
_080AAD6C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAD76
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAD76:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAD6C
_080AAD7C:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080AAECA
_080AAD88:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080AAD94
	b _080AAECA
_080AAD94:
	ldr r0, _080AAE4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AADA2
	b _080AAECA
_080AADA2:
	ldr r2, _080AAE50 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080AAECA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AAE54 @ =0x00000FFF
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
	beq _080AAE58
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAE04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AADF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AADF8
_080AAE04:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAE1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE0E
_080AAE1A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAE30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE24
_080AAE30:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAEB4
	movs r1, #0x10
_080AAE3A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAE44
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAE44:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAE3A
	b _080AAEB4
_080AAE4C: .4byte 0x0300034C
_080AAE50: .4byte 0x03000FD8
_080AAE54: .4byte 0x00000FFF
_080AAE58:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AAE6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE62
_080AAE6E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AAE84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE78
_080AAE84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AAE9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AAE8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AAE8E
_080AAE9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AAEB4
	movs r1, #0x10
_080AAEA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AAEAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AAEAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AAEA4
_080AAEB4:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080AAECA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080AAF44
	ldr r2, [sp, #0x008]
	mov r1, r9
	cmp r2, #0x00
	bge _080AAEDE
	movs r2, #0x00
_080AAEDE:
	cmp r1, #0x00
	bge _080AAEE4
	movs r1, #0x00
_080AAEE4:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080AAEEE
	adds r2, r0, #0x0
_080AAEEE:
	ldr r0, _080AAF38 @ =0x00007FFF
	cmp r1, r0
	ble _080AAEF6
	adds r1, r0, #0x0
_080AAEF6:
	cmp r1, r2
	bge _080AAEFC
	adds r2, r1, #0x0
_080AAEFC:
	mov r4, r10
	movs r0, #0x00
	ldsh r4, [r4, r0]
	mov r9, r4
	cmp r9, r2
	blt _080AAF16
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080AAF18
_080AAF16:
	movs r2, #0x00
_080AAF18:
	cmp r2, #0x00
	beq _080AAF44
	cmp r3, #0x01
	ble _080AAF44
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080AAF3C @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080AAF40 @ =0x080AB5FD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080AB086
_080AAF38: .4byte 0x00007FFF
_080AAF3C: .4byte 0x00000FFF
_080AAF40: .4byte sub_80AB5FC
_080AAF44:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AAF54
	b _080AB086
_080AAF54:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x30
	mov r1, r8
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r9, r1
	cmp r2, #0x02
	beq _080AAF76
	cmp r2, #0x04
	bne _080AB028
_080AAF76:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080AAF7E
	adds r0, #0xFF
_080AAF7E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	subs r0, #0x08
	mov r12, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AAF98
	adds r0, #0xFF
_080AAF98:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AAFAE
	adds r3, #0xFF
_080AAFAE:
	asrs r3, r3, #0x08
	adds r4, r6, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	cmp r6, r0
	bne _080AAFD8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080AAFE8
_080AAFD8:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r6, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080AAFE8:
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080AAFF0
	adds r0, #0xFF
_080AAFF0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080AB098 @ =0x03001038
	ldr r0, _080AB09C @ =0x0819832C
	ldr r1, _080AB0A0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080AB00A
	adds r1, #0x3F
_080AB00A:
	asrs r1, r1, #0x06
	adds r1, #0x40
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080AB028:
	mov r2, r9
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB038
	cmp r2, #0x04
	bne _080AB052
_080AB038:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB052:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB064
	cmp r1, #0x04
	bne _080AB080
_080AB064:
	ldr r2, _080AB0A4 @ =0x0000205F
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AB080:
	ldr r0, _080AB0A8 @ =0x080AB0AD
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080AB086:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB098: .4byte 0x03001038
_080AB09C: .4byte 0x0819832C
_080AB0A0: .4byte 0x08198220
_080AB0A4: .4byte 0x0000205F
_080AB0A8: .4byte sub_80AB0AC
	thumb_func_start sub_80AB0AC
sub_80AB0AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080AB1A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080AB0F4
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r6, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080AB0F4
	strh r1, [r2, #0x06]
_080AB0F4:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	bne _080AB106
	b _080AB260
_080AB106:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r8, r1
	cmp r2, #0x02
	beq _080AB124
	cmp r2, #0x04
	bne _080AB140
_080AB124:
	ldr r2, _080AB1A8 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x0C
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
_080AB140:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB152
	cmp r1, #0x04
	bne _080AB16A
_080AB152:
	ldr r2, _080AB1AC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB16A:
	adds r2, r4, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AB1B0 @ =0x040A1688
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r4, #0x24]
	adds r1, #0x01
	strh r1, [r4, #0x24]
	cmp r0, #0x01
	bne _080AB1B4
	adds r0, r4, #0x0
	bl sub_8086764
	b _080AB260
_080AB1A4: .4byte 0x03000FD8
_080AB1A8: .4byte 0x00002030
_080AB1AC: .4byte 0x0000204D
_080AB1B0: .4byte 0x040A1688
_080AB1B4:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080AB1D0
	ldr r3, _080AB270 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AB21C
_080AB1D0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB1D8
	adds r1, #0xFF
_080AB1D8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB1EE
	adds r0, #0xFF
_080AB1EE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB204
	adds r3, #0xFF
_080AB204:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AB274 @ =0x0000070B
	str r5, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80DF024
_080AB21C:
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB22C
	cmp r2, #0x04
	bne _080AB25A
_080AB22C:
	ldr r2, _080AB278 @ =0x03001038
	ldr r0, _080AB27C @ =0x0819832C
	ldr r1, _080AB280 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r7, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
_080AB25A:
	ldr r0, _080AB284 @ =0x080AB289
	mov r2, r9
	str r0, [r2, #0x4C]
_080AB260:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB270: .4byte 0x00000111
_080AB274: .4byte 0x0000070B
_080AB278: .4byte 0x03001038
_080AB27C: .4byte 0x0819832C
_080AB280: .4byte 0x08198220
_080AB284: .4byte sub_80AB288
	thumb_func_start sub_80AB288
sub_80AB288:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AB358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB350
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x30
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB2CA
	cmp r1, #0x04
	bne _080AB320
_080AB2CA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080AB2D2
	adds r0, #0xFF
_080AB2D2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3C
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AB2EC
	adds r2, #0xFF
_080AB2EC:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AB30C
	adds r0, #0xFF
_080AB30C:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AB320:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB332
	cmp r1, #0x04
	bne _080AB34C
_080AB332:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB34C:
	ldr r0, _080AB35C @ =0x080AB361
	str r0, [r7, #0x4C]
_080AB350:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB358: .4byte 0x03000FD8
_080AB35C: .4byte sub_80AB360
	thumb_func_start sub_80AB360
sub_80AB360:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080AB3F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB3F0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080AB396
	adds r1, #0xFF
_080AB396:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080AB3A0
	adds r2, #0xFF
_080AB3A0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080AB3AA
	adds r3, #0xFF
_080AB3AA:
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
	beq _080AB3C6
	cmp r1, #0x04
	bne _080AB3E2
_080AB3C6:
	ldr r2, _080AB3FC @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
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
_080AB3E2:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080AB400 @ =0x080AB405
	str r0, [r6, #0x4C]
_080AB3F0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AB3F8: .4byte 0x03000FD8
_080AB3FC: .4byte 0x00002034
_080AB400: .4byte sub_80AB404
	thumb_func_start sub_80AB404
sub_80AB404:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080AB4B4 @ =0x03000FD8
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
	bne _080AB426
	b _080AB5F0
_080AB426:
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
	beq _080AB444
	cmp r1, #0x04
	bne _080AB482
_080AB444:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB452
	adds r0, #0xFF
_080AB452:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB460
	adds r0, #0xFF
_080AB460:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB46E
	adds r0, #0xFF
_080AB46E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080AB482:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AB496
	cmp r2, #0x04
	bne _080AB4F8
_080AB496:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AB4BC
	ldr r2, _080AB4B8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AB4C8
_080AB4B4: .4byte 0x03000FD8
_080AB4B8: .4byte 0x00002002
_080AB4BC:
	ldr r2, _080AB594 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AB4C8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AB4DE
	movs r2, #0x01
_080AB4DE:
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
_080AB4F8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB506
	cmp r2, #0x04
	bne _080AB510
_080AB506:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080AB510:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AB524
	cmp r2, #0x04
	bne _080AB566
_080AB524:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB532
	adds r0, #0xFF
_080AB532:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB540
	adds r0, #0xFF
_080AB540:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AB54E
	adds r0, #0xFF
_080AB54E:
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
_080AB566:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB574
	cmp r1, #0x04
	bne _080AB5D8
_080AB574:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AB59C
	ldr r2, _080AB598 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AB5A8
	.byte 0x00, 0x00
_080AB594: .4byte 0x0000204F
_080AB598: .4byte 0x00002002
_080AB59C:
	ldr r2, _080AB5F8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AB5A8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AB5BE
	movs r2, #0x01
_080AB5BE:
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
_080AB5D8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB5E6
	cmp r2, #0x04
	bne _080AB5F0
_080AB5E6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AB5F0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB5F8: .4byte 0x0000204F
	thumb_func_start sub_80AB5FC
sub_80AB5FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080AB6C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	mov r0, r10
	ldr r5, [r0, #0x2C]
	movs r1, #0x01
	negs r1, r1
	mov r9, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AB632
	adds r1, #0xFF
_080AB632:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AB63C
	adds r2, #0xFF
_080AB63C:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AB646
	adds r3, #0xFF
_080AB646:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AB6C4 @ =0x00002F9E
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB662
	cmp r1, #0x04
	bne _080AB718
_080AB662:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB66A
	adds r1, #0xFF
_080AB66A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB680
	adds r0, #0xFF
_080AB680:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB696
	adds r3, #0xFF
_080AB696:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	adds r3, #0x3C
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080AB6C8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080AB6D8
_080AB6C0: .4byte 0x03000FD8
_080AB6C4: .4byte 0x00002F9E
_080AB6C8:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080AB6D8:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AB6E0
	adds r0, #0xFF
_080AB6E0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080AB788 @ =0x03001038
	ldr r0, _080AB78C @ =0x0819832C
	ldr r1, _080AB790 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080AB6FA
	adds r1, #0x3F
_080AB6FA:
	asrs r1, r1, #0x06
	adds r1, #0x40
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080AB718:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB72A
	cmp r1, #0x04
	bne _080AB742
_080AB72A:
	ldr r2, _080AB794 @ =0x00002030
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB742:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB754
	cmp r1, #0x04
	bne _080AB772
_080AB754:
	ldr r2, _080AB798 @ =0x0000205F
	mov r0, r8
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AB772:
	ldr r0, _080AB79C @ =0x080AB7A1
	mov r1, r10
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB788: .4byte 0x03001038
_080AB78C: .4byte 0x0819832C
_080AB790: .4byte 0x08198220
_080AB794: .4byte 0x00002030
_080AB798: .4byte 0x0000205F
_080AB79C: .4byte sub_80AB7A0
	thumb_func_start sub_80AB7A0
sub_80AB7A0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080AB860 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080AB7DC
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r5, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080AB7DC
	strh r1, [r2, #0x06]
_080AB7DC:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080AB858
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AB800
	cmp r2, #0x04
	bne _080AB818
_080AB800:
	ldr r2, _080AB864 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB818:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AB826
	cmp r2, #0x04
	bne _080AB854
_080AB826:
	ldr r2, _080AB868 @ =0x03001038
	ldr r0, _080AB86C @ =0x0819832C
	ldr r1, _080AB870 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0C
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_080AB854:
	ldr r0, _080AB874 @ =0x080AB879
	str r0, [r7, #0x4C]
_080AB858:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AB860: .4byte 0x03000FD8
_080AB864: .4byte 0x00002030
_080AB868: .4byte 0x03001038
_080AB86C: .4byte 0x0819832C
_080AB870: .4byte 0x08198220
_080AB874: .4byte sub_80AB878
	thumb_func_start sub_80AB878
sub_80AB878:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AB924 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB91C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB8B0
	cmp r1, #0x04
	bne _080AB90C
_080AB8B0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB8B8
	adds r1, #0xFF
_080AB8B8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB8CE
	adds r0, #0xFF
_080AB8CE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB8E4
	adds r3, #0xFF
_080AB8E4:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x04
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0xCC
	bl sub_8088274
_080AB90C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AB928 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AB92C @ =0x080AB931
	str r0, [r7, #0x4C]
_080AB91C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB924: .4byte 0x03000FD8
_080AB928: .4byte 0x00000FFF
_080AB92C: .4byte sub_80AB930
	thumb_func_start sub_80AB930
sub_80AB930:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080ABA40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r7, r3, r0
	lsls r1, r1, #0x02
	subs r3, r3, r1
	str r3, [sp, #0x008]
	add r10, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080AB992
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AB992:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080AB9A2
	b _080ABECE
_080AB9A2:
	adds r1, r7, #0x0
	cmp r1, #0x00
	bge _080AB9AA
	movs r1, #0x00
_080AB9AA:
	ldr r0, _080ABA44 @ =0x00007FFF
	cmp r1, r0
	ble _080AB9B2
	adds r1, r0, #0x0
_080AB9B2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AB9C8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080AB9CA
_080AB9C8:
	movs r2, #0x00
_080AB9CA:
	adds r7, r5, #0x0
	adds r7, #0x7E
	movs r3, #0xAE
	adds r3, r3, r5
	mov r9, r3
	cmp r2, #0x00
	beq _080ABAAC
	ldr r2, _080ABA40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080ABA48
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AB9FC
	movs r1, #0x33
_080AB9F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AB9F0
_080AB9FC:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABA10
	movs r1, #0x33
_080ABA04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA04
_080ABA10:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABA24
	movs r1, #0x33
_080ABA18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA18
_080ABA24:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABAA4
	movs r1, #0x03
_080ABA2E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABA38
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABA38:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABA2E
	b _080ABAA4
_080ABA40: .4byte 0x03000FD8
_080ABA44: .4byte 0x00007FFF
_080ABA48:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABA5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA52
_080ABA5E:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABA74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA68
_080ABA74:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABA8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA7E
_080ABA8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABAA4
	movs r1, #0x10
_080ABA94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABA9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABA9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABA94
_080ABAA4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080ABAAC:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080ABAB6
	movs r1, #0x00
_080ABAB6:
	mov r0, r10
	cmp r0, #0x00
	bge _080ABABE
	movs r2, #0x00
_080ABABE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ABAC8
	adds r1, r0, #0x0
_080ABAC8:
	ldr r0, _080ABBBC @ =0x00007FFF
	cmp r2, r0
	ble _080ABAD0
	adds r2, r0, #0x0
_080ABAD0:
	cmp r2, r1
	bge _080ABAD6
	adds r1, r2, #0x0
_080ABAD6:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080ABAEC
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ABAEE
_080ABAEC:
	movs r1, #0x00
_080ABAEE:
	cmp r1, #0x00
	bne _080ABAF4
	b _080ABC3C
_080ABAF4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080ABBC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ABB12
	b _080ABC3C
_080ABB12:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080ABBC4 @ =0x03000FD8
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
	bne _080ABC2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABBC8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080ABB72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB66
_080ABB72:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABB88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB7C
_080ABB88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABB9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB92
_080ABB9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABC26
	movs r1, #0x10
_080ABBA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABBB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABBB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABBA8
	b _080ABC26
	.byte 0x00, 0x00
_080ABBBC: .4byte 0x00007FFF
_080ABBC0: .4byte 0x0300034C
_080ABBC4: .4byte 0x03000FD8
_080ABBC8:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080ABBE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABBD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABBD4
_080ABBE0:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABBF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABBEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABBEA
_080ABBF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABC0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABC00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABC00
_080ABC0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABC26
	movs r1, #0x10
_080ABC16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABC20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABC20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABC16
_080ABC26:
	bl sub_807F448
_080ABC2A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080ABD10 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080ABC3C:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080ABC48
	b _080ABECE
_080ABC48:
	mov r1, r10
	cmp r1, #0x00
	bge _080ABC50
	movs r1, #0x00
_080ABC50:
	ldr r0, _080ABD14 @ =0x00007FFF
	cmp r1, r0
	ble _080ABC58
	adds r1, r0, #0x0
_080ABC58:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080ABC6E
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080ABC70
_080ABC6E:
	movs r2, #0x00
_080ABC70:
	cmp r2, #0x00
	bne _080ABC76
	b _080ABD84
_080ABC76:
	ldr r3, _080ABD18 @ =0x03000FD8
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
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080ABD10 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABD1C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABCC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCBA
_080ABCC6:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABCDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCD0
_080ABCDC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABCF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCE6
_080ABCF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABD78
	movs r1, #0x10
_080ABCFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABD06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABD06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABCFC
	b _080ABD78
	.byte 0x00, 0x00
_080ABD10: .4byte 0x00000FFF
_080ABD14: .4byte 0x00007FFF
_080ABD18: .4byte 0x03000FD8
_080ABD1C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABD32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD26
_080ABD32:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABD48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD3C
_080ABD48:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABD5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD52
_080ABD5E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABD78
	movs r1, #0x10
_080ABD68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABD72
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABD72:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABD68
_080ABD78:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080ABECE
_080ABD84:
	movs r2, #0x00
	ldsh r0, [r7, r2]
	cmp r0, r10
	ble _080ABD8E
	b _080ABECE
_080ABD8E:
	ldr r0, _080ABE50 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ABDA4
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080ABDA4
	b _080ABECE
_080ABDA4:
	ldr r2, _080ABE54 @ =0x03000FD8
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
	bne _080ABECE
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080ABE58 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABE5C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABE06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABDFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABDFA
_080ABE06:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABE1C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE10
_080ABE1C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABE32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE26
_080ABE32:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABEB8
	movs r1, #0x10
_080ABE3C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABE46
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABE46:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABE3C
	b _080ABEB8
	.byte 0x00, 0x00
_080ABE50: .4byte 0x0300034C
_080ABE54: .4byte 0x03000FD8
_080ABE58: .4byte 0x00000FFF
_080ABE5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABE72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE66
_080ABE72:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABE88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE7C
_080ABE88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABE9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE92
_080ABE9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABEB8
	movs r1, #0x10
_080ABEA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABEB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABEB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABEA8
_080ABEB8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080ABECE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080ABEDA
	b _080ABFE8
_080ABEDA:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080ABEE6
	movs r2, #0x00
_080ABEE6:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ABEF0
	adds r1, r0, #0x0
_080ABEF0:
	ldr r0, _080ABF28 @ =0x00007FFF
	cmp r2, r0
	ble _080ABEF8
	adds r2, r0, #0x0
_080ABEF8:
	cmp r2, r1
	bge _080ABEFE
	adds r1, r2, #0x0
_080ABEFE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080ABF18
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ABF1A
_080ABF18:
	movs r1, #0x00
_080ABF1A:
	cmp r1, #0x00
	beq _080ABFE8
	cmp r7, #0x01
	ble _080ABF30
	ldr r4, _080ABF2C @ =0x040B1888
	b _080ABF32
	.byte 0x00, 0x00
_080ABF28: .4byte 0x00007FFF
_080ABF2C: .4byte 0x040B1888
_080ABF30:
	ldr r4, _080ABF78 @ =0x040B1788
_080ABF32:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080ABF7C
	cmp r1, #0x01
	bne _080ABF7C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AC078
	.byte 0x00, 0x00
_080ABF78: .4byte 0x040B1788
_080ABF7C:
	cmp r7, #0x01
	ble _080ABFAC
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABF88
	adds r1, #0xFF
_080ABF88:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080ABF92
	adds r2, #0xFF
_080ABF92:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080ABF9C
	adds r3, #0xFF
_080ABF9C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080ABFA8 @ =0x00002E47
	bl sub_80DF024
	b _080ABFD2
_080ABFA8: .4byte 0x00002E47
_080ABFAC:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABFB4
	adds r1, #0xFF
_080ABFB4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080ABFBE
	adds r2, #0xFF
_080ABFBE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080ABFC8
	adds r3, #0xFF
_080ABFC8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AC088 @ =0x0000070B
	bl sub_80DF024
_080ABFD2:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080AC08C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080ABFE8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC078
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABFFE
	adds r1, #0xFF
_080ABFFE:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AC008
	adds r2, #0xFF
_080AC008:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AC012
	adds r3, #0xFF
_080AC012:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080AC090 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC02E
	cmp r1, #0x04
	bne _080AC046
_080AC02E:
	ldr r2, _080AC094 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC046:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC058
	cmp r1, #0x04
	bne _080AC072
_080AC058:
	ldr r2, _080AC098 @ =0x0000204D
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC072:
	ldr r0, _080AC09C @ =0x080AC0A1
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080AC078:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC088: .4byte 0x0000070B
_080AC08C: .4byte 0x00000FFF
_080AC090: .4byte 0x00002FF9
_080AC094: .4byte 0x00002030
_080AC098: .4byte 0x0000204D
_080AC09C: .4byte sub_80AC0A0
	thumb_func_start sub_80AC0A0
sub_80AC0A0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AC168 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AC15E
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC0DA
	cmp r1, #0x04
	bne _080AC130
_080AC0DA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080AC0E2
	adds r0, #0xFF
_080AC0E2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3C
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AC0FC
	adds r2, #0xFF
_080AC0FC:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080AC11C
	adds r0, #0xFF
_080AC11C:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AC130:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC142
	cmp r1, #0x04
	bne _080AC15A
_080AC142:
	ldr r2, _080AC16C @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC15A:
	ldr r0, _080AC170 @ =0x080AC175
	str r0, [r7, #0x4C]
_080AC15E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC168: .4byte 0x03000FD8
_080AC16C: .4byte 0x00002030
_080AC170: .4byte sub_80AC174
	thumb_func_start sub_80AC174
sub_80AC174:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080AC29C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, _080AC2A0 @ =0x00001555
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AC1A6
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AC1A8
_080AC1A6:
	movs r1, #0x00
_080AC1A8:
	cmp r1, #0x00
	beq _080AC1D6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC1BE
	cmp r1, #0x04
	bne _080AC1D6
_080AC1BE:
	ldr r2, _080AC2A4 @ =0x00002030
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
_080AC1D6:
	ldr r2, _080AC2A8 @ =0x00002AAA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AC1F2
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AC1F4
_080AC1F2:
	movs r1, #0x00
_080AC1F4:
	cmp r1, #0x00
	beq _080AC222
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC20A
	cmp r1, #0x04
	bne _080AC222
_080AC20A:
	ldr r2, _080AC2A4 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC222:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC292
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AC242
	adds r1, #0xFF
_080AC242:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AC24C
	adds r2, #0xFF
_080AC24C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AC256
	adds r3, #0xFF
_080AC256:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC272
	cmp r1, #0x04
	bne _080AC28E
_080AC272:
	ldr r2, _080AC2AC @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080AC28E:
	ldr r0, _080AC2B0 @ =0x080AC2B5
	str r0, [r6, #0x4C]
_080AC292:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC29C: .4byte 0x03000FD8
_080AC2A0: .4byte 0x00001555
_080AC2A4: .4byte 0x00002030
_080AC2A8: .4byte 0x00002AAA
_080AC2AC: .4byte 0x00002034
_080AC2B0: .4byte sub_80AC2B4
	thumb_func_start sub_80AC2B4
sub_80AC2B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080AC364 @ =0x03000FD8
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
	bne _080AC2D6
	b _080AC4A0
_080AC2D6:
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
	beq _080AC2F4
	cmp r1, #0x04
	bne _080AC332
_080AC2F4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC302
	adds r0, #0xFF
_080AC302:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC310
	adds r0, #0xFF
_080AC310:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC31E
	adds r0, #0xFF
_080AC31E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080AC332:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AC346
	cmp r2, #0x04
	bne _080AC3A8
_080AC346:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AC36C
	ldr r2, _080AC368 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AC378
_080AC364: .4byte 0x03000FD8
_080AC368: .4byte 0x00002002
_080AC36C:
	ldr r2, _080AC444 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AC378:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AC38E
	movs r2, #0x01
_080AC38E:
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
_080AC3A8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AC3B6
	cmp r2, #0x04
	bne _080AC3C0
_080AC3B6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080AC3C0:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AC3D4
	cmp r2, #0x04
	bne _080AC416
_080AC3D4:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3E2
	adds r0, #0xFF
_080AC3E2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3F0
	adds r0, #0xFF
_080AC3F0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AC3FE
	adds r0, #0xFF
_080AC3FE:
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
_080AC416:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC424
	cmp r1, #0x04
	bne _080AC488
_080AC424:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AC44C
	ldr r2, _080AC448 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AC458
	.byte 0x00, 0x00
_080AC444: .4byte 0x0000204F
_080AC448: .4byte 0x00002002
_080AC44C:
	ldr r2, _080AC4A8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AC458:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AC46E
	movs r2, #0x01
_080AC46E:
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
_080AC488:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AC496
	cmp r2, #0x04
	bne _080AC4A0
_080AC496:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AC4A0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC4A8: .4byte 0x0000204F
