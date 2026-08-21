	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80C8BA0
sub_80C8BA0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C8C48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8C40
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8BD6
	cmp r1, #0x04
	bne _080C8BEE
_080C8BD6:
	ldr r2, _080C8C4C @ =0x00002063
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
_080C8BEE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8C00
	cmp r1, #0x04
	bne _080C8C30
_080C8C00:
	ldr r2, _080C8C50 @ =0x03001038
	ldr r0, _080C8C54 @ =0x0819832C
	ldr r1, _080C8C58 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
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
_080C8C30:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C8C5C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C8C60 @ =0x080C8C65
	str r0, [r6, #0x4C]
_080C8C40:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C8C48: .4byte 0x03000FD8
_080C8C4C: .4byte 0x00002063
_080C8C50: .4byte 0x03001038
_080C8C54: .4byte 0x0819832C
_080C8C58: .4byte 0x08198220
_080C8C5C: .4byte 0x00000FFF
_080C8C60: .4byte sub_80C8C64
	thumb_func_start sub_80C8C64
sub_80C8C64:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080C8D4C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080C8CAA
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C8CAA:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C8CBA
	b _080C91D0
_080C8CBA:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080C8CD2
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080C8CD4
_080C8CD2:
	movs r1, #0x00
_080C8CD4:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080C8DB4
	ldr r2, _080C8D4C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C8D50
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C8D08
	movs r1, #0x66
_080C8CFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8CFC
_080C8D08:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8D1C
	movs r1, #0x66
_080C8D10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D10
_080C8D1C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C8D30
	movs r1, #0x66
_080C8D24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D24
_080C8D30:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8DAC
	movs r1, #0x06
_080C8D3A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8D44
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8D44:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8D3A
	b _080C8DAC
_080C8D4C: .4byte 0x03000FD8
_080C8D50:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C8D66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8D5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D5A
_080C8D66:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8D7C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8D70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D70
_080C8D7C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C8D92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8D86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8D86
_080C8D92:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8DAC
	movs r1, #0x10
_080C8D9C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8DA6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8DA6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8D9C
_080C8DAC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C8DB4:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C8DC4
	adds r1, r0, #0x0
_080C8DC4:
	ldr r0, _080C8EBC @ =0x00007FFF
	cmp r2, r0
	ble _080C8DCC
	adds r2, r0, #0x0
_080C8DCC:
	cmp r2, r1
	bge _080C8DD2
	adds r1, r2, #0x0
_080C8DD2:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C8DEA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C8DEC
_080C8DEA:
	movs r1, #0x00
_080C8DEC:
	cmp r1, #0x00
	bne _080C8DF2
	b _080C8F3E
_080C8DF2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C8EC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C8E10
	b _080C8F3E
_080C8E10:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C8EC4 @ =0x03000FD8
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
	bne _080C8F2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8EC8
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080C8E72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8E66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8E66
_080C8E72:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8E88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8E7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8E7C
_080C8E88:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C8E9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8E92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8E92
_080C8E9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8F26
	movs r1, #0x10
_080C8EA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8EB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8EB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8EA8
	b _080C8F26
	.byte 0x00, 0x00
_080C8EBC: .4byte 0x00007FFF
_080C8EC0: .4byte 0x0300034C
_080C8EC4: .4byte 0x03000FD8
_080C8EC8:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080C8EE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8ED4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8ED4
_080C8EE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8EF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8EEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8EEA
_080C8EF6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C8F0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8F00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8F00
_080C8F0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8F26
	movs r1, #0x10
_080C8F16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8F20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8F20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8F16
_080C8F26:
	bl sub_807F448
_080C8F2A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C9010 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C8F3E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C8F4A
	b _080C91D0
_080C8F4A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C9014 @ =0x00007FFF
	cmp r1, r0
	ble _080C8F56
	adds r1, r0, #0x0
_080C8F56:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C8F6E
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C8F70
_080C8F6E:
	movs r2, #0x00
_080C8F70:
	cmp r2, #0x00
	bne _080C8F76
	b _080C9084
_080C8F76:
	ldr r3, _080C9018 @ =0x03000FD8
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
	ldr r0, _080C9010 @ =0x00000FFF
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
	beq _080C901C
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C8FC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8FBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8FBA
_080C8FC6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8FDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8FD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8FD0
_080C8FDC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C8FF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8FE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8FE6
_080C8FF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C9078
	movs r1, #0x10
_080C8FFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9006
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9006:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8FFC
	b _080C9078
	.byte 0x00, 0x00
_080C9010: .4byte 0x00000FFF
_080C9014: .4byte 0x00007FFF
_080C9018: .4byte 0x03000FD8
_080C901C:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C9032
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9026:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9026
_080C9032:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C9048
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C903C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C903C
_080C9048:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C905E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9052:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9052
_080C905E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C9078
	movs r1, #0x10
_080C9068:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9072
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9072:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C9068
_080C9078:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C91D0
_080C9084:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080C9094
	b _080C91D0
_080C9094:
	ldr r0, _080C9150 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C90A2
	b _080C91D0
_080C90A2:
	ldr r2, _080C9154 @ =0x03000FD8
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
	beq _080C90D2
	b _080C91D0
_080C90D2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C9158 @ =0x00000FFF
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
	beq _080C915C
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C9106
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C90FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C90FA
_080C9106:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C911C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9110:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9110
_080C911C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C9132
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9126:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9126
_080C9132:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C91B8
	movs r1, #0x10
_080C913C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9146
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9146:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C913C
	b _080C91B8
	.byte 0x00, 0x00
_080C9150: .4byte 0x0300034C
_080C9154: .4byte 0x03000FD8
_080C9158: .4byte 0x00000FFF
_080C915C:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C9172
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9166:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9166
_080C9172:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C9188
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C917C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C917C
_080C9188:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C919E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9192:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9192
_080C919E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C91B8
	movs r1, #0x10
_080C91A8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C91B2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C91B2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C91A8
_080C91B8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C91D0:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C9240
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C91EA
	adds r1, r0, #0x0
_080C91EA:
	ldr r0, _080C9234 @ =0x00007FFF
	cmp r2, r0
	ble _080C91F2
	adds r2, r0, #0x0
_080C91F2:
	cmp r2, r1
	bge _080C91F8
	adds r1, r2, #0x0
_080C91F8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C9212
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C9214
_080C9212:
	movs r1, #0x00
_080C9214:
	cmp r1, #0x00
	beq _080C9240
	cmp r3, #0x01
	ble _080C9240
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C9238 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C923C @ =0x080C9A4D
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080C92C2
_080C9234: .4byte 0x00007FFF
_080C9238: .4byte 0x00000FFF
_080C923C: .4byte sub_80C9A4C
_080C9240:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080C92C2
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C9264
	cmp r2, #0x04
	bne _080C9280
_080C9264:
	ldr r2, _080C92D4 @ =0x00002063
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
_080C9280:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C928E
	cmp r2, #0x04
	bne _080C92BC
_080C928E:
	ldr r2, _080C92D8 @ =0x03001038
	ldr r0, _080C92DC @ =0x0819832C
	ldr r1, _080C92E0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x07
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_080C92BC:
	ldr r0, _080C92E4 @ =0x080C92E9
	mov r4, r10
	str r0, [r4, #0x4C]
_080C92C2:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C92D4: .4byte 0x00002063
_080C92D8: .4byte 0x03001038
_080C92DC: .4byte 0x0819832C
_080C92E0: .4byte 0x08198220
_080C92E4: .4byte sub_80C92E8
	thumb_func_start sub_80C92E8
sub_80C92E8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C9378 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C9370
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C932A
	cmp r1, #0x04
	bne _080C9346
_080C932A:
	ldr r2, _080C937C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x09
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
_080C9346:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C934E
	adds r1, #0xFF
_080C934E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C9358
	adds r2, #0xFF
_080C9358:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C9362
	adds r3, #0xFF
_080C9362:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	ldr r0, _080C9380 @ =0x080C9385
	str r0, [r7, #0x4C]
_080C9370:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C9378: .4byte 0x03000FD8
_080C937C: .4byte 0x00002034
_080C9380: .4byte sub_80C9384
	thumb_func_start sub_80C9384
sub_80C9384:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C9424 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C941C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C93BA
	cmp r1, #0x04
	bne _080C93D6
_080C93BA:
	ldr r2, _080C9428 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x07
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
_080C93D6:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C93E8
	cmp r1, #0x04
	bne _080C9418
_080C93E8:
	ldr r2, _080C942C @ =0x03001038
	ldr r0, _080C9430 @ =0x0819832C
	ldr r1, _080C9434 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x23
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
_080C9418:
	ldr r0, _080C9438 @ =0x080C943D
	str r0, [r6, #0x4C]
_080C941C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C9424: .4byte 0x03000FD8
_080C9428: .4byte 0x00002063
_080C942C: .4byte 0x03001038
_080C9430: .4byte 0x0819832C
_080C9434: .4byte 0x08198220
_080C9438: .4byte sub_80C943C
	thumb_func_start sub_80C943C
sub_80C943C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C9540 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	mov r1, r8
	ldr r6, [r1, #0x2C]
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C9532
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r0, #0x7E
	mov r1, r9
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C9482
	adds r1, #0xFF
_080C9482:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C948C
	adds r2, #0xFF
_080C948C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C9496
	adds r3, #0xFF
_080C9496:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C94B2
	cmp r1, #0x04
	bne _080C9502
_080C94B2:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C94BA
	adds r0, #0xFF
_080C94BA:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080C94D4
	adds r0, #0xFF
_080C94D4:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r1, [r6, #0x40]
	cmp r1, #0x00
	bge _080C94EA
	adds r1, #0xFF
_080C94EA:
	asrs r3, r1, #0x08
	mov r1, r9
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C9502:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9514
	cmp r1, #0x04
	bne _080C952C
_080C9514:
	ldr r2, _080C9544 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C952C:
	ldr r0, _080C9548 @ =0x080C954D
	mov r1, r8
	str r0, [r1, #0x4C]
_080C9532:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C9540: .4byte 0x03000FD8
_080C9544: .4byte 0x00002034
_080C9548: .4byte sub_80C954C
	thumb_func_start sub_80C954C
sub_80C954C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C9638 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C962E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C963C @ =0x040300AB
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C95C6
	ldr r2, _080C9640 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C95FC
_080C95C6:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080C95CE
	adds r1, #0xFF
_080C95CE:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080C95E4
	adds r2, #0xFF
_080C95E4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r5, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080C95FC:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C960E
	cmp r1, #0x04
	bne _080C962A
_080C960E:
	ldr r2, _080C9644 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x0B
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
_080C962A:
	ldr r0, _080C9648 @ =0x080C964D
	str r0, [r7, #0x4C]
_080C962E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C9638: .4byte 0x03000FD8
_080C963C: .4byte 0x040300AB
_080C9640: .4byte 0x00000111
_080C9644: .4byte 0x00002034
_080C9648: .4byte sub_80C964C
	thumb_func_start sub_80C964C
sub_80C964C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C9688 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C970C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bne _080C9690
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C9680
	cmp r2, #0x04
	bne _080C970C
_080C9680:
	ldr r0, _080C968C @ =0x080C9855
	str r0, [r4, #0x4C]
	b _080C970C
	.byte 0x00, 0x00
_080C9688: .4byte 0x03000FD8
_080C968C: .4byte sub_80C9854
_080C9690:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C96A2
	cmp r1, #0x04
	bne _080C96FC
_080C96A2:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080C96AA
	adds r0, #0xFF
_080C96AA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080C96C4
	adds r2, #0xFF
_080C96C4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
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
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C96E8
	adds r0, #0xFF
_080C96E8:
	asrs r0, r0, #0x08
	adds r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C96FC:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C9714 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C9718 @ =0x080C971D
	str r0, [r6, #0x4C]
_080C970C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080C9714: .4byte 0x00000FFF
_080C9718: .4byte sub_80C971C
	thumb_func_start sub_80C971C
sub_80C971C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C97A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080C97A8 @ =0x03001038
	ldr r2, _080C97AC @ =0x0819832C
	ldr r3, _080C97B0 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080C976A
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080C976C
_080C976A:
	movs r1, #0x00
_080C976C:
	cmp r1, #0x00
	beq _080C97D0
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9782
	cmp r1, #0x04
	bne _080C97D0
_080C9782:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C97B4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080C97C0
	.byte 0x00, 0x00
_080C97A4: .4byte 0x03000FD8
_080C97A8: .4byte 0x03001038
_080C97AC: .4byte 0x0819832C
_080C97B0: .4byte 0x08198220
_080C97B4:
	ldr r2, _080C984C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080C97C0:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C97D0:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C9842
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
	beq _080C97FA
	cmp r1, #0x04
	bne _080C9818
_080C97FA:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
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
_080C9818:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080C9820
	adds r1, #0xFF
_080C9820:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080C982A
	adds r2, #0xFF
_080C982A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080C9834
	adds r3, #0xFF
_080C9834:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _080C9850 @ =0x080CCDED
	str r0, [r7, #0x4C]
_080C9842:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C984C: .4byte 0x0000204D
_080C9850: .4byte sub_80CCDEC
	thumb_func_start sub_80C9854
sub_80C9854:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C9904 @ =0x03000FD8
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
	bne _080C9876
	b _080C9A40
_080C9876:
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
	beq _080C9894
	cmp r1, #0x04
	bne _080C98D2
_080C9894:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C98A2
	adds r0, #0xFF
_080C98A2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C98B0
	adds r0, #0xFF
_080C98B0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C98BE
	adds r0, #0xFF
_080C98BE:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C98D2:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080C98E6
	cmp r2, #0x04
	bne _080C9948
_080C98E6:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C990C
	ldr r2, _080C9908 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C9918
_080C9904: .4byte 0x03000FD8
_080C9908: .4byte 0x00002002
_080C990C:
	ldr r2, _080C99E4 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C9918:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C992E
	movs r2, #0x01
_080C992E:
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
_080C9948:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C9956
	cmp r2, #0x04
	bne _080C9960
_080C9956:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C9960:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C9974
	cmp r2, #0x04
	bne _080C99B6
_080C9974:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C9982
	adds r0, #0xFF
_080C9982:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C9990
	adds r0, #0xFF
_080C9990:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C999E
	adds r0, #0xFF
_080C999E:
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
_080C99B6:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C99C4
	cmp r1, #0x04
	bne _080C9A28
_080C99C4:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C99EC
	ldr r2, _080C99E8 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C99F8
	.byte 0x00, 0x00
_080C99E4: .4byte 0x0000204F
_080C99E8: .4byte 0x00002002
_080C99EC:
	ldr r2, _080C9A48 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C99F8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C9A0E
	movs r2, #0x01
_080C9A0E:
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
_080C9A28:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C9A36
	cmp r2, #0x04
	bne _080C9A40
_080C9A36:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080C9A40:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C9A48: .4byte 0x0000204F
	thumb_func_start sub_80C9A4C
sub_80C9A4C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C9AD4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9A6A
	cmp r1, #0x04
	bne _080C9A86
_080C9A6A:
	ldr r2, _080C9AD8 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x02
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
_080C9A86:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9A98
	cmp r1, #0x04
	bne _080C9AC8
_080C9A98:
	ldr r2, _080C9ADC @ =0x03001038
	ldr r0, _080C9AE0 @ =0x0819832C
	ldr r1, _080C9AE4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
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
_080C9AC8:
	ldr r0, _080C9AE8 @ =0x080C9AED
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C9AD4: .4byte 0x03000FD8
_080C9AD8: .4byte 0x00002063
_080C9ADC: .4byte 0x03001038
_080C9AE0: .4byte 0x0819832C
_080C9AE4: .4byte 0x08198220
_080C9AE8: .4byte sub_80C9AEC
	thumb_func_start sub_80C9AEC
sub_80C9AEC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C9B90 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C9B88
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C9B1A
	adds r1, #0xFF
_080C9B1A:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C9B24
	adds r2, #0xFF
_080C9B24:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C9B2E
	adds r3, #0xFF
_080C9B2E:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080C9B94 @ =0x00002FE6
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9B54
	cmp r1, #0x04
	bne _080C9B84
_080C9B54:
	ldr r2, _080C9B98 @ =0x03001038
	ldr r0, _080C9B9C @ =0x0819832C
	ldr r1, _080C9BA0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C9B84:
	ldr r0, _080C9BA4 @ =0x080C9BA9
	str r0, [r7, #0x4C]
_080C9B88:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C9B90: .4byte 0x03000FD8
_080C9B94: .4byte 0x00002FE6
_080C9B98: .4byte 0x03001038
_080C9B9C: .4byte 0x0819832C
_080C9BA0: .4byte 0x08198220
_080C9BA4: .4byte sub_80C9BA8
	thumb_func_start sub_80C9BA8
sub_80C9BA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C9D10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r6, [r0, #0x74]
	adds r7, r6, #0x0
	adds r7, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	ldr r2, [r4, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _080C9BDA
	adds r1, #0x3F
_080C9BDA:
	asrs r1, r1, #0x06
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	subs r0, r0, r1
	strh r0, [r2, #0x06]
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C9BF6
	b _080C9D00
_080C9BF6:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9C16
	cmp r1, #0x04
	bne _080C9C5E
_080C9C16:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080C9C1E
	adds r1, #0xFF
_080C9C1E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080C9C34
	adds r2, #0xFF
_080C9C34:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r3, r8
	str r3, [sp, #0x000]
	adds r0, r7, #0x0
	movs r3, #0x06
	bl sub_808843C
	movs r1, #0x3C
	adds r0, r6, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	ldr r1, _080C9D14 @ =0x00000399
	adds r0, r7, #0x0
	bl sub_8088164
_080C9C5E:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9C70
	cmp r1, #0x04
	bne _080C9C88
_080C9C70:
	ldr r2, _080C9D18 @ =0x00002053
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C9C88:
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C9CA2
	cmp r1, #0x04
	bne _080C9CBA
_080C9CA2:
	ldr r2, _080C9D1C @ =0x00002035
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C9CBA:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C9CC2
	adds r1, #0xFF
_080C9CC2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C9CCC
	adds r2, #0xFF
_080C9CCC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C9CD6
	adds r3, #0xFF
_080C9CD6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080C9D20 @ =0x00002FF9
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C9D24 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C9D28 @ =0x080C9D2D
	mov r1, r9
	str r0, [r1, #0x4C]
_080C9D00:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C9D10: .4byte 0x03000FD8
_080C9D14: .4byte 0x00000399
_080C9D18: .4byte 0x00002053
_080C9D1C: .4byte 0x00002035
_080C9D20: .4byte 0x00002FF9
_080C9D24: .4byte 0x00000FFF
_080C9D28: .4byte sub_80C9D2C
	thumb_func_start sub_80C9D2C
sub_80C9D2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C9E40 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r10, r0
	mov r0, r9
	bl sub_8087CE4
	mov r1, r9
	ldr r3, [r1, #0x18]
	ldr r0, [r1, #0x40]
	cmp r3, r0
	bge _080C9D86
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080C9D68
	adds r0, #0xFF
_080C9D68:
	asrs r0, r0, #0x08
	cmp r0, #0x0F
	bgt _080C9D86
	ldr r2, _080C9E44 @ =0x03001038
	ldr r0, _080C9E48 @ =0x0819832C
	ldr r1, _080C9E4C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	movs r1, #0x10
	bl _call_via_r2
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080C9D86:
	mov r0, r9
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r7, r0, #0x0
	mov r3, r9
	adds r3, #0x79
	str r3, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x07
	cmp r1, r4
	bge _080C9DA8
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
_080C9DA8:
	mov r1, r9
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080C9DB8
	b _080CA192
_080C9DB8:
	movs r2, #0x00
	mov r0, r9
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r8, r0
	cmp r1, r2
	bgt _080C9DD2
	movs r4, #0x00
	ldsh r0, [r7, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080C9DD4
_080C9DD2:
	movs r1, #0x00
_080C9DD4:
	cmp r1, #0x00
	beq _080C9EB4
	ldr r2, _080C9E40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C9E50
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C9DFC
	movs r1, #0x66
_080C9DF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9DF0
_080C9DFC:
	mov r2, r9
	cmp r2, #0x00
	beq _080C9E10
	movs r1, #0x66
_080C9E04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E04
_080C9E10:
	mov r2, r10
	cmp r2, #0x00
	beq _080C9E24
	movs r1, #0x66
_080C9E18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E18
_080C9E24:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C9EAC
	movs r1, #0x06
_080C9E2E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9E38
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9E38:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C9E2E
	b _080C9EAC
_080C9E40: .4byte 0x03000FD8
_080C9E44: .4byte 0x03001038
_080C9E48: .4byte 0x0819832C
_080C9E4C: .4byte 0x08198220
_080C9E50:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C9E66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9E5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E5A
_080C9E66:
	mov r2, r9
	cmp r2, #0x00
	beq _080C9E7C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9E70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E70
_080C9E7C:
	mov r2, r10
	cmp r2, #0x00
	beq _080C9E92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9E86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E86
_080C9E92:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C9EAC
	movs r1, #0x10
_080C9E9C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9EA6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9EA6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C9E9C
_080C9EAC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C9EB4:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C9EC4
	adds r1, r0, #0x0
_080C9EC4:
	ldr r0, _080C9FDC @ =0x00007FFF
	cmp r2, r0
	ble _080C9ECC
	adds r2, r0, #0x0
_080C9ECC:
	cmp r2, r1
	bge _080C9ED2
	adds r1, r2, #0x0
_080C9ED2:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080C9EE6
	mov r4, r8
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C9EE8
_080C9EE6:
	movs r1, #0x00
_080C9EE8:
	cmp r1, #0x00
	beq _080C9F16
	movs r4, #0x01
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C9FE0 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	ands r4, r0
	cmp r4, #0x00
	beq _080C9F16
	ldrh r0, [r5, #0x00]
	ldr r1, _080C9FE4 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080C9F16:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C9F20
	b _080CA192
_080C9F20:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C9FDC @ =0x00007FFF
	cmp r1, r0
	ble _080C9F2C
	adds r1, r0, #0x0
_080C9F2C:
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	bgt _080C9F40
	movs r2, #0x00
	ldsh r0, [r7, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C9F42
_080C9F40:
	movs r2, #0x00
_080C9F42:
	cmp r2, #0x00
	bne _080C9F48
	b _080CA054
_080C9F48:
	ldr r3, _080C9FE8 @ =0x03000FD8
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
	ldrh r1, [r5, #0x00]
	ldr r0, _080C9FE4 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C9FEC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C9F94
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9F88:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9F88
_080C9F94:
	mov r2, r9
	cmp r2, #0x00
	beq _080C9FAA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9F9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9F9E
_080C9FAA:
	mov r2, r10
	cmp r2, #0x00
	beq _080C9FC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9FB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9FB4
_080C9FC0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA048
	movs r1, #0x10
_080C9FCA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9FD4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9FD4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C9FCA
	b _080CA048
_080C9FDC: .4byte 0x00007FFF
_080C9FE0: .4byte 0x0300034C
_080C9FE4: .4byte 0x00000FFF
_080C9FE8: .4byte 0x03000FD8
_080C9FEC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA002
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9FF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9FF6
_080CA002:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA018
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA00C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA00C
_080CA018:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA02E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA022:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA022
_080CA02E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA048
	movs r1, #0x10
_080CA038:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA042
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA042:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA038
_080CA048:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CA192
_080CA054:
	movs r1, #0x00
	ldsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	ble _080CA062
	b _080CA192
_080CA062:
	ldr r0, _080CA120 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CA078
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080CA078
	b _080CA192
_080CA078:
	ldr r2, _080CA124 @ =0x03000FD8
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
	bne _080CA192
	ldrh r1, [r5, #0x00]
	ldr r0, _080CA128 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CA12C
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA0D6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA0CA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA0CA
_080CA0D6:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA0EC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA0E0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA0E0
_080CA0EC:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA102
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA0F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA0F6
_080CA102:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA188
	movs r1, #0x10
_080CA10C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA116
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA116:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA10C
	b _080CA188
	.byte 0x00, 0x00
_080CA120: .4byte 0x0300034C
_080CA124: .4byte 0x03000FD8
_080CA128: .4byte 0x00000FFF
_080CA12C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA142
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA136:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA136
_080CA142:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA158
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA14C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA14C
_080CA158:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA16E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA162:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA162
_080CA16E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA188
	movs r1, #0x10
_080CA178:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA182
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA182:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA178
_080CA188:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
_080CA192:
	ldrh r0, [r5, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	bne _080CA19C
	b _080CA3BE
_080CA19C:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CA1AC
	adds r1, r0, #0x0
_080CA1AC:
	ldr r0, _080CA240 @ =0x00007FFF
	cmp r2, r0
	ble _080CA1B4
	adds r2, r0, #0x0
_080CA1B4:
	cmp r2, r1
	bge _080CA1BA
	adds r1, r2, #0x0
_080CA1BA:
	movs r4, #0x00
	ldsh r0, [r7, r4]
	cmp r0, r1
	blt _080CA1D0
	mov r0, r9
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CA1D2
_080CA1D0:
	movs r1, #0x00
_080CA1D2:
	cmp r1, #0x00
	bne _080CA1D8
	b _080CA3BE
_080CA1D8:
	cmp r3, #0x02
	beq _080CA1DE
	b _080CA3BE
_080CA1DE:
	adds r3, r6, #0x0
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	adds r0, #0x01
	str r0, [r3, #0x00]
	ldrh r1, [r5, #0x00]
	ldr r0, _080CA244 @ =0x00000FFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, _080CA248 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080CA24C @ =0x000002BF
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x00
	bne _080CA25C
	ldr r4, _080CA250 @ =0x03001038
	mov r8, r4
	ldr r1, _080CA254 @ =0x0819832C
	ldr r0, _080CA258 @ =0x08198220
	subs r5, r1, r0
	ldr r2, [r4, #0x00]
	adds r2, r2, r5
	ldr r1, [r3, #0x00]
	adds r1, #0x14
	movs r0, #0x3C
	bl _call_via_r2
	movs r1, #0x03
	subs r4, r1, r0
	cmp r4, #0x03
	ble _080CA224
	movs r4, #0x03
_080CA224:
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	movs r0, #0x03
	movs r1, #0x03
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	movs r0, #0x08
	b _080CA2E6
	.byte 0x00, 0x00
_080CA240: .4byte 0x00007FFF
_080CA244: .4byte 0x00000FFF
_080CA248: .4byte 0x03000FD8
_080CA24C: .4byte 0x000002BF
_080CA250: .4byte 0x03001038
_080CA254: .4byte 0x0819832C
_080CA258: .4byte 0x08198220
_080CA25C:
	cmp r1, #0x40
	bne _080CA2A8
	ldr r2, _080CA29C @ =0x03001038
	mov r8, r2
	ldr r1, _080CA2A0 @ =0x0819832C
	ldr r0, _080CA2A4 @ =0x08198220
	subs r5, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r5
	ldr r1, [r3, #0x00]
	adds r1, #0x14
	movs r0, #0xC8
	bl _call_via_r2
	movs r1, #0x0A
	subs r4, r1, r0
	cmp r4, #0x06
	ble _080CA282
	movs r4, #0x06
_080CA282:
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	movs r0, #0x06
	movs r1, #0x03
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	movs r0, #0x0E
	b _080CA2E6
_080CA29C: .4byte 0x03001038
_080CA2A0: .4byte 0x0819832C
_080CA2A4: .4byte 0x08198220
_080CA2A8:
	ldr r1, _080CA43C @ =0x03001038
	mov r8, r1
	ldr r1, _080CA440 @ =0x0819832C
	ldr r0, _080CA444 @ =0x08198220
	subs r5, r1, r0
	mov r4, r8
	ldr r2, [r4, #0x00]
	adds r2, r2, r5
	movs r0, #0x82
	lsls r0, r0, #0x01
	ldr r1, [r3, #0x00]
	adds r1, #0x14
	bl _call_via_r2
	movs r1, #0x0D
	subs r4, r1, r0
	cmp r4, #0x09
	ble _080CA2CE
	movs r4, #0x09
_080CA2CE:
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	movs r0, #0x09
	movs r1, #0x03
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	movs r0, #0x14
_080CA2E6:
	movs r1, #0x03
	bl _call_via_r2
	adds r5, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r1, r4, #0x1
	ldr r2, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r2, r1
	bge _080CA3BE
	adds r0, r2, #0x1
	str r0, [r4, #0x00]
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	adds r1, r7, #0x1
	ldr r0, [r4, #0x00]
	cmp r0, r1
	bne _080CA366
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080CA31E
	adds r1, #0xFF
_080CA31E:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080CA328
	adds r2, #0xFF
_080CA328:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080CA332
	adds r3, #0xFF
_080CA332:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080CA448 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA34E
	cmp r1, #0x04
	bne _080CA366
_080CA34E:
	ldr r2, _080CA44C @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CA366:
	adds r1, r5, #0x1
	ldr r0, [r4, #0x00]
	cmp r0, r1
	bne _080CA3BE
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080CA376
	adds r1, #0xFF
_080CA376:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080CA380
	adds r2, #0xFF
_080CA380:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080CA38A
	adds r3, #0xFF
_080CA38A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080CA448 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA3A6
	cmp r1, #0x04
	bne _080CA3BE
_080CA3A6:
	ldr r2, _080CA44C @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CA3BE:
	ldr r2, [sp, #0x008]
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CA3CC
	b _080CA4F6
_080CA3CC:
	ldr r2, _080CA450 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CA454
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA3F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA3E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA3E6
_080CA3F2:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA408
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA3FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA3FC
_080CA408:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA41E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA412:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA412
_080CA41E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA4B0
	movs r1, #0x10
_080CA428:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA432
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA432:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA428
	b _080CA4B0
	.byte 0x00, 0x00
_080CA43C: .4byte 0x03001038
_080CA440: .4byte 0x0819832C
_080CA444: .4byte 0x08198220
_080CA448: .4byte 0x00002FF9
_080CA44C: .4byte 0x00002035
_080CA450: .4byte 0x03000FD8
_080CA454:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA46A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA45E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA45E
_080CA46A:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA480
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA474:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA474
_080CA480:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA496
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA48A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA48A
_080CA496:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA4B0
	movs r1, #0x10
_080CA4A0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA4AA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA4AA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA4A0
_080CA4B0:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r3, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r3, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	subs r1, r1, r0
	lsls r1, r1, #0x04
	ldr r0, [r6, #0x18]
	subs r0, r0, r1
	mov r1, r9
	str r0, [r1, #0x18]
	adds r0, r3, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	ldr r2, _080CA508 @ =0x00002064
	adds r3, #0x23
	ldrb r3, [r3, #0x00]
	mov r0, r9
	bl sub_8082E1C
	mov r3, r9
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080CA50C @ =0x080CA511
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080CA4F6:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CA508: .4byte 0x00002064
_080CA50C: .4byte sub_80CA510
	thumb_func_start sub_80CA510
sub_80CA510:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CA55C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r3, r0, #0x0
	adds r3, #0x08
	mov r0, r8
	ldr r4, [r0, #0x2C]
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r7, #0x06
	ldsh r0, [r1, r7]
	cmp r0, #0xFF
	bgt _080CA560
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r0, [r3, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r0, r2
	str r0, [r3, #0x18]
	ldr r1, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r1, r4]
	cmp r0, r2
	ble _080CA5C6
	strh r2, [r1, #0x06]
	movs r0, #0x00
	str r0, [r3, #0x18]
	b _080CA5C6
_080CA55C: .4byte 0x03000FD8
_080CA560:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA572
	cmp r1, #0x04
	bne _080CA5B6
_080CA572:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CA57A
	adds r1, #0xFF
_080CA57A:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CA590
	adds r2, #0xFF
_080CA590:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x33
	bl sub_8088274
_080CA5B6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r0, _080CA5D4 @ =0x080CA5D9
	mov r7, r8
	str r0, [r7, #0x4C]
_080CA5C6:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CA5D4: .4byte sub_80CA5D8
	thumb_func_start sub_80CA5D8
sub_80CA5D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r5, _080CA6A0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087EFC
	ldr r0, [r6, #0x10]
	mov r1, r9
	str r0, [r1, #0x10]
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r3, #0x20
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080CA642
	ldr r0, [r6, #0x38]
	ldr r1, [r6, #0x10]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xB6
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x3C]
	ldr r1, [r6, #0x14]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xB8
	strh r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080CA642
	b _080CAA82
_080CA642:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080CA64A
	adds r1, #0xFF
_080CA64A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080CA654
	adds r2, #0xFF
_080CA654:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080CA65E
	adds r3, #0xFF
_080CA65E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080CA6A4 @ =0x00002FF9
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r2, _080CA6A8 @ =0x000002BF
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x00
	bne _080CA6B8
	ldr r5, _080CA6AC @ =0x03001038
	ldr r4, _080CA6B0 @ =0x0819832C
	ldr r0, _080CA6B4 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x03
	movs r1, #0x03
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x08
	b _080CA704
_080CA6A0: .4byte 0x03000FD8
_080CA6A4: .4byte 0x00002FF9
_080CA6A8: .4byte 0x000002BF
_080CA6AC: .4byte 0x03001038
_080CA6B0: .4byte 0x0819832C
_080CA6B4: .4byte 0x08198220
_080CA6B8:
	cmp r1, #0x40
	bne _080CA6E8
	ldr r5, _080CA6DC @ =0x03001038
	ldr r4, _080CA6E0 @ =0x0819832C
	ldr r0, _080CA6E4 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x0A
	movs r1, #0x03
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x16
	b _080CA704
	.byte 0x00, 0x00
_080CA6DC: .4byte 0x03001038
_080CA6E0: .4byte 0x0819832C
_080CA6E4: .4byte 0x08198220
_080CA6E8:
	ldr r5, _080CA870 @ =0x03001038
	ldr r4, _080CA874 @ =0x0819832C
	ldr r0, _080CA878 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x0D
	movs r1, #0x03
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x1C
_080CA704:
	movs r1, #0x03
	bl _call_via_r2
	adds r2, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, r2
	bne _080CA750
	subs r0, #0x2E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA728
	cmp r1, #0x04
	bne _080CA740
_080CA728:
	ldr r2, _080CA87C @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CA740:
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	mov r0, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CA750:
	mov r1, r10
	ldr r0, [r1, #0x00]
	cmp r0, r8
	bne _080CA792
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA76A
	cmp r1, #0x04
	bne _080CA782
_080CA76A:
	ldr r2, _080CA87C @ =0x00002035
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
_080CA782:
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	mov r0, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CA792:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	movs r3, #0x00
	adds r4, r6, #0x0
	adds r4, #0xCC
	movs r2, #0xCA
	adds r2, r2, r6
	mov r8, r2
	ldr r5, _080CA880 @ =0x03000FD8
_080CA7AA:
	ldr r0, [r5, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	cmp r2, r7
	beq _080CA7DA
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CA7DA
	ldr r0, [r2, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CA7EE
_080CA7DA:
	adds r3, #0x01
	cmp r3, #0x05
	ble _080CA7AA
	ldr r0, [r7, #0x28]
	ldr r1, _080CA884 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_080CA7EE:
	mov r2, r10
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bgt _080CA804
	ldr r0, [r7, #0x28]
	ldr r1, _080CA884 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_080CA804:
	movs r3, #0x30
	negs r3, r3
	movs r0, #0x02
	mov r1, r9
	movs r2, #0x00
	bl sub_807EAE4
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r2, r8
	strh r0, [r2, #0x00]
	ldr r0, _080CA888 @ =0x040301AB
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CA858
	ldr r2, _080CA884 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080CA858
	b _080CA990
_080CA858:
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _080CA8C8
	cmp r0, #0x01
	bgt _080CA88C
	cmp r0, #0x00
	beq _080CA892
	b _080CA938
	.byte 0x00, 0x00
_080CA870: .4byte 0x03001038
_080CA874: .4byte 0x0819832C
_080CA878: .4byte 0x08198220
_080CA87C: .4byte 0x00002035
_080CA880: .4byte 0x03000FD8
_080CA884: .4byte 0x00000111
_080CA888: .4byte 0x040301AB
_080CA88C:
	cmp r0, #0x02
	beq _080CA8FC
	b _080CA938
_080CA892:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CA89A
	adds r1, #0xFF
_080CA89A:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CA8B0
	adds r2, #0xFF
_080CA8B0:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080CA8C4 @ =0x00002E65
	b _080CA92A
	.byte 0x00, 0x00
_080CA8C4: .4byte 0x00002E65
_080CA8C8:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CA8D0
	adds r1, #0xFF
_080CA8D0:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CA8E6
	adds r2, #0xFF
_080CA8E6:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080CA8F8 @ =0x00002E7A
	b _080CA92A
_080CA8F8: .4byte 0x00002E7A
_080CA8FC:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CA904
	adds r1, #0xFF
_080CA904:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CA91A
	adds r2, #0xFF
_080CA91A:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080CA934 @ =0x00002E93
_080CA92A:
	str r7, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
	b _080CA96E
_080CA934: .4byte 0x00002E93
_080CA938:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CA940
	adds r1, #0xFF
_080CA940:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CA956
	adds r2, #0xFF
_080CA956:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080CA96E:
	ldr r2, [r7, #0x28]
	ldr r1, _080CAA48 @ =0x00000111
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CA990
	adds r0, r2, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CA990
	movs r0, #0x00
	mov r1, r10
	str r0, [r1, #0x00]
_080CA990:
	mov r2, r10
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bgt _080CAA5C
	movs r7, #0x00
	str r7, [r2, #0x00]
	ldr r1, _080CAA4C @ =0x03001038
	adds r5, r6, #0x0
	adds r5, #0xAE
	movs r0, #0x00
	ldsh r2, [r5, r0]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080CA9AE
	adds r0, #0x3F
_080CA9AE:
	asrs r0, r0, #0x06
	adds r3, r0, #0x0
	muls r3, r2
	adds r4, r6, #0x0
	adds r4, #0xB0
	movs r0, #0x00
	ldsh r2, [r4, r0]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080CA9C4
	adds r0, #0x3F
_080CA9C4:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r3, r0
	ldr r1, [r1, #0x00]
	bl _call_via_r1
	negs r0, r0
	lsls r0, r0, #0x03
	strh r0, [r5, #0x00]
	strh r7, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA9EA
	cmp r1, #0x04
	bne _080CAA02
_080CA9EA:
	ldr r2, _080CAA50 @ =0x00002035
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
_080CAA02:
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CAA14
	cmp r1, #0x04
	bne _080CAA2E
_080CAA14:
	ldr r2, _080CAA54 @ =0x00002064
	mov r0, r9
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r9
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CAA2E:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CAA40
	cmp r1, #0x04
	bne _080CAA82
_080CAA40:
	ldr r0, _080CAA58 @ =0x080CAB8D
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
	b _080CAA82
_080CAA48: .4byte 0x00000111
_080CAA4C: .4byte 0x03001038
_080CAA50: .4byte 0x00002035
_080CAA54: .4byte 0x00002064
_080CAA58: .4byte sub_80CAB8C
_080CAA5C:
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x28
	str r0, [r1, #0x00]
	mov r0, r9
	bl sub_80CBAE4
	adds r1, r6, #0x0
	adds r1, #0xA0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080CAA7C
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CAA7C:
	ldr r0, _080CAA94 @ =0x080CAA99
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080CAA82:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CAA94: .4byte sub_80CAA98
	thumb_func_start sub_80CAA98
sub_80CAA98:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CAB50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r7, r4, #0x0
	adds r7, #0xA8
	ldr r1, [r7, #0x00]
	cmp r1, #0x00
	beq _080CAACC
	movs r3, #0x30
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_807E680
_080CAACC:
	adds r1, r4, #0x0
	adds r1, #0xB6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0xE6
	muls r0, r3
	cmp r0, #0x00
	bge _080CAADE
	adds r0, #0xFF
_080CAADE:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB8
	movs r4, #0x00
	ldsh r0, [r2, r4]
	muls r0, r3
	cmp r0, #0x00
	bge _080CAAF2
	adds r0, #0xFF
_080CAAF2:
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r6, #0x10]
	movs r4, #0x00
	ldsh r1, [r2, r4]
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	beq _080CAB3E
	adds r0, r6, #0x0
	bl sub_80CB890
	ldr r0, _080CAB54 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0xF3
	ands r0, r1
	cmp r0, #0x00
	beq _080CAB3E
	movs r0, #0x00
	str r0, [r7, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r1, [r6, #0x2C]
	cmp r0, r1
	beq _080CAB34
	str r1, [r5, #0x2C]
_080CAB34:
	adds r0, r6, #0x0
	bl sub_807EA24
	bl sub_807F448
_080CAB3E:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080CAB58
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _080CAB7A
	.byte 0x00, 0x00
_080CAB50: .4byte 0x03000FD8
_080CAB54: .4byte 0x0300034C
_080CAB58:
	adds r0, r6, #0x0
	bl sub_807EA24
	bl sub_807F448
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CAB74
	cmp r1, #0x04
	bne _080CAB7A
_080CAB74:
	ldr r0, _080CAB88 @ =0x080CA511
	mov r1, r8
	str r0, [r1, #0x4C]
_080CAB7A:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CAB88: .4byte sub_80CA510
	thumb_func_start sub_80CAB8C
sub_80CAB8C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CACA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r12, r1
	mov r5, r12
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r6, #0x2C]
	ldr r0, [r5, #0x38]
	movs r2, #0xF0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	ldr r1, [r1, #0x38]
	subs r1, r1, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080CABBE
	adds r0, #0xFF
_080CABBE:
	asrs r3, r0, #0x08
	mov r2, r12
	adds r2, #0xB6
	movs r0, #0x00
	ldsh r1, [r2, r0]
	movs r0, #0xE6
	muls r0, r1
	cmp r0, #0x00
	bge _080CABD2
	adds r0, #0xFF
_080CABD2:
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r3, r0
	bge _080CABE8
	adds r0, r0, r3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
_080CABE8:
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r4, #0x10]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, _080CACAC @ =0xFFFFFF00
	cmp r1, r0
	blt _080CACA2
	mov r0, r12
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CAC10
	cmp r1, #0x04
	bne _080CAC28
_080CAC10:
	ldr r2, _080CACB0 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CAC28:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CAC3C
	cmp r2, #0x04
	bne _080CAC54
_080CAC3C:
	ldr r2, _080CACB4 @ =0x00002053
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CAC54:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CAC62
	cmp r2, #0x04
	bne _080CAC92
_080CAC62:
	ldr r2, _080CACB8 @ =0x03001038
	ldr r0, _080CACBC @ =0x0819832C
	ldr r1, _080CACC0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0E
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
_080CAC92:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080CACC4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080CACC8 @ =0x080CACCD
	str r0, [r6, #0x4C]
_080CACA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CACA8: .4byte 0x03000FD8
_080CACAC: .4byte 0xFFFFFF00
_080CACB0: .4byte 0x00002035
_080CACB4: .4byte 0x00002053
_080CACB8: .4byte 0x03001038
_080CACBC: .4byte 0x0819832C
_080CACC0: .4byte 0x08198220
_080CACC4: .4byte 0x00000FFF
_080CACC8: .4byte sub_80CACCC
	thumb_func_start sub_80CACCC
sub_80CACCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r4, _080CADC4 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r6, #0x0
	bl sub_80884AC
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	bne _080CAD04
	b _080CB2CC
_080CAD04:
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080CAD22
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CAD22:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080CAD32
	b _080CB25A
_080CAD32:
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080CAD4A
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080CAD4C
_080CAD4A:
	movs r1, #0x00
_080CAD4C:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r2, #0xAE
	adds r2, r2, r6
	mov r9, r2
	cmp r1, #0x00
	beq _080CAE2C
	ldr r2, _080CADC4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CADC8
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CAD7E
	movs r1, #0x33
_080CAD72:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAD72
_080CAD7E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CAD92
	movs r1, #0x33
_080CAD86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAD86
_080CAD92:
	mov r2, r8
	cmp r2, #0x00
	beq _080CADA6
	movs r1, #0x33
_080CAD9A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAD9A
_080CADA6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CAE24
	movs r1, #0x03
_080CADB0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CADBA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CADBA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CADB0
	b _080CAE24
	.byte 0x00, 0x00
_080CADC4: .4byte 0x03000FD8
_080CADC8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CADDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CADD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CADD2
_080CADDE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CADF4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CADE8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CADE8
_080CADF4:
	mov r2, r8
	cmp r2, #0x00
	beq _080CAE0A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CADFE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CADFE
_080CAE0A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CAE24
	movs r1, #0x10
_080CAE14:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CAE1E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CAE1E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CAE14
_080CAE24:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CAE2C:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CAE3C
	adds r1, r0, #0x0
_080CAE3C:
	ldr r0, _080CAF38 @ =0x00007FFF
	cmp r2, r0
	ble _080CAE44
	adds r2, r0, #0x0
_080CAE44:
	cmp r2, r1
	bge _080CAE4A
	adds r1, r2, #0x0
_080CAE4A:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, r1
	blt _080CAE60
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080CAE62
_080CAE60:
	movs r1, #0x00
_080CAE62:
	cmp r1, #0x00
	bne _080CAE68
	b _080CAFBE
_080CAE68:
	ldr r1, _080CAF3C @ =0xFF000002
	movs r2, #0x18
	negs r2, r2
	movs r3, #0x30
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807E680
	ldr r0, _080CAF40 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080CAE8A
	b _080CAFBE
_080CAE8A:
	movs r2, #0x2B
	negs r2, r2
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CAF44 @ =0x03000FD8
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
	bne _080CAFAA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CAF48
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080CAEEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAEE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAEE2
_080CAEEE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CAF04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAEF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAEF8
_080CAF04:
	mov r2, r8
	cmp r2, #0x00
	beq _080CAF1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAF0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAF0E
_080CAF1A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CAFA6
	movs r1, #0x10
_080CAF24:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CAF2E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CAF2E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CAF24
	b _080CAFA6
	.byte 0x00, 0x00
_080CAF38: .4byte 0x00007FFF
_080CAF3C: .4byte 0xFF000002
_080CAF40: .4byte 0x0300034C
_080CAF44: .4byte 0x03000FD8
_080CAF48:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080CAF60
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAF54:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAF54
_080CAF60:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CAF76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAF6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAF6A
_080CAF76:
	mov r2, r8
	cmp r2, #0x00
	beq _080CAF8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAF80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAF80
_080CAF8C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CAFA6
	movs r1, #0x10
_080CAF96:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CAFA0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CAFA0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CAF96
_080CAFA6:
	bl sub_807F448
_080CAFAA:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080CB08C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080CAFBE:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CAFCA
	b _080CB25A
_080CAFCA:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080CB090 @ =0x00007FFF
	cmp r1, r0
	ble _080CAFD6
	adds r1, r0, #0x0
_080CAFD6:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080CAFEC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080CAFEE
_080CAFEC:
	movs r2, #0x00
_080CAFEE:
	cmp r2, #0x00
	bne _080CAFF4
	b _080CB100
_080CAFF4:
	ldr r3, _080CB094 @ =0x03000FD8
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
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080CB08C @ =0x00000FFF
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
	beq _080CB098
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CB042
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB036:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB036
_080CB042:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CB058
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB04C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB04C
_080CB058:
	mov r2, r8
	cmp r2, #0x00
	beq _080CB06E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB062:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB062
_080CB06E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CB0F4
	movs r1, #0x10
_080CB078:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CB082
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CB082:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CB078
	b _080CB0F4
	.byte 0x00, 0x00
_080CB08C: .4byte 0x00000FFF
_080CB090: .4byte 0x00007FFF
_080CB094: .4byte 0x03000FD8
_080CB098:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CB0AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB0A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB0A2
_080CB0AE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CB0C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB0B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB0B8
_080CB0C4:
	mov r2, r8
	cmp r2, #0x00
	beq _080CB0DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB0CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB0CE
_080CB0DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CB0F4
	movs r1, #0x10
_080CB0E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CB0EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CB0EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CB0E4
_080CB0F4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CB25A
_080CB100:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r4, #0x80
	lsls r4, r4, #0x07
	cmp r0, r4
	ble _080CB10E
	b _080CB25A
_080CB10E:
	ldr r0, _080CB1D0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	ldr r0, _080CB1D4 @ =0xFF000002
	ands r0, r1
	cmp r0, #0x00
	bne _080CB124
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	bne _080CB124
	b _080CB25A
_080CB124:
	ldr r2, _080CB1D8 @ =0x03000FD8
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
	ldr r1, _080CB1DC @ =0x00FFFFFD
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CB152
	b _080CB25A
_080CB152:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080CB1E0 @ =0x00000FFF
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
	beq _080CB1E4
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CB186
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB17A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB17A
_080CB186:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CB19C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB190:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB190
_080CB19C:
	mov r2, r8
	cmp r2, #0x00
	beq _080CB1B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB1A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB1A6
_080CB1B2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CB240
	movs r1, #0x10
_080CB1BC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CB1C6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CB1C6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CB1BC
	b _080CB240
	.byte 0x00, 0x00
_080CB1D0: .4byte 0x0300034C
_080CB1D4: .4byte 0xFF000002
_080CB1D8: .4byte 0x03000FD8
_080CB1DC: .4byte 0x00FFFFFD
_080CB1E0: .4byte 0x00000FFF
_080CB1E4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CB1FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB1EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB1EE
_080CB1FA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CB210
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB204:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB204
_080CB210:
	mov r2, r8
	cmp r2, #0x00
	beq _080CB226
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB21A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB21A
_080CB226:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CB240
	movs r1, #0x10
_080CB230:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CB23A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CB23A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CB230
_080CB240:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r2, #0x2B
	negs r2, r2
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	bl sub_807EAE4
_080CB25A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080CB2CC
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CB274
	adds r1, r0, #0x0
_080CB274:
	ldr r0, _080CB2C0 @ =0x00007FFF
	cmp r2, r0
	ble _080CB27C
	adds r2, r0, #0x0
_080CB27C:
	cmp r2, r1
	bge _080CB282
	adds r1, r2, #0x0
_080CB282:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CB29C
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CB29E
_080CB29C:
	movs r1, #0x00
_080CB29E:
	cmp r1, #0x00
	beq _080CB2CC
	cmp r3, #0x01
	ble _080CB2CC
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080CB2C4 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080CB2C8 @ =0x080CBDD9
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080CB42A
	.byte 0x00, 0x00
_080CB2C0: .4byte 0x00007FFF
_080CB2C4: .4byte 0x00000FFF
_080CB2C8: .4byte sub_80CBDD8
_080CB2CC:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CB2DC
	b _080CB42A
_080CB2DC:
	mov r4, r8
	ldr r0, [r4, #0x28]
	ldr r1, _080CB3F4 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _080CB300
	mov r0, r8
	bl sub_8086700
_080CB300:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CB314
	cmp r2, #0x04
	bne _080CB344
_080CB314:
	ldr r2, _080CB3F8 @ =0x03001038
	ldr r0, _080CB3FC @ =0x0819832C
	ldr r1, _080CB400 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CB344:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CB352
	cmp r2, #0x04
	bne _080CB356
_080CB352:
	ldr r0, _080CB404 @ =0x080CB6AD
	str r0, [r7, #0x4C]
_080CB356:
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x2B
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CB376
	cmp r2, #0x04
	bne _080CB3C4
_080CB376:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080CB37E
	adds r0, #0xFF
_080CB37E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x32
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080CB398
	adds r2, #0xFF
_080CB398:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	adds r2, #0x14
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x28
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080CB3C4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CB3D2
	cmp r2, #0x04
	bne _080CB424
_080CB3D2:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CB408
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080CB414
	.byte 0x00, 0x00
_080CB3F4: .4byte 0x00000111
_080CB3F8: .4byte 0x03001038
_080CB3FC: .4byte 0x0819832C
_080CB400: .4byte 0x08198220
_080CB404: .4byte sub_80CB6AC
_080CB408:
	ldr r2, _080CB43C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080CB414:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CB424:
	ldr r0, _080CB440 @ =0x080CB445
	mov r4, r10
	str r0, [r4, #0x4C]
_080CB42A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CB43C: .4byte 0x0000204D
_080CB440: .4byte sub_80CB444
	thumb_func_start sub_80CB444
sub_80CB444:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CB4CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080CB4D0 @ =0x03001038
	ldr r2, _080CB4D4 @ =0x0819832C
	ldr r3, _080CB4D8 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080CB492
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080CB494
_080CB492:
	movs r1, #0x00
_080CB494:
	cmp r1, #0x00
	beq _080CB4F8
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB4AA
	cmp r1, #0x04
	bne _080CB4F8
_080CB4AA:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CB4DC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080CB4E8
	.byte 0x00, 0x00
_080CB4CC: .4byte 0x03000FD8
_080CB4D0: .4byte 0x03001038
_080CB4D4: .4byte 0x0819832C
_080CB4D8: .4byte 0x08198220
_080CB4DC:
	ldr r2, _080CB540 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080CB4E8:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CB4F8:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CB58A
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB524
	cmp r1, #0x04
	bne _080CB560
_080CB524:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080CB544
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080CB550
_080CB540: .4byte 0x0000204D
_080CB544:
	ldr r2, _080CB594 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080CB550:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CB560:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080CB568
	adds r1, #0xFF
_080CB568:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080CB572
	adds r2, #0xFF
_080CB572:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080CB57C
	adds r3, #0xFF
_080CB57C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _080CB598 @ =0x080CB59D
	str r0, [r7, #0x4C]
_080CB58A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CB594: .4byte 0x0000204D
_080CB598: .4byte sub_80CB59C
	thumb_func_start sub_80CB59C
sub_80CB59C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080CB644 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CB6A0
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x53
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB5D4
	cmp r1, #0x04
	bne _080CB612
_080CB5D4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB5E2
	adds r0, #0xFF
_080CB5E2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB5F0
	adds r0, #0xFF
_080CB5F0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB5FE
	adds r0, #0xFF
_080CB5FE:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080CB612:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CB626
	cmp r2, #0x04
	bne _080CB688
_080CB626:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CB64C
	ldr r2, _080CB648 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CB658
_080CB644: .4byte 0x03000FD8
_080CB648: .4byte 0x00002002
_080CB64C:
	ldr r2, _080CB6A8 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CB658:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080CB66E
	movs r2, #0x01
_080CB66E:
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
_080CB688:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CB696
	cmp r2, #0x04
	bne _080CB6A0
_080CB696:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080CB6A0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CB6A8: .4byte 0x0000204F
	thumb_func_start sub_80CB6AC
sub_80CB6AC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CB774 @ =0x03000FD8
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
	beq _080CB76A
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
	beq _080CB6EE
	cmp r1, #0x04
	bne _080CB73C
_080CB6EE:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080CB6F6
	adds r0, #0xFF
_080CB6F6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CB710
	adds r2, #0xFF
_080CB710:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	subs r2, #0x0A
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x24
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080CB73C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB74E
	cmp r1, #0x04
	bne _080CB766
_080CB74E:
	ldr r2, _080CB778 @ =0x00002035
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CB766:
	ldr r0, _080CB77C @ =0x080CCD81
	str r0, [r7, #0x4C]
_080CB76A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CB774: .4byte 0x03000FD8
_080CB778: .4byte 0x00002035
_080CB77C: .4byte sub_80CCD80
	thumb_func_start sub_80CB780
sub_80CB780:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080CB828 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CB884
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x53
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB7B8
	cmp r1, #0x04
	bne _080CB7F6
_080CB7B8:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB7C6
	adds r0, #0xFF
_080CB7C6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB7D4
	adds r0, #0xFF
_080CB7D4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB7E2
	adds r0, #0xFF
_080CB7E2:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080CB7F6:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CB80A
	cmp r2, #0x04
	bne _080CB86C
_080CB80A:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CB830
	ldr r2, _080CB82C @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CB83C
_080CB828: .4byte 0x03000FD8
_080CB82C: .4byte 0x00002002
_080CB830:
	ldr r2, _080CB88C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CB83C:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080CB852
	movs r2, #0x01
_080CB852:
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
_080CB86C:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CB87A
	cmp r2, #0x04
	bne _080CB884
_080CB87A:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080CB884:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CB88C: .4byte 0x0000204F
	thumb_func_start sub_80CB890
sub_80CB890:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r2, [r0, #0x2C]
	cmp r2, #0x00
	beq _080CB8B2
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _080CB94C
_080CB8B2:
	movs r5, #0x00
	movs r6, #0x00
_080CB8B6:
	ldr r0, _080CB948 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CB8FA
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CB8FA
	adds r5, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080CB8FA
	mov r2, r10
	str r4, [r2, #0x2C]
_080CB8FA:
	adds r1, r6, #0x1
	ldr r0, _080CB948 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CB940
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CB940
	adds r5, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080CB940
	mov r2, r10
	str r4, [r2, #0x2C]
_080CB940:
	adds r6, #0x02
	cmp r6, #0x05
	ble _080CB8B6
	b _080CBAC8
_080CB948: .4byte 0x03000FD8
_080CB94C:
	ldr r0, _080CB9B0 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _080CB95A
	b _080CBAC8
_080CB95A:
	ldr r0, [r2, #0x38]
	cmp r0, #0x00
	bge _080CB962
	adds r0, #0xFF
_080CB962:
	asrs r0, r0, #0x08
	ldr r1, [r2, #0x28]
	adds r1, #0xE4
	ldr r3, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r3, r1]
	adds r0, r0, r1
	mov r8, r0
	ldr r1, [r2, #0x3C]
	cmp r1, #0x00
	bge _080CB97A
	adds r1, #0xFF
_080CB97A:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r3, r0]
	adds r7, r1, r0
	ldr r0, _080CB9B4 @ =0x7FFFFFFF
	str r0, [sp, #0x000]
	movs r1, #0x00
	mov r9, r1
_080CB98A:
	ldr r0, _080CB9B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	mov r2, r9
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, _080CB9B0 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0xF0
	ands r1, r0
	cmp r1, #0x20
	beq _080CBA22
	cmp r1, #0x20
	bgt _080CB9BC
	cmp r1, #0x10
	beq _080CBA3E
	b _080CBA6A
	.byte 0x00, 0x00
_080CB9B0: .4byte 0x0300034C
_080CB9B4: .4byte 0x7FFFFFFF
_080CB9B8: .4byte 0x03000FD8
_080CB9BC:
	cmp r1, #0x40
	beq _080CB9C6
	cmp r1, #0x80
	beq _080CB9F4
	b _080CBA6A
_080CB9C6:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CB9CE
	adds r0, #0xFF
_080CB9CE:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	subs r5, r7, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CB9E6
	adds r0, #0xFF
_080CB9E6:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r6, r0, r1
	b _080CBA6A
_080CB9F4:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CB9FC
	adds r0, #0xFF
_080CB9FC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	subs r5, r0, r7
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBA14
	adds r0, #0xFF
_080CBA14:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r2, r8
	subs r6, r0, r2
	b _080CBA6A
_080CBA22:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBA2A
	adds r0, #0xFF
_080CBA2A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r5, r1, r0
	b _080CBA58
_080CBA3E:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBA46
	adds r0, #0xFF
_080CBA46:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r5, r0, r1
_080CBA58:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBA60
	adds r0, #0xFF
_080CBA60:
	asrs r0, r0, #0x08
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	subs r6, r0, r7
_080CBA6A:
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBABC
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBABC
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r6, #0x0
	muls r0, r6
	adds r3, r1, r0
	cmp r5, #0x00
	ble _080CBABC
	ldr r2, _080CBAD8 @ =0x03001038
	ldr r1, _080CBADC @ =0x0819832C
	ldr r0, _080CBAE0 @ =0x08198220
	subs r1, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r1
	adds r0, r3, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r3, r0, #0x0
	ldr r0, [sp, #0x000]
	cmp r0, r3
	ble _080CBABC
	str r3, [sp, #0x000]
	adds r0, r4, #0x0
	adds r0, #0x08
	mov r1, r10
	str r0, [r1, #0x2C]
_080CBABC:
	movs r2, #0x01
	add r9, r2
	mov r0, r9
	cmp r0, #0x05
	bgt _080CBAC8
	b _080CB98A
_080CBAC8:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CBAD8: .4byte 0x03001038
_080CBADC: .4byte 0x0819832C
_080CBAE0: .4byte 0x08198220
	thumb_func_start sub_80CBAE4
sub_80CBAE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x000]
	ldr r5, [r1, #0x2C]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080CBB02
	adds r0, #0xFF
_080CBB02:
	asrs r0, r0, #0x08
	ldr r1, [r5, #0x28]
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r9, r0
	ldr r1, [r5, #0x3C]
	cmp r1, #0x00
	bge _080CBB1A
	adds r1, #0xFF
_080CBB1A:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r1, r1, r0
	mov r8, r1
	ldr r7, _080CBDC4 @ =0x7FFFFFFF
	movs r6, #0x00
	ldr r1, _080CBDC8 @ =0x0819832C
	ldr r0, _080CBDCC @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_080CBB30:
	ldr r0, _080CBDD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBB44
	adds r0, #0xFF
_080CBB44:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r3, r1, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBB5E
	adds r0, #0xFF
_080CBB5E:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r9
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBBB0
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBBB0
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r1, r1, r0
	cmp r3, #0x00
	ble _080CBBB0
	ldr r0, _080CBDD4 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	cmp r7, r1
	ble _080CBBB0
	adds r7, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x08
_080CBBB0:
	adds r6, #0x01
	cmp r6, #0x05
	ble _080CBB30
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x2C]
	cmp r5, r1
	beq _080CBBC6
	movs r0, #0x40
	ldr r2, [sp, #0x004]
	orrs r2, r0
	str r2, [sp, #0x004]
_080CBBC6:
	ldr r7, _080CBDC4 @ =0x7FFFFFFF
	adds r5, r1, #0x0
	movs r6, #0x00
	ldr r1, _080CBDC8 @ =0x0819832C
	ldr r0, _080CBDCC @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_080CBBD4:
	ldr r0, _080CBDD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBBE8
	adds r0, #0xFF
_080CBBE8:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r3, r0, r1
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBC02
	adds r0, #0xFF
_080CBC02:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r9
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBC54
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBC54
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r1, r1, r0
	cmp r3, #0x00
	ble _080CBC54
	ldr r0, _080CBDD4 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	cmp r7, r1
	ble _080CBC54
	adds r7, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x08
_080CBC54:
	adds r6, #0x01
	cmp r6, #0x05
	ble _080CBBD4
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x2C]
	cmp r5, r1
	beq _080CBC6A
	movs r0, #0x80
	ldr r2, [sp, #0x004]
	orrs r2, r0
	str r2, [sp, #0x004]
_080CBC6A:
	ldr r7, _080CBDC4 @ =0x7FFFFFFF
	adds r5, r1, #0x0
	movs r6, #0x00
	ldr r1, _080CBDC8 @ =0x0819832C
	ldr r0, _080CBDCC @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_080CBC78:
	ldr r0, _080CBDD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBC8C
	adds r0, #0xFF
_080CBC8C:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r9
	subs r3, r1, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBCA6
	adds r0, #0xFF
_080CBCA6:
	asrs r0, r0, #0x08
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBCF8
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBCF8
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r1, r1, r0
	cmp r3, #0x00
	ble _080CBCF8
	ldr r0, _080CBDD4 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	cmp r7, r1
	ble _080CBCF8
	adds r7, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x08
_080CBCF8:
	adds r6, #0x01
	cmp r6, #0x05
	ble _080CBC78
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x2C]
	cmp r5, r1
	beq _080CBD0E
	movs r0, #0x20
	ldr r2, [sp, #0x004]
	orrs r2, r0
	str r2, [sp, #0x004]
_080CBD0E:
	ldr r7, _080CBDC4 @ =0x7FFFFFFF
	adds r5, r1, #0x0
	movs r6, #0x00
	ldr r1, _080CBDC8 @ =0x0819832C
	ldr r0, _080CBDCC @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_080CBD1C:
	ldr r0, _080CBDD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBD30
	adds r0, #0xFF
_080CBD30:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r9
	subs r3, r0, r1
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBD4A
	adds r0, #0xFF
_080CBD4A:
	asrs r0, r0, #0x08
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBD9C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBD9C
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r1, r1, r0
	cmp r3, #0x00
	ble _080CBD9C
	ldr r0, _080CBDD4 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	cmp r7, r1
	ble _080CBD9C
	adds r7, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x08
_080CBD9C:
	adds r6, #0x01
	cmp r6, #0x05
	ble _080CBD1C
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x2C]
	cmp r5, r0
	beq _080CBDB2
	movs r0, #0x10
	ldr r1, [sp, #0x004]
	orrs r1, r0
	str r1, [sp, #0x004]
_080CBDB2:
	ldr r0, [sp, #0x004]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080CBDC4: .4byte 0x7FFFFFFF
_080CBDC8: .4byte 0x0819832C
_080CBDCC: .4byte 0x08198220
_080CBDD0: .4byte 0x03000FD8
_080CBDD4: .4byte 0x03001038
	thumb_func_start sub_80CBDD8
sub_80CBDD8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r3, _080CBE60 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x08
	adds r1, r2, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBE14
	cmp r1, #0x04
	bne _080CBE2C
_080CBE14:
	ldr r2, _080CBE64 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBE2C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBE3E
	cmp r1, #0x04
	bne _080CBE56
_080CBE3E:
	ldr r2, _080CBE68 @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBE56:
	ldr r0, _080CBE6C @ =0x080CBE71
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CBE60: .4byte 0x03000FD8
_080CBE64: .4byte 0x00002035
_080CBE68: .4byte 0x00002064
_080CBE6C: .4byte sub_80CBE70
	thumb_func_start sub_80CBE70
sub_80CBE70:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080CBF44 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CBF3E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBEAC
	cmp r1, #0x04
	bne _080CBEC4
_080CBEAC:
	ldr r2, _080CBF48 @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBEC4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CBED8
	cmp r2, #0x04
	bne _080CBEF0
_080CBED8:
	ldr r2, _080CBF4C @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBEF0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CBEFE
	cmp r2, #0x04
	bne _080CBF2E
_080CBEFE:
	ldr r2, _080CBF50 @ =0x03001038
	ldr r0, _080CBF54 @ =0x0819832C
	ldr r1, _080CBF58 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
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
_080CBF2E:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080CBF5C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080CBF60 @ =0x080CBF65
	str r0, [r7, #0x4C]
_080CBF3E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CBF44: .4byte 0x03000FD8
_080CBF48: .4byte 0x00002035
_080CBF4C: .4byte 0x00002064
_080CBF50: .4byte 0x03001038
_080CBF54: .4byte 0x0819832C
_080CBF58: .4byte 0x08198220
_080CBF5C: .4byte 0x00000FFF
_080CBF60: .4byte sub_80CBF64
	thumb_func_start sub_80CBF64
sub_80CBF64:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080CC04C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080CBFAA
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CBFAA:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080CBFBA
	b _080CC4DE
_080CBFBA:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080CBFD2
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080CBFD4
_080CBFD2:
	movs r1, #0x00
_080CBFD4:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080CC0B4
	ldr r2, _080CC04C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CC050
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC008
	movs r1, #0x33
_080CBFFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CBFFC
_080CC008:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC01C
	movs r1, #0x33
_080CC010:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC010
_080CC01C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC030
	movs r1, #0x33
_080CC024:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC024
_080CC030:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC0AC
	movs r1, #0x03
_080CC03A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC044
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC044:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC03A
	b _080CC0AC
_080CC04C: .4byte 0x03000FD8
_080CC050:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC066
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC05A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC05A
_080CC066:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC07C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC070:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC070
_080CC07C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC092
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC086:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC086
_080CC092:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC0AC
	movs r1, #0x10
_080CC09C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC0A6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC0A6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC09C
_080CC0AC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CC0B4:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CC0C4
	adds r1, r0, #0x0
_080CC0C4:
	ldr r0, _080CC1C0 @ =0x00007FFF
	cmp r2, r0
	ble _080CC0CC
	adds r2, r0, #0x0
_080CC0CC:
	cmp r2, r1
	bge _080CC0D2
	adds r1, r2, #0x0
_080CC0D2:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080CC0EA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080CC0EC
_080CC0EA:
	movs r1, #0x00
_080CC0EC:
	cmp r1, #0x00
	bne _080CC0F2
	b _080CC242
_080CC0F2:
	movs r2, #0x1C
	negs r2, r2
	movs r3, #0x0C
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_807E680
	ldr r0, _080CC1C4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CC114
	b _080CC242
_080CC114:
	movs r2, #0x28
	negs r2, r2
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CC1C8 @ =0x03000FD8
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
	bne _080CC22E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CC1CC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CC178
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC16C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC16C
_080CC178:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC18E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC182:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC182
_080CC18E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC1A4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC198:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC198
_080CC1A4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC22A
	movs r1, #0x10
_080CC1AE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC1B8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC1B8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC1AE
	b _080CC22A
_080CC1C0: .4byte 0x00007FFF
_080CC1C4: .4byte 0x0300034C
_080CC1C8: .4byte 0x03000FD8
_080CC1CC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CC1E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC1D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC1D8
_080CC1E4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC1FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC1EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC1EE
_080CC1FA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC210
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC204:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC204
_080CC210:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC22A
	movs r1, #0x10
_080CC21A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC224
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC224:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC21A
_080CC22A:
	bl sub_807F448
_080CC22E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080CC314 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080CC242:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CC24E
	b _080CC4DE
_080CC24E:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080CC318 @ =0x00007FFF
	cmp r1, r0
	ble _080CC25A
	adds r1, r0, #0x0
_080CC25A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080CC272
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080CC274
_080CC272:
	movs r2, #0x00
_080CC274:
	cmp r2, #0x00
	bne _080CC27A
	b _080CC388
_080CC27A:
	ldr r3, _080CC31C @ =0x03000FD8
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
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080CC314 @ =0x00000FFF
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
	beq _080CC320
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC2CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2BE
_080CC2CA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC2E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2D4
_080CC2E0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC2F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2EA
_080CC2F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC37C
	movs r1, #0x10
_080CC300:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC30A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC30A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC300
	b _080CC37C
	.byte 0x00, 0x00
_080CC314: .4byte 0x00000FFF
_080CC318: .4byte 0x00007FFF
_080CC31C: .4byte 0x03000FD8
_080CC320:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC336
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC32A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC32A
_080CC336:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC34C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC340:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC340
_080CC34C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC362
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC356:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC356
_080CC362:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC37C
	movs r1, #0x10
_080CC36C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC376
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC376:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC36C
_080CC37C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CC4DE
_080CC388:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080CC398
	b _080CC4DE
_080CC398:
	ldr r0, _080CC45C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CC3AE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080CC3AE
	b _080CC4DE
_080CC3AE:
	ldr r2, _080CC460 @ =0x03000FD8
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
	beq _080CC3DE
	b _080CC4DE
_080CC3DE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080CC464 @ =0x00000FFF
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
	beq _080CC468
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC412
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC406:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC406
_080CC412:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC428
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC41C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC41C
_080CC428:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC43E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC432:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC432
_080CC43E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC4C4
	movs r1, #0x10
_080CC448:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC452
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC452:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC448
	b _080CC4C4
	.byte 0x00, 0x00
_080CC45C: .4byte 0x0300034C
_080CC460: .4byte 0x03000FD8
_080CC464: .4byte 0x00000FFF
_080CC468:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC47E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC472:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC472
_080CC47E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC494
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC488:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC488
_080CC494:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC4AA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC49E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC49E
_080CC4AA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC4C4
	movs r1, #0x10
_080CC4B4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC4BE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC4BE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC4B4
_080CC4C4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r2, #0x28
	negs r2, r2
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	bl sub_807EAE4
_080CC4DE:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080CC550
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CC4F8
	adds r1, r0, #0x0
_080CC4F8:
	ldr r0, _080CC544 @ =0x00007FFF
	cmp r2, r0
	ble _080CC500
	adds r2, r0, #0x0
_080CC500:
	cmp r2, r1
	bge _080CC506
	adds r1, r2, #0x0
_080CC506:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CC520
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CC522
_080CC520:
	movs r1, #0x00
_080CC522:
	cmp r1, #0x00
	beq _080CC550
	cmp r3, #0x01
	ble _080CC550
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080CC548 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080CC54C @ =0x080CC965
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080CC60A
	.byte 0x00, 0x00
_080CC544: .4byte 0x00007FFF
_080CC548: .4byte 0x00000FFF
_080CC54C: .4byte sub_80CC964
_080CC550:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _080CC60A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x32
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC57C
	cmp r1, #0x04
	bne _080CC598
_080CC57C:
	ldr r2, _080CC61C @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x08
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
_080CC598:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC5AC
	cmp r2, #0x04
	bne _080CC5C8
_080CC5AC:
	ldr r2, _080CC620 @ =0x00002064
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
_080CC5C8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC5D6
	cmp r2, #0x04
	bne _080CC604
_080CC5D6:
	ldr r2, _080CC624 @ =0x03001038
	ldr r0, _080CC628 @ =0x0819832C
	ldr r1, _080CC62C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r7, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
_080CC604:
	ldr r0, _080CC630 @ =0x080CC635
	mov r4, r10
	str r0, [r4, #0x4C]
_080CC60A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CC61C: .4byte 0x00002035
_080CC620: .4byte 0x00002064
_080CC624: .4byte 0x03001038
_080CC628: .4byte 0x0819832C
_080CC62C: .4byte 0x08198220
_080CC630: .4byte sub_80CC634
	thumb_func_start sub_80CC634
sub_80CC634:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CC744 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CC73A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080CC748 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CC74C @ =0x040322AB
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CC6BE
	ldr r2, _080CC748 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CC6F4
_080CC6BE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CC6C6
	adds r1, #0xFF
_080CC6C6:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CC6DC
	adds r2, #0xFF
_080CC6DC:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080CC750 @ =0x0000071F
	str r4, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080CC6F4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC706
	cmp r1, #0x04
	bne _080CC736
_080CC706:
	ldr r2, _080CC754 @ =0x03001038
	ldr r0, _080CC758 @ =0x0819832C
	ldr r1, _080CC75C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CC736:
	ldr r0, _080CC760 @ =0x080CC765
	str r0, [r7, #0x4C]
_080CC73A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CC744: .4byte 0x03000FD8
_080CC748: .4byte 0x00000111
_080CC74C: .4byte 0x040322AB
_080CC750: .4byte 0x0000071F
_080CC754: .4byte 0x03001038
_080CC758: .4byte 0x0819832C
_080CC75C: .4byte 0x08198220
_080CC760: .4byte sub_80CC764
	thumb_func_start sub_80CC764
sub_80CC764:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CC81C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
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
	bne _080CC78E
	b _080CC958
_080CC78E:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC7AC
	cmp r1, #0x04
	bne _080CC7EA
_080CC7AC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7BA
	adds r0, #0xFF
_080CC7BA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7C8
	adds r0, #0xFF
_080CC7C8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7D6
	adds r0, #0xFF
_080CC7D6:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080CC7EA:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC7FE
	cmp r2, #0x04
	bne _080CC860
_080CC7FE:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CC824
	ldr r2, _080CC820 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CC830
_080CC81C: .4byte 0x03000FD8
_080CC820: .4byte 0x00002002
_080CC824:
	ldr r2, _080CC8FC @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CC830:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CC846
	movs r2, #0x01
_080CC846:
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
_080CC860:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC86E
	cmp r2, #0x04
	bne _080CC878
_080CC86E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CC878:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC88C
	cmp r2, #0x04
	bne _080CC8CE
_080CC88C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC89A
	adds r0, #0xFF
_080CC89A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC8A8
	adds r0, #0xFF
_080CC8A8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC8B6
	adds r0, #0xFF
_080CC8B6:
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
_080CC8CE:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC8DC
	cmp r1, #0x04
	bne _080CC940
_080CC8DC:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CC904
	ldr r2, _080CC900 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CC910
	.byte 0x00, 0x00
_080CC8FC: .4byte 0x0000204F
_080CC900: .4byte 0x00002002
_080CC904:
	ldr r2, _080CC960 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CC910:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CC926
	movs r2, #0x01
_080CC926:
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
_080CC940:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC94E
	cmp r2, #0x04
	bne _080CC958
_080CC94E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CC958:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CC960: .4byte 0x0000204F
	thumb_func_start sub_80CC964
sub_80CC964:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CCA1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r1, #0x74]
	adds r4, r1, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC988
	cmp r1, #0x04
	bne _080CC9A4
_080CC988:
	ldr r2, _080CCA20 @ =0x00002035
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
_080CC9A4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CC9B8
	cmp r2, #0x04
	bne _080CC9D4
_080CC9B8:
	ldr r2, _080CCA24 @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x07
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
_080CC9D4:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC9E2
	cmp r2, #0x04
	bne _080CCA12
_080CC9E2:
	ldr r2, _080CCA28 @ =0x03001038
	ldr r0, _080CCA2C @ =0x0819832C
	ldr r1, _080CCA30 @ =0x08198220
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
_080CCA12:
	ldr r0, _080CCA34 @ =0x080CCA39
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CCA1C: .4byte 0x03000FD8
_080CCA20: .4byte 0x00002035
_080CCA24: .4byte 0x00002064
_080CCA28: .4byte 0x03001038
_080CCA2C: .4byte 0x0819832C
_080CCA30: .4byte 0x08198220
_080CCA34: .4byte sub_80CCA38
	thumb_func_start sub_80CCA38
sub_80CCA38:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CCB60 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CCB56
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080CCB64 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x50
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CCB68 @ =0x050323AB
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bgt _080CCAC6
	ldr r1, _080CCB64 @ =0x00000111
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CCB10
_080CCAC6:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CCACE
	adds r1, #0xFF
_080CCACE:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _080CCAE4
	adds r1, #0xFF
_080CCAE4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, r0
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1C]
	lsrs r0, r0, #0x04
	ldr r1, _080CCB6C @ =0x00002F6F
	cmp r0, #0x00
	bne _080CCB04
	subs r1, #0xDC
_080CCB04:
	str r4, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80DF024
_080CCB10:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCB22
	cmp r1, #0x04
	bne _080CCB52
_080CCB22:
	ldr r2, _080CCB70 @ =0x03001038
	ldr r0, _080CCB74 @ =0x0819832C
	ldr r1, _080CCB78 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CCB52:
	ldr r0, _080CCB7C @ =0x080CCB81
	str r0, [r7, #0x4C]
_080CCB56:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CCB60: .4byte 0x03000FD8
_080CCB64: .4byte 0x00000111
_080CCB68: .4byte 0x050323AB
_080CCB6C: .4byte 0x00002F6F
_080CCB70: .4byte 0x03001038
_080CCB74: .4byte 0x0819832C
_080CCB78: .4byte 0x08198220
_080CCB7C: .4byte sub_80CCB80
	thumb_func_start sub_80CCB80
sub_80CCB80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CCC38 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
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
	bne _080CCBAA
	b _080CCD74
_080CCBAA:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCBC8
	cmp r1, #0x04
	bne _080CCC06
_080CCBC8:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBD6
	adds r0, #0xFF
_080CCBD6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBE4
	adds r0, #0xFF
_080CCBE4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBF2
	adds r0, #0xFF
_080CCBF2:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080CCC06:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCC1A
	cmp r2, #0x04
	bne _080CCC7C
_080CCC1A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CCC40
	ldr r2, _080CCC3C @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CCC4C
_080CCC38: .4byte 0x03000FD8
_080CCC3C: .4byte 0x00002002
_080CCC40:
	ldr r2, _080CCD18 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CCC4C:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CCC62
	movs r2, #0x01
_080CCC62:
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
_080CCC7C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CCC8A
	cmp r2, #0x04
	bne _080CCC94
_080CCC8A:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CCC94:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCCA8
	cmp r2, #0x04
	bne _080CCCEA
_080CCCA8:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCB6
	adds r0, #0xFF
_080CCCB6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCC4
	adds r0, #0xFF
_080CCCC4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCD2
	adds r0, #0xFF
_080CCCD2:
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
_080CCCEA:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCCF8
	cmp r1, #0x04
	bne _080CCD5C
_080CCCF8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CCD20
	ldr r2, _080CCD1C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CCD2C
	.byte 0x00, 0x00
_080CCD18: .4byte 0x0000204F
_080CCD1C: .4byte 0x00002002
_080CCD20:
	ldr r2, _080CCD7C @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CCD2C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CCD42
	movs r2, #0x01
_080CCD42:
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
_080CCD5C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CCD6A
	cmp r2, #0x04
	bne _080CCD74
_080CCD6A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CCD74:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CCD7C: .4byte 0x0000204F
	thumb_func_start sub_80CCD80
sub_80CCD80:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CCDE0 @ =0x03000FD8
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
	beq _080CCDDA
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
	beq _080CCDBE
	cmp r1, #0x04
	bne _080CCDD6
_080CCDBE:
	ldr r2, _080CCDE4 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CCDD6:
	ldr r0, _080CCDE8 @ =0x080CB781
	str r0, [r6, #0x4C]
_080CCDDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CCDE0: .4byte 0x03000FD8
_080CCDE4: .4byte 0x00002035
_080CCDE8: .4byte sub_80CB780
	thumb_func_start sub_80CCDEC
sub_80CCDEC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CCE40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CCE38
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCE18
	cmp r1, #0x04
	bne _080CCE34
_080CCE18:
	ldr r2, _080CCE44 @ =0x00002034
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
_080CCE34:
	ldr r0, _080CCE48 @ =0x080C9855
	str r0, [r5, #0x4C]
_080CCE38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CCE40: .4byte 0x03000FD8
_080CCE44: .4byte 0x00002034
_080CCE48: .4byte sub_80C9854
	thumb_func_start sub_80CCE4C
sub_80CCE4C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CCE74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CCE6E
	ldr r0, _080CCE78 @ =0x080C8A7D
	str r0, [r5, #0x4C]
_080CCE6E:
	pop {r4, r5}
	pop {r0}
	bx r0
_080CCE74: .4byte 0x03000FD8
_080CCE78: .4byte sub_80C8A7C
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x81, 0x46, 0x1F, 0x4A, 0x83, 0x6A, 0x18, 0x1C
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x08, 0x01, 0x40, 0x1A, 0x80, 0x00, 0x3C, 0x30, 0x11, 0x68
	.byte 0x09, 0x1A, 0x8A, 0x20, 0x40, 0x00, 0x1A, 0x18, 0x48, 0x8D, 0x10, 0x60, 0x17, 0x48, 0x00, 0x68
	.byte 0x05, 0x6F, 0x08, 0x21, 0x49, 0x19, 0x88, 0x46, 0x44, 0x6F, 0x26, 0x1C, 0x08, 0x36, 0x4A, 0x46
	.byte 0xD0, 0x6A, 0xF0, 0x62, 0xC8, 0x62, 0xD1, 0x6E, 0xF1, 0x66, 0x42, 0x46, 0xD1, 0x66, 0x00, 0x23
	.byte 0x03, 0x65, 0x33, 0x65, 0x13, 0x65, 0x02, 0x1C, 0x7C, 0x32, 0x80, 0x21, 0x49, 0x00, 0x11, 0x80
	.byte 0x84, 0x34, 0x21, 0x80, 0x84, 0x35, 0x29, 0x80, 0x09, 0x49, 0x4C, 0x46, 0xE1, 0x64, 0xB3, 0x84
	.byte 0x41, 0x46, 0x8B, 0x84, 0xBA, 0xF7, 0xE0, 0xF8, 0x01, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x11, 0xCF, 0x0C, 0x08
	thumb_func_start sub_80CCF10
sub_80CCF10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r7, _080CD018 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r0, #0x03
	strb r0, [r1, #0x0E]
	ldr r4, [r7, #0x00]
	ldr r0, _080CD01C @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x0B]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	movs r2, #0x01
	adds r1, r2, #0x0
	ands r1, r0
	ldrb r0, [r3, #0x0D]
	lsrs r0, r0, #0x02
	ands r0, r2
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r1, [r7, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r9, r0
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x53
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCF7E
	cmp r1, #0x04
	bne _080CCFC2
_080CCF7E:
	ldr r0, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x0C
	ldr r0, [r7, #0x00]
	movs r7, #0x93
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x64
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080CCFC2:
	adds r2, r5, #0x0
	adds r2, #0x88
	mov r1, r9
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080CCFD0
	adds r0, #0xFF
_080CCFD0:
	asrs r0, r0, #0x08
	lsls r1, r0, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080CCFDC
	adds r0, #0xFF
_080CCFDC:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCFF8
	cmp r2, #0x04
	bne _080CD060
_080CCFF8:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CD024
	ldr r2, _080CD020 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CD030
	.byte 0x00, 0x00
_080CD018: .4byte 0x03000FD8
_080CD01C: .4byte 0x03000FF4
_080CD020: .4byte 0x00002002
_080CD024:
	ldr r2, _080CD124 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CD030:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CD046
	movs r2, #0x01
_080CD046:
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
_080CD060:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CD06E
	cmp r2, #0x04
	bne _080CD078
_080CD06E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CD078:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r7, r1, #0x0
	cmp r2, #0x02
	beq _080CD08C
	cmp r2, #0x04
	bne _080CD0D4
_080CD08C:
	ldr r5, _080CD128 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x50
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x64
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080CD0D4:
	adds r2, r6, #0x0
	adds r2, #0x88
	mov r4, r9
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080CD0E2
	adds r0, #0xFF
_080CD0E2:
	asrs r0, r0, #0x08
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080CD0EE
	adds r0, #0xFF
_080CD0EE:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CD104
	cmp r2, #0x04
	bne _080CD16C
_080CD104:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CD130
	ldr r2, _080CD12C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CD13C
	.byte 0x00, 0x00
_080CD124: .4byte 0x0000204F
_080CD128: .4byte 0x03000FD8
_080CD12C: .4byte 0x00002002
_080CD130:
	ldr r2, _080CD184 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CD13C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CD152
	movs r2, #0x01
_080CD152:
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
_080CD16C:
	ldr r0, _080CD188 @ =0x080D2EF1
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
	.byte 0x00, 0x00
_080CD184: .4byte 0x0000204F
_080CD188: .4byte sub_80D2EF0
