	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80B6D78
sub_80B6D78:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080B6EA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B6D9A
	b _080B6EA0
_080B6D9A:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6DAC
	cmp r1, #0x04
	bne _080B6DFE
_080B6DAC:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DBA
	adds r0, #0xFF
_080B6DBA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DC8
	adds r0, #0xFF
_080B6DC8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DD6
	adds r0, #0xFF
_080B6DD6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B6DEC
	adds r0, #0xFF
_080B6DEC:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080B6EAC @ =0x000007CC
	adds r0, r4, #0x0
	bl sub_8088164
_080B6DFE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6E10
	cmp r1, #0x04
	bne _080B6E1A
_080B6E10:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80885C4
_080B6E1A:
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
	beq _080B6E3A
	cmp r2, #0x04
	bne _080B6E88
_080B6E3A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E48
	adds r0, #0xFF
_080B6E48:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E56
	adds r0, #0xFF
_080B6E56:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E64
	adds r0, #0xFF
_080B6E64:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B6E76
	adds r0, #0xFF
_080B6E76:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080B6EAC @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080B6E88:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B6E96
	cmp r2, #0x04
	bne _080B6EA0
_080B6E96:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B6EA0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B6EA8: .4byte 0x03000FD8
_080B6EAC: .4byte 0x000007CC
	thumb_func_start sub_80B6EB0
sub_80B6EB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r3, _080B6F8C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r6, [r0, #0x74]
	adds r7, r6, #0x0
	adds r7, #0x08
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6EFE
	cmp r1, #0x04
	bne _080B6F5A
_080B6EFE:
	adds r0, r4, #0x0
	adds r0, #0x4F
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	negs r0, r0
	mov r12, r0
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080B6F14
	adds r1, #0xFF
_080B6F14:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080B6F2A
	adds r0, #0xFF
_080B6F2A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080B6F40
	adds r3, #0xFF
_080B6F40:
	asrs r3, r3, #0x08
	add r3, r12
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080B6F5A:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6F6C
	cmp r1, #0x04
	bne _080B6FAC
_080B6F6C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B6F90
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B6F9C
_080B6F8C: .4byte 0x03000FD8
_080B6F90:
	ldr r2, _080B6FC0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B6F9C:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B6FAC:
	ldr r0, _080B6FC4 @ =0x080B6FC9
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B6FC0: .4byte 0x0000204D
_080B6FC4: .4byte sub_80B6FC8
	thumb_func_start sub_80B6FC8
sub_80B6FC8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B7100 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B6FF4
	b _080B70F6
_080B6FF4:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7006
	cmp r1, #0x04
	bne _080B7022
_080B7006:
	ldr r2, _080B7104 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x02
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
_080B7022:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7036
	cmp r2, #0x04
	bne _080B7052
_080B7036:
	ldr r2, _080B7108 @ =0x00002060
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
_080B7052:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7060
	cmp r2, #0x04
	bne _080B70BA
_080B7060:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B7068
	adds r0, #0xFF
_080B7068:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x10
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B7082
	adds r2, #0xFF
_080B7082:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B70A6
	adds r0, #0xFF
_080B70A6:
	asrs r0, r0, #0x08
	adds r0, #0x04
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B70BA:
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r2, [r5, #0x14]
	str r2, [r6, #0x14]
	ldr r3, [r5, #0x18]
	str r3, [r6, #0x18]
	cmp r0, #0x00
	bge _080B70CC
	adds r0, #0xFF
_080B70CC:
	asrs r1, r0, #0x08
	cmp r2, #0x00
	bge _080B70D4
	adds r2, #0xFF
_080B70D4:
	asrs r2, r2, #0x08
	cmp r3, #0x00
	bge _080B70DC
	adds r3, #0xFF
_080B70DC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080B710C @ =0x00002F7D
	bl sub_80DF024
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B7110 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B7114 @ =0x080B7119
	str r0, [r7, #0x4C]
_080B70F6:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7100: .4byte 0x03000FD8
_080B7104: .4byte 0x00002031
_080B7108: .4byte 0x00002060
_080B710C: .4byte 0x00002F7D
_080B7110: .4byte 0x00000FFF
_080B7114: .4byte sub_80B7118
	thumb_func_start sub_80B7118
sub_80B7118:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080B7240 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x008]
	lsls r1, r1, #0x03
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080B7190
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B7190:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080B71A0
	b _080B76CA
_080B71A0:
	mov r1, r12
	cmp r1, #0x00
	bge _080B71A8
	movs r1, #0x00
_080B71A8:
	ldr r0, _080B7244 @ =0x00007FFF
	cmp r1, r0
	ble _080B71B0
	adds r1, r0, #0x0
_080B71B0:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B71C6
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B71C8
_080B71C6:
	movs r2, #0x00
_080B71C8:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080B72AC
	ldr r2, _080B7240 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B7248
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B71FC
	movs r1, #0x33
_080B71F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B71F0
_080B71FC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7210
	movs r1, #0x33
_080B7204:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7204
_080B7210:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B7224
	movs r1, #0x33
_080B7218:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7218
_080B7224:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B72A4
	movs r1, #0x03
_080B722E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7238
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7238:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B722E
	b _080B72A4
_080B7240: .4byte 0x03000FD8
_080B7244: .4byte 0x00007FFF
_080B7248:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B725E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7252:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7252
_080B725E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7274
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7268:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7268
_080B7274:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B728A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B727E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B727E
_080B728A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B72A4
	movs r1, #0x10
_080B7294:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B729E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B729E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7294
_080B72A4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B72AC:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080B72B6
	movs r1, #0x00
_080B72B6:
	mov r3, r9
	cmp r3, #0x00
	bge _080B72BE
	movs r2, #0x00
_080B72BE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B72C8
	adds r1, r0, #0x0
_080B72C8:
	ldr r0, _080B73BC @ =0x00007FFF
	cmp r2, r0
	ble _080B72D0
	adds r2, r0, #0x0
_080B72D0:
	cmp r2, r1
	bge _080B72D6
	adds r1, r2, #0x0
_080B72D6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B72EE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080B72F0
_080B72EE:
	movs r1, #0x00
_080B72F0:
	cmp r1, #0x00
	bne _080B72F6
	b _080B743E
_080B72F6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B73C0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B7314
	b _080B743E
_080B7314:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B73C4 @ =0x03000FD8
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
	bne _080B742A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B73C8
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B7374
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7368:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7368
_080B7374:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B738A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B737E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B737E
_080B738A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B73A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7394:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7394
_080B73A0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7426
	movs r1, #0x10
_080B73AA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B73B4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B73B4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B73AA
	b _080B7426
_080B73BC: .4byte 0x00007FFF
_080B73C0: .4byte 0x0300034C
_080B73C4: .4byte 0x03000FD8
_080B73C8:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B73E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B73D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B73D4
_080B73E0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B73F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B73EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B73EA
_080B73F6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B740C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7400:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7400
_080B740C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7426
	movs r1, #0x10
_080B7416:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7420
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7420:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7416
_080B7426:
	bl sub_807F448
_080B742A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080B7514 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080B743E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B744A
	b _080B76CA
_080B744A:
	mov r1, r9
	cmp r1, #0x00
	bge _080B7452
	movs r1, #0x00
_080B7452:
	ldr r0, _080B7518 @ =0x00007FFF
	cmp r1, r0
	ble _080B745A
	adds r1, r0, #0x0
_080B745A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B7472
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B7474
_080B7472:
	movs r2, #0x00
_080B7474:
	cmp r2, #0x00
	bne _080B747A
	b _080B7588
_080B747A:
	ldr r3, _080B751C @ =0x03000FD8
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
	ldr r0, _080B7514 @ =0x00000FFF
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
	beq _080B7520
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B74CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74BE
_080B74CA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B74E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74D4
_080B74E0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B74F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74EA
_080B74F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B757C
	movs r1, #0x10
_080B7500:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B750A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B750A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7500
	b _080B757C
	.byte 0x00, 0x00
_080B7514: .4byte 0x00000FFF
_080B7518: .4byte 0x00007FFF
_080B751C: .4byte 0x03000FD8
_080B7520:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7536
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B752A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B752A
_080B7536:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B754C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7540:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7540
_080B754C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7562
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7556:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7556
_080B7562:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B757C
	movs r1, #0x10
_080B756C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7576
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7576:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B756C
_080B757C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B76CA
_080B7588:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080B7594
	b _080B76CA
_080B7594:
	ldr r0, _080B764C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B75A2
	b _080B76CA
_080B75A2:
	ldr r2, _080B7650 @ =0x03000FD8
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
	bne _080B76CA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B7654 @ =0x00000FFF
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
	beq _080B7658
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B75F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B75F8
_080B7604:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B761A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B760E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B760E
_080B761A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7630
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7624:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7624
_080B7630:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B76B4
	movs r1, #0x10
_080B763A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7644
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7644:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B763A
	b _080B76B4
_080B764C: .4byte 0x0300034C
_080B7650: .4byte 0x03000FD8
_080B7654: .4byte 0x00000FFF
_080B7658:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B766E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7662:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7662
_080B766E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7684
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7678:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7678
_080B7684:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B769A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B768E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B768E
_080B769A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B76B4
	movs r1, #0x10
_080B76A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B76AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B76AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B76A4
_080B76B4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B76CA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B7740
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080B76E0
	movs r1, #0x00
_080B76E0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080B76EA
	adds r2, r0, #0x0
_080B76EA:
	ldr r0, _080B7734 @ =0x00007FFF
	cmp r1, r0
	ble _080B76F2
	adds r1, r0, #0x0
_080B76F2:
	cmp r1, r2
	bge _080B76F8
	adds r2, r1, #0x0
_080B76F8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080B7712
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080B7714
_080B7712:
	movs r2, #0x00
_080B7714:
	cmp r2, #0x00
	beq _080B7740
	cmp r3, #0x01
	ble _080B7740
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080B7738 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080B773C @ =0x080B7C41
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B77DE
_080B7734: .4byte 0x00007FFF
_080B7738: .4byte 0x00000FFF
_080B773C: .4byte sub_80B7C40
_080B7740:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B775E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B7760
_080B775E:
	movs r1, #0x00
_080B7760:
	cmp r1, #0x00
	beq _080B77CA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7780
	cmp r1, #0x04
	bne _080B779C
_080B7780:
	ldr r2, _080B77F0 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x03
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
_080B779C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B77AE
	cmp r1, #0x04
	bne _080B77CA
_080B77AE:
	ldr r2, _080B77F4 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080B77CA:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B77DE
	ldr r0, _080B77F8 @ =0x080B77FD
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080B77DE:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B77F0: .4byte 0x00002031
_080B77F4: .4byte 0x00002060
_080B77F8: .4byte sub_80B77FC
	thumb_func_start sub_80B77FC
sub_80B77FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B7900 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B7828
	b _080B7960
_080B7828:
	movs r0, #0x98
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7846
	cmp r1, #0x04
	bne _080B7862
_080B7846:
	ldr r2, _080B7904 @ =0x00002031
	adds r0, r7, #0x0
	movs r1, #0x04
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
_080B7862:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7876
	cmp r2, #0x04
	bne _080B7892
_080B7876:
	ldr r2, _080B7908 @ =0x00002060
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
_080B7892:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B78A0
	cmp r2, #0x04
	bne _080B795A
_080B78A0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B78A8
	adds r1, #0xFF
_080B78A8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B78BE
	adds r0, #0xFF
_080B78BE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B78D4
	adds r3, #0xFF
_080B78D4:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B790C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B791C
	.byte 0x00, 0x00
_080B7900: .4byte 0x03000FD8
_080B7904: .4byte 0x00002031
_080B7908: .4byte 0x00002060
_080B790C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B791C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7924
	adds r0, #0xFF
_080B7924:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B796C @ =0x03001038
	ldr r0, _080B7970 @ =0x0819832C
	ldr r1, _080B7974 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B793E
	adds r1, #0x3F
_080B793E:
	asrs r1, r1, #0x06
	adds r1, #0x2A
	ldr r0, _080B7978 @ =0x000006E4
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080B795A:
	ldr r0, _080B797C @ =0x080B7981
	mov r1, r8
	str r0, [r1, #0x4C]
_080B7960:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B796C: .4byte 0x03001038
_080B7970: .4byte 0x0819832C
_080B7974: .4byte 0x08198220
_080B7978: .4byte 0x000006E4
_080B797C: .4byte sub_80B7980
	thumb_func_start sub_80B7980
sub_80B7980:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080B7A2C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r6, r7, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B7A22
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B79D2
	cmp r1, #0x04
	bne _080B79EE
_080B79D2:
	ldr r2, _080B7A30 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x05
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
_080B79EE:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7A00
	cmp r1, #0x04
	bne _080B7A1C
_080B7A00:
	ldr r2, _080B7A34 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x05
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
_080B7A1C:
	ldr r0, _080B7A38 @ =0x080B7A3D
	mov r1, r8
	str r0, [r1, #0x4C]
_080B7A22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B7A2C: .4byte 0x03000FD8
_080B7A30: .4byte 0x00002031
_080B7A34: .4byte 0x00002060
_080B7A38: .4byte sub_80B7A3C
	thumb_func_start sub_80B7A3C
sub_80B7A3C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _080B7AA4 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r3, [r2, #0x70]
	adds r5, r3, #0x0
	adds r5, #0x08
	ldr r1, [r2, #0x74]
	adds r6, r1, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B7A60
	b _080B7C2A
_080B7A60:
	ldrb r0, [r2, #0x0C]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080B7AA8 @ =0x040A1689
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080B7AAC
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B7C2A
	.byte 0x00, 0x00
_080B7AA4: .4byte 0x03000FD8
_080B7AA8: .4byte 0x040A1689
_080B7AAC:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B7AC8
	ldr r2, _080B7C34 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B7B14
_080B7AC8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B7AD0
	adds r1, #0xFF
_080B7AD0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B7AE6
	adds r0, #0xFF
_080B7AE6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B7AFC
	adds r3, #0xFF
_080B7AFC:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B7C38 @ =0x00002E47
	str r4, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80DF024
_080B7B14:
	ldr r0, _080B7C3C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7B42
	cmp r2, #0x04
	bne _080B7B92
_080B7B42:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B50
	adds r0, #0xFF
_080B7B50:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B5E
	adds r0, #0xFF
_080B7B5E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B6C
	adds r0, #0xFF
_080B7B6C:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7B7E
	adds r0, #0xFF
_080B7B7E:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B7B92:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7BA0
	cmp r2, #0x04
	bne _080B7BAA
_080B7BA0:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B7BAA:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7BBE
	cmp r2, #0x04
	bne _080B7C12
_080B7BBE:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BCC
	adds r0, #0xFF
_080B7BCC:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BDA
	adds r0, #0xFF
_080B7BDA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BE8
	adds r0, #0xFF
_080B7BE8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080B7BFE
	adds r0, #0xFF
_080B7BFE:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080B7C12:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7C20
	cmp r2, #0x04
	bne _080B7C2A
_080B7C20:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_80885C4
_080B7C2A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7C34: .4byte 0x00000111
_080B7C38: .4byte 0x00002E47
_080B7C3C: .4byte 0x03000FD8
	thumb_func_start sub_80B7C40
sub_80B7C40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B7D20 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r2, r1, #0x0
	adds r2, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7C6E
	cmp r1, #0x04
	bne _080B7C72
_080B7C6E:
	ldr r0, _080B7D24 @ =0x080B87B5
	str r0, [r2, #0x4C]
_080B7C72:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _080B7D20 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x0A]
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7C9C
	cmp r2, #0x04
	bne _080B7CB4
_080B7C9C:
	ldr r2, _080B7D28 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B7CB4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7CC2
	cmp r2, #0x04
	bne _080B7D7C
_080B7CC2:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B7CCA
	adds r1, #0xFF
_080B7CCA:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B7CE0
	adds r0, #0xFF
_080B7CE0:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B7CF6
	adds r3, #0xFF
_080B7CF6:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B7D2C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B7D3C
_080B7D20: .4byte 0x03000FD8
_080B7D24: .4byte sub_80B87B4
_080B7D28: .4byte 0x0000204D
_080B7D2C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B7D3C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7D44
	adds r0, #0xFF
_080B7D44:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B7D9C @ =0x03001038
	ldr r0, _080B7DA0 @ =0x0819832C
	ldr r1, _080B7DA4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B7D5E
	adds r1, #0x3F
_080B7D5E:
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
_080B7D7C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B7DA8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B7DAC @ =0x080B7DB1
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7D9C: .4byte 0x03001038
_080B7DA0: .4byte 0x0819832C
_080B7DA4: .4byte 0x08198220
_080B7DA8: .4byte 0x00000FFF
_080B7DAC: .4byte sub_80B7DB0
	thumb_func_start sub_80B7DB0
sub_80B7DB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080B7E5C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r3, r4, #0x0
	cmp r0, #0x06
	bne _080B7EDC
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B7E60
	mov r2, r8
	adds r5, #0x7E
	cmp r2, #0x00
	beq _080B7E12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E06
_080B7E12:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7E28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E1C
_080B7E28:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7E3E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E32:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E32
_080B7E3E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7EBE
	movs r1, #0x10
_080B7E48:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7E52
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7E52:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7E48
	b _080B7EBE
	.byte 0x00, 0x00
_080B7E5C: .4byte 0x03000FD8
_080B7E60:
	mov r2, r8
	adds r5, #0x7E
	cmp r2, #0x00
	beq _080B7E78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E6C
_080B7E78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7E8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E82
_080B7E8E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7EA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E98
_080B7EA4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7EBE
	movs r1, #0x10
_080B7EAE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7EB8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7EB8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7EAE
_080B7EBE:
	bl sub_807F448
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7ED2
	cmp r2, #0x04
	beq _080B7ED2
	b _080B85B4
_080B7ED2:
	ldr r0, _080B7ED8 @ =0x080B869D
	str r0, [r6, #0x4C]
	b _080B85B4
_080B7ED8: .4byte sub_80B869C
_080B7EDC:
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x02
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r4, r0, r3
	lsls r1, r1, #0x03
	negs r1, r1
	adds r0, r3, #0x0
	adds r0, r1, r0
	str r0, [sp, #0x008]
	add r10, r2
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B7F18
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B7F18:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B7F28
	b _080B844E
_080B7F28:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B7F30
	movs r1, #0x00
_080B7F30:
	ldr r0, _080B7FC8 @ =0x00007FFF
	cmp r1, r0
	ble _080B7F38
	adds r1, r0, #0x0
_080B7F38:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B7F4E
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B7F50
_080B7F4E:
	movs r2, #0x00
_080B7F50:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r3, #0xAE
	adds r3, r3, r6
	mov r9, r3
	cmp r2, #0x00
	beq _080B8034
	ldr r2, _080B7FCC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B7FD0
	mov r2, r8
	cmp r2, #0x00
	beq _080B7F82
	movs r1, #0x33
_080B7F76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F76
_080B7F82:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7F96
	movs r1, #0x33
_080B7F8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F8A
_080B7F96:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B7FAA
	movs r1, #0x33
_080B7F9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F9E
_080B7FAA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B802C
	movs r1, #0x03
_080B7FB4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7FBE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7FBE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7FB4
	b _080B802C
	.byte 0x00, 0x00
_080B7FC8: .4byte 0x00007FFF
_080B7FCC: .4byte 0x03000FD8
_080B7FD0:
	mov r2, r8
	cmp r2, #0x00
	beq _080B7FE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7FDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7FDA
_080B7FE6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7FFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7FF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7FF0
_080B7FFC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8012
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8006:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8006
_080B8012:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B802C
	movs r1, #0x10
_080B801C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8026
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8026:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B801C
_080B802C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B8034:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B803E
	movs r1, #0x00
_080B803E:
	mov r0, r10
	cmp r0, #0x00
	bge _080B8046
	movs r2, #0x00
_080B8046:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8050
	adds r1, r0, #0x0
_080B8050:
	ldr r0, _080B8144 @ =0x00007FFF
	cmp r2, r0
	ble _080B8058
	adds r2, r0, #0x0
_080B8058:
	cmp r2, r1
	bge _080B805E
	adds r1, r2, #0x0
_080B805E:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, r1
	blt _080B8074
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B8076
_080B8074:
	movs r1, #0x00
_080B8076:
	cmp r1, #0x00
	bne _080B807C
	b _080B81C4
_080B807C:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B8148 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B809A
	b _080B81C4
_080B809A:
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080B814C @ =0x03000FD8
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
	bne _080B81B2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8150
	mov r2, r8
	adds r3, r4, #0x0
	cmp r2, #0x00
	beq _080B80FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B80EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B80EE
_080B80FA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8110
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8104:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8104
_080B8110:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8126
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B811A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B811A
_080B8126:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B81AE
	movs r1, #0x10
_080B8130:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B813A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B813A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8130
	b _080B81AE
	.byte 0x00, 0x00
_080B8144: .4byte 0x00007FFF
_080B8148: .4byte 0x0300034C
_080B814C: .4byte 0x03000FD8
_080B8150:
	mov r2, r8
	adds r3, r4, #0x0
	cmp r2, #0x00
	beq _080B8168
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B815C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B815C
_080B8168:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B817E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8172:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8172
_080B817E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8194
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8188:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8188
_080B8194:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B81AE
	movs r1, #0x10
_080B819E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B81A8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B81A8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B819E
_080B81AE:
	bl sub_807F448
_080B81B2:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B8298 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B81C4:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B81D0
	b _080B844E
_080B81D0:
	mov r1, r10
	cmp r1, #0x00
	bge _080B81D8
	movs r1, #0x00
_080B81D8:
	ldr r0, _080B829C @ =0x00007FFF
	cmp r1, r0
	ble _080B81E0
	adds r1, r0, #0x0
_080B81E0:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B81F6
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B81F8
_080B81F6:
	movs r2, #0x00
_080B81F8:
	cmp r2, #0x00
	bne _080B81FE
	b _080B830C
_080B81FE:
	ldr r3, _080B82A0 @ =0x03000FD8
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
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B8298 @ =0x00000FFF
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
	beq _080B82A4
	mov r2, r8
	cmp r2, #0x00
	beq _080B824E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8242:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8242
_080B824E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8264
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8258:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8258
_080B8264:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B827A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B826E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B826E
_080B827A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8300
	movs r1, #0x10
_080B8284:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B828E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B828E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8284
	b _080B8300
	.byte 0x00, 0x00
_080B8298: .4byte 0x00000FFF
_080B829C: .4byte 0x00007FFF
_080B82A0: .4byte 0x03000FD8
_080B82A4:
	mov r2, r8
	cmp r2, #0x00
	beq _080B82BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82AE
_080B82BA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B82D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82C4
_080B82D0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B82E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82DA
_080B82E6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8300
	movs r1, #0x10
_080B82F0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B82FA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B82FA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B82F0
_080B8300:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080B844E
_080B830C:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, r10
	ble _080B8316
	b _080B844E
_080B8316:
	ldr r0, _080B83D0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B8324
	b _080B844E
_080B8324:
	ldr r2, _080B83D4 @ =0x03000FD8
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
	ldr r5, [r2, #0x00]
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B844E
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B83D8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r5, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B83DC
	mov r2, r8
	cmp r2, #0x00
	beq _080B8386
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B837A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B837A
_080B8386:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B839C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8390:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8390
_080B839C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B83B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83A6
_080B83B2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8438
	movs r1, #0x10
_080B83BC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B83C6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B83C6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B83BC
	b _080B8438
	.byte 0x00, 0x00
_080B83D0: .4byte 0x0300034C
_080B83D4: .4byte 0x03000FD8
_080B83D8: .4byte 0x00000FFF
_080B83DC:
	mov r2, r8
	cmp r2, #0x00
	beq _080B83F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83E6
_080B83F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8408
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83FC
_080B8408:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B841E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8412:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8412
_080B841E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8438
	movs r1, #0x10
_080B8428:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8432
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8432:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8428
_080B8438:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B844E:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B845A
	b _080B8568
_080B845A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r1, #0x00
	bge _080B8466
	movs r1, #0x00
_080B8466:
	cmp r2, #0x00
	bge _080B846C
	movs r2, #0x00
_080B846C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8476
	adds r1, r0, #0x0
_080B8476:
	ldr r0, _080B84AC @ =0x00007FFF
	cmp r2, r0
	ble _080B847E
	adds r2, r0, #0x0
_080B847E:
	cmp r2, r1
	bge _080B8484
	adds r1, r2, #0x0
_080B8484:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080B849E
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B84A0
_080B849E:
	movs r1, #0x00
_080B84A0:
	cmp r1, #0x00
	beq _080B8568
	cmp r4, #0x01
	ble _080B84B4
	ldr r5, _080B84B0 @ =0x040A1889
	b _080B84B6
_080B84AC: .4byte 0x00007FFF
_080B84B0: .4byte 0x040A1889
_080B84B4:
	ldr r5, _080B84F8 @ =0x040A1789
_080B84B6:
	adds r2, r6, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B84FC
	cmp r1, #0x01
	bne _080B84FC
	adds r0, r6, #0x0
	bl sub_8086764
	b _080B85B4
	.byte 0x00, 0x00
_080B84F8: .4byte 0x040A1789
_080B84FC:
	cmp r4, #0x01
	ble _080B852C
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B8508
	adds r1, #0xFF
_080B8508:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B8512
	adds r2, #0xFF
_080B8512:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B851C
	adds r3, #0xFF
_080B851C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B8528 @ =0x00002E29
	bl sub_80DF024
	b _080B8552
_080B8528: .4byte 0x00002E29
_080B852C:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B8534
	adds r1, #0xFF
_080B8534:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B853E
	adds r2, #0xFF
_080B853E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B8548
	adds r3, #0xFF
_080B8548:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B85C4 @ =0x000006E3
	bl sub_80DF024
_080B8552:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B85C8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B8568:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B85B4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8592
	cmp r1, #0x04
	bne _080B85AE
_080B8592:
	ldr r2, _080B85CC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x07
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
_080B85AE:
	ldr r0, _080B85D0 @ =0x080B85D5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080B85B4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B85C4: .4byte 0x000006E3
_080B85C8: .4byte 0x00000FFF
_080B85CC: .4byte 0x0000204D
_080B85D0: .4byte sub_80B85D4
	thumb_func_start sub_80B85D4
sub_80B85D4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080B8690 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8688
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8602
	cmp r1, #0x04
	bne _080B861E
_080B8602:
	ldr r2, _080B8694 @ =0x0000204D
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
_080B861E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8630
	cmp r1, #0x04
	bne _080B8684
_080B8630:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B863E
	adds r0, #0xFF
_080B863E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B864C
	adds r0, #0xFF
_080B864C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B865A
	adds r0, #0xFF
_080B865A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B8670
	adds r0, #0xFF
_080B8670:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B8684:
	ldr r0, _080B8698 @ =0x080B9421
	str r0, [r5, #0x4C]
_080B8688:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080B8690: .4byte 0x03000FD8
_080B8694: .4byte 0x0000204D
_080B8698: .4byte sub_80B9420
	thumb_func_start sub_80B869C
sub_80B869C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080B874C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087DE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B87A8
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x53
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B86DC
	cmp r1, #0x04
	bne _080B871A
_080B86DC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B86EA
	adds r0, #0xFF
_080B86EA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B86F8
	adds r0, #0xFF
_080B86F8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B8706
	adds r0, #0xFF
_080B8706:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080B871A:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B872E
	cmp r2, #0x04
	bne _080B8790
_080B872E:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B8754
	ldr r2, _080B8750 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B8760
_080B874C: .4byte 0x03000FD8
_080B8750: .4byte 0x00002002
_080B8754:
	ldr r2, _080B87B0 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B8760:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080B8776
	movs r2, #0x01
_080B8776:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B8790:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B879E
	cmp r2, #0x04
	bne _080B87A8
_080B879E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080B87A8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B87B0: .4byte 0x0000204F
	thumb_func_start sub_80B87B4
sub_80B87B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	mov r8, r0
	mov r0, r9
	ldr r5, [r0, #0x2C]
	movs r6, #0x00
	movs r7, #0x00
_080B87D2:
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080B881C
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B881C
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	cmp r4, r0
	beq _080B881C
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080B881C
	adds r5, r4, #0x0
	adds r5, #0x08
_080B881C:
	adds r1, r7, #0x1
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080B8868
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B8868
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	cmp r4, r0
	beq _080B8868
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080B8868
	adds r5, r4, #0x0
	adds r5, #0x08
_080B8868:
	adds r7, #0x02
	cmp r7, #0x05
	ble _080B87D2
	mov r0, r9
	str r5, [r0, #0x2C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	mov r1, r8
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B8890
	cmp r2, #0x04
	bne _080B88AC
_080B8890:
	movs r2, #0x80
	lsls r2, r2, #0x06
	mov r0, r8
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B88AC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B88BA
	cmp r2, #0x04
	bne _080B896A
_080B88BA:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B88C2
	adds r1, #0xFF
_080B88C2:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B88D8
	adds r0, #0xFF
_080B88D8:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B88EE
	adds r3, #0xFF
_080B88EE:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r6, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B891C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B892C
_080B8918: .4byte 0x03000FD8
_080B891C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B892C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B8934
	adds r0, #0xFF
_080B8934:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B898C @ =0x03001038
	ldr r0, _080B8990 @ =0x0819832C
	ldr r1, _080B8994 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B894E
	adds r1, #0x3F
_080B894E:
	asrs r1, r1, #0x06
	adds r1, #0x2A
	ldr r0, _080B8998 @ =0x000006E4
	bl _call_via_r2
	adds r4, r4, r0
	mov r0, r8
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	mov r0, r8
	bl sub_8088164
_080B896A:
	mov r2, r8
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B899C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B89A0 @ =0x080B89A5
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B898C: .4byte 0x03001038
_080B8990: .4byte 0x0819832C
_080B8994: .4byte 0x08198220
_080B8998: .4byte 0x000006E4
_080B899C: .4byte 0x00000FFF
_080B89A0: .4byte sub_80B89A4
	thumb_func_start sub_80B89A4
sub_80B89A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080B8A50 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r3, r4, #0x0
	cmp r0, #0x06
	bne _080B8AD0
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8A54
	adds r2, r6, #0x0
	adds r5, #0x7E
	cmp r6, #0x00
	beq _080B8A06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B89FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B89FA
_080B8A06:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8A1C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A10
_080B8A1C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B8A32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A26
_080B8A32:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8AB2
	movs r1, #0x10
_080B8A3C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8A46
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8A46:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8A3C
	b _080B8AB2
	.byte 0x00, 0x00
_080B8A50: .4byte 0x03000FD8
_080B8A54:
	adds r2, r6, #0x0
	adds r5, #0x7E
	cmp r6, #0x00
	beq _080B8A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A60
_080B8A6C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A76
_080B8A82:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B8A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A8C
_080B8A98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8AB2
	movs r1, #0x10
_080B8AA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8AAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8AAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8AA2
_080B8AB2:
	bl sub_807F448
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B8AC6
	cmp r2, #0x04
	beq _080B8AC6
	b _080B91B2
_080B8AC6:
	ldr r0, _080B8ACC @ =0x080B9299
	str r0, [r6, #0x4C]
	b _080B91B2
_080B8ACC: .4byte sub_80B9298
_080B8AD0:
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x02
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r4, r0, r3
	lsls r1, r1, #0x03
	negs r1, r1
	adds r0, r3, #0x0
	adds r0, r1, r0
	str r0, [sp, #0x008]
	add r10, r2
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B8B0C
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B8B0C:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B8B1C
	b _080B904A
_080B8B1C:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B8B24
	movs r1, #0x00
_080B8B24:
	ldr r0, _080B8BBC @ =0x00007FFF
	cmp r1, r0
	ble _080B8B2C
	adds r1, r0, #0x0
_080B8B2C:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B8B42
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B8B44
_080B8B42:
	movs r2, #0x00
_080B8B44:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r3, #0xAE
	adds r3, r3, r6
	mov r9, r3
	cmp r2, #0x00
	beq _080B8C28
	ldr r2, _080B8BC0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B8BC4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8B76
	movs r1, #0x33
_080B8B6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B6A
_080B8B76:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8B8A
	movs r1, #0x33
_080B8B7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B7E
_080B8B8A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8B9E
	movs r1, #0x33
_080B8B92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B92
_080B8B9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8C20
	movs r1, #0x03
_080B8BA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8BB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8BB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8BA8
	b _080B8C20
	.byte 0x00, 0x00
_080B8BBC: .4byte 0x00007FFF
_080B8BC0: .4byte 0x03000FD8
_080B8BC4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8BDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BCE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BCE
_080B8BDA:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8BF0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BE4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BE4
_080B8BF0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8C06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BFA
_080B8C06:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8C20
	movs r1, #0x10
_080B8C10:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8C1A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8C1A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8C10
_080B8C20:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B8C28:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B8C32
	movs r1, #0x00
_080B8C32:
	mov r0, r10
	cmp r0, #0x00
	bge _080B8C3A
	movs r2, #0x00
_080B8C3A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8C44
	adds r1, r0, #0x0
_080B8C44:
	ldr r0, _080B8D38 @ =0x00007FFF
	cmp r2, r0
	ble _080B8C4C
	adds r2, r0, #0x0
_080B8C4C:
	cmp r2, r1
	bge _080B8C52
	adds r1, r2, #0x0
_080B8C52:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, r1
	blt _080B8C68
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B8C6A
_080B8C68:
	movs r1, #0x00
_080B8C6A:
	cmp r1, #0x00
	bne _080B8C70
	b _080B8DB8
_080B8C70:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B8D3C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B8C8E
	b _080B8DB8
_080B8C8E:
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080B8D40 @ =0x03000FD8
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
	bne _080B8DA6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8D44
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B8CEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8CE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8CE2
_080B8CEE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8D04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8CF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8CF8
_080B8D04:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8D1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D0E
_080B8D1A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8DA2
	movs r1, #0x10
_080B8D24:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8D2E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8D2E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8D24
	b _080B8DA2
	.byte 0x00, 0x00
_080B8D38: .4byte 0x00007FFF
_080B8D3C: .4byte 0x0300034C
_080B8D40: .4byte 0x03000FD8
_080B8D44:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B8D5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D50
_080B8D5C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8D72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D66
_080B8D72:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8D88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D7C
_080B8D88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8DA2
	movs r1, #0x10
_080B8D92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8D9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8D9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8D92
_080B8DA2:
	bl sub_807F448
_080B8DA6:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B8E8C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B8DB8:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B8DC4
	b _080B904A
_080B8DC4:
	mov r1, r10
	cmp r1, #0x00
	bge _080B8DCC
	movs r1, #0x00
_080B8DCC:
	ldr r0, _080B8E90 @ =0x00007FFF
	cmp r1, r0
	ble _080B8DD4
	adds r1, r0, #0x0
_080B8DD4:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B8DEA
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B8DEC
_080B8DEA:
	movs r2, #0x00
_080B8DEC:
	cmp r2, #0x00
	bne _080B8DF2
	b _080B8F00
_080B8DF2:
	ldr r3, _080B8E94 @ =0x03000FD8
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
	ldr r0, _080B8E8C @ =0x00000FFF
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
	beq _080B8E98
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8E42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E36
_080B8E42:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8E58
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E4C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E4C
_080B8E58:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8E6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E62
_080B8E6E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8EF4
	movs r1, #0x10
_080B8E78:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8E82
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8E82:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8E78
	b _080B8EF4
	.byte 0x00, 0x00
_080B8E8C: .4byte 0x00000FFF
_080B8E90: .4byte 0x00007FFF
_080B8E94: .4byte 0x03000FD8
_080B8E98:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8EAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8EA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8EA2
_080B8EAE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8EC4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8EB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8EB8
_080B8EC4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8EDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8ECE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8ECE
_080B8EDA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8EF4
	movs r1, #0x10
_080B8EE4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8EEE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8EEE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8EE4
_080B8EF4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080B904A
_080B8F00:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, r10
	ble _080B8F0A
	b _080B904A
_080B8F0A:
	ldr r0, _080B8FCC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B8F20
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B8F20
	b _080B904A
_080B8F20:
	ldr r2, _080B8FD0 @ =0x03000FD8
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
	ldr r5, [r2, #0x00]
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B904A
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B8FD4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r5, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8FD8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8F82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8F76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8F76
_080B8F82:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8F98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8F8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8F8C
_080B8F98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8FAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FA2
_080B8FAE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9034
	movs r1, #0x10
_080B8FB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8FC2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8FC2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8FB8
	b _080B9034
	.byte 0x00, 0x00
_080B8FCC: .4byte 0x0300034C
_080B8FD0: .4byte 0x03000FD8
_080B8FD4: .4byte 0x00000FFF
_080B8FD8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8FEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FE2
_080B8FEE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B9004
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FF8
_080B9004:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B901A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B900E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B900E
_080B901A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9034
	movs r1, #0x10
_080B9024:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B902E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B902E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9024
_080B9034:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B904A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B9056
	b _080B9164
_080B9056:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r1, #0x00
	bge _080B9062
	movs r1, #0x00
_080B9062:
	cmp r2, #0x00
	bge _080B9068
	movs r2, #0x00
_080B9068:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B9072
	adds r1, r0, #0x0
_080B9072:
	ldr r0, _080B90A8 @ =0x00007FFF
	cmp r2, r0
	ble _080B907A
	adds r2, r0, #0x0
_080B907A:
	cmp r2, r1
	bge _080B9080
	adds r1, r2, #0x0
_080B9080:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080B909A
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B909C
_080B909A:
	movs r1, #0x00
_080B909C:
	cmp r1, #0x00
	beq _080B9164
	cmp r4, #0x01
	ble _080B90B0
	ldr r5, _080B90AC @ =0x040A1A89
	b _080B90B2
_080B90A8: .4byte 0x00007FFF
_080B90AC: .4byte 0x040A1A89
_080B90B0:
	ldr r5, _080B90F4 @ =0x040A1989
_080B90B2:
	adds r2, r6, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B90F8
	cmp r1, #0x01
	bne _080B90F8
	adds r0, r6, #0x0
	bl sub_8086764
	b _080B91B2
	.byte 0x00, 0x00
_080B90F4: .4byte 0x040A1989
_080B90F8:
	cmp r4, #0x01
	ble _080B9128
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B9104
	adds r1, #0xFF
_080B9104:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B910E
	adds r2, #0xFF
_080B910E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B9118
	adds r3, #0xFF
_080B9118:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B9124 @ =0x00002E29
	bl sub_80DF024
	b _080B914E
_080B9124: .4byte 0x00002E29
_080B9128:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B9130
	adds r1, #0xFF
_080B9130:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B913A
	adds r2, #0xFF
_080B913A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B9144
	adds r3, #0xFF
_080B9144:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B91C4 @ =0x000006E3
	bl sub_80DF024
_080B914E:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B91C8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B9164:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B91B2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B918E
	cmp r1, #0x04
	bne _080B91AC
_080B918E:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x07
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
_080B91AC:
	ldr r0, _080B91CC @ =0x080B91D1
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080B91B2:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B91C4: .4byte 0x000006E3
_080B91C8: .4byte 0x00000FFF
_080B91CC: .4byte sub_80B91D0
	thumb_func_start sub_80B91D0
sub_80B91D0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080B9290 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B9286
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B91FE
	cmp r1, #0x04
	bne _080B921C
_080B91FE:
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
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B921C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B922E
	cmp r1, #0x04
	bne _080B9282
_080B922E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B923C
	adds r0, #0xFF
_080B923C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B924A
	adds r0, #0xFF
_080B924A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9258
	adds r0, #0xFF
_080B9258:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B926E
	adds r0, #0xFF
_080B926E:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B9282:
	ldr r0, _080B9294 @ =0x080B93B1
	str r0, [r5, #0x4C]
_080B9286:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9290: .4byte 0x03000FD8
_080B9294: .4byte sub_80B93B0
	thumb_func_start sub_80B9298
sub_80B9298:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080B9348 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087DE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B93A4
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x53
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B92D8
	cmp r1, #0x04
	bne _080B9316
_080B92D8:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B92E6
	adds r0, #0xFF
_080B92E6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B92F4
	adds r0, #0xFF
_080B92F4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9302
	adds r0, #0xFF
_080B9302:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080B9316:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B932A
	cmp r2, #0x04
	bne _080B938C
_080B932A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B9350
	ldr r2, _080B934C @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B935C
_080B9348: .4byte 0x03000FD8
_080B934C: .4byte 0x00002002
_080B9350:
	ldr r2, _080B93AC @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B935C:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080B9372
	movs r2, #0x01
_080B9372:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B938C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B939A
	cmp r2, #0x04
	bne _080B93A4
_080B939A:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080B93A4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B93AC: .4byte 0x0000204F
	thumb_func_start sub_80B93B0
sub_80B93B0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B9418 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B9410
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B93EE
	cmp r1, #0x04
	bne _080B940C
_080B93EE:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x0D
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
_080B940C:
	ldr r0, _080B941C @ =0x080B95D9
	str r0, [r6, #0x4C]
_080B9410:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9418: .4byte 0x03000FD8
_080B941C: .4byte sub_80B95D8
	thumb_func_start sub_80B9420
sub_80B9420:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B9484 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B947E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B945E
	cmp r1, #0x04
	bne _080B947A
_080B945E:
	ldr r2, _080B9488 @ =0x0000204D
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
_080B947A:
	ldr r0, _080B948C @ =0x080B9625
	str r0, [r6, #0x4C]
_080B947E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B9484: .4byte 0x03000FD8
_080B9488: .4byte 0x0000204D
_080B948C: .4byte sub_80B9624
	thumb_func_start sub_80B9490
sub_80B9490:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080B94D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B94AE
	cmp r1, #0x04
	bne _080B94F0
_080B94AE:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B94D4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080B94E0
	.byte 0x00, 0x00
_080B94D0: .4byte 0x03000FD8
_080B94D4:
	ldr r2, _080B94FC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080B94E0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B94F0:
	ldr r0, _080B9500 @ =0x080B62D9
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B94FC: .4byte 0x0000204D
_080B9500: .4byte sub_80B62D8
	thumb_func_start sub_80B9504
sub_80B9504:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B9560 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B9558
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B9538
	cmp r1, #0x04
	bne _080B9554
_080B9538:
	ldr r2, _080B9564 @ =0x0000205E
	adds r0, r5, #0x0
	movs r1, #0x00
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
_080B9554:
	ldr r0, _080B9568 @ =0x080B363D
	str r0, [r6, #0x4C]
_080B9558:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9560: .4byte 0x03000FD8
_080B9564: .4byte 0x0000205E
_080B9568: .4byte sub_80B363C
	thumb_func_start sub_80B956C
sub_80B956C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B95D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B95CA
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B95A0
	cmp r1, #0x04
	bne _080B95C6
_080B95A0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B95C6:
	ldr r0, _080B95D4 @ =0x080B35C9
	str r0, [r6, #0x4C]
_080B95CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B95D0: .4byte 0x03000FD8
_080B95D4: .4byte sub_80B35C8
	thumb_func_start sub_80B95D8
sub_80B95D8:
	push {r4, lr}
	ldr r0, _080B9620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B961A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080B961A:
	pop {r4}
	pop {r0}
	bx r0
_080B9620: .4byte 0x03000FD8
	thumb_func_start sub_80B9624
sub_80B9624:
	push {r4, lr}
	ldr r0, _080B966C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B9666
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080B9666:
	pop {r4}
	pop {r0}
	bx r0
_080B966C: .4byte 0x03000FD8
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x81, 0x46, 0x1F, 0x4A, 0x83, 0x6A, 0x18, 0x1C
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x08, 0x01, 0x40, 0x1A, 0x80, 0x00, 0x3C, 0x30, 0x11, 0x68
	.byte 0x09, 0x1A, 0x8A, 0x20, 0x40, 0x00, 0x1A, 0x18, 0x48, 0x8D, 0x10, 0x60, 0x17, 0x48, 0x00, 0x68
	.byte 0x05, 0x6F, 0x08, 0x21, 0x49, 0x19, 0x88, 0x46, 0x44, 0x6F, 0x26, 0x1C, 0x08, 0x36, 0x4A, 0x46
	.byte 0xD0, 0x6A, 0xF0, 0x62, 0xC8, 0x62, 0xD1, 0x6E, 0xF1, 0x66, 0x42, 0x46, 0xD1, 0x66, 0x00, 0x23
	.byte 0x03, 0x65, 0x33, 0x65, 0x13, 0x65, 0x02, 0x1C, 0x7C, 0x32, 0x80, 0x21, 0x49, 0x00, 0x11, 0x80
	.byte 0x84, 0x34, 0x21, 0x80, 0x84, 0x35, 0x29, 0x80, 0x09, 0x49, 0x4C, 0x46, 0xE1, 0x64, 0xB3, 0x84
	.byte 0x41, 0x46, 0x8B, 0x84, 0xCD, 0xF7, 0xE6, 0xFC, 0x01, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x05, 0x97, 0x0B, 0x08
	thumb_func_start sub_80B9704
sub_80B9704:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r4, _080B97E0 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	strb r0, [r1, #0x0E]
	ldr r5, [r4, #0x00]
	ldr r0, _080B97E4 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0A]
	lsrs r0, r0, #0x02
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	ldrh r0, [r2, #0x0C]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r3
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r5, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x0A]
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B9768
	cmp r1, #0x04
	bne _080B97AE
_080B9768:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9776
	adds r0, #0xFF
_080B9776:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x14
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9788
	adds r0, #0xFF
_080B9788:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B979A
	adds r0, #0xFF
_080B979A:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080B97AE:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B97C2
	cmp r2, #0x04
	bne _080B9828
_080B97C2:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B97EC
	ldr r2, _080B97E8 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B97F8
_080B97E0: .4byte 0x03000FD8
_080B97E4: .4byte 0x03000FF4
_080B97E8: .4byte 0x00002002
_080B97EC:
	ldr r2, _080B98CC @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B97F8:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B980E
	movs r2, #0x01
_080B980E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B9828:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B9836
	cmp r2, #0x04
	bne _080B9840
_080B9836:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080B9840:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B9854
	cmp r2, #0x04
	bne _080B989E
_080B9854:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9862
	adds r0, #0xFF
_080B9862:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x14
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9874
	adds r0, #0xFF
_080B9874:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9886
	adds r0, #0xFF
_080B9886:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080B989E:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B98AC
	cmp r2, #0x04
	bne _080B9910
_080B98AC:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B98D4
	ldr r2, _080B98D0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B98E0
	.byte 0x00, 0x00
_080B98CC: .4byte 0x0000204F
_080B98D0: .4byte 0x00002002
_080B98D4:
	ldr r2, _080B9924 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B98E0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B98F6
	movs r2, #0x01
_080B98F6:
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
_080B9910:
	ldr r0, _080B9928 @ =0x080C0C55
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9924: .4byte 0x0000204F
_080B9928: .4byte sub_80C0C54
