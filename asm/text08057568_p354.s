	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80C8AF0
sub_80C8AF0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C8B94 @ =0x03000FD8
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
	beq _080C8B8C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8B34
	cmp r1, #0x04
	bne _080C8B50
_080C8B34:
	ldr r2, _080C8B98 @ =0x00002063
	adds r0, r5, #0x0
	movs r1, #0x01
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
_080C8B50:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8B62
	cmp r1, #0x04
	bne _080C8B88
_080C8B62:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C8B88:
	ldr r0, _080C8B9C @ =0x080C8BA1
	str r0, [r7, #0x4C]
_080C8B8C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C8B94: .4byte 0x03000FD8
_080C8B98: .4byte 0x00002063
_080C8B9C: .4byte sub_80C8BA0
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
	thumb_func_start sub_80CD18C
sub_80CD18C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CD1EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	ldr r0, [r0, #0x74]
	ldr r5, [r0, #0x54]
	cmp r5, #0x00
	bne _080CD1E4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CD1B0
	cmp r1, #0x04
	bne _080CD1E0
_080CD1B0:
	ldr r2, _080CD1F0 @ =0x03001038
	ldr r0, _080CD1F4 @ =0x0819832C
	ldr r1, _080CD1F8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CD1E0:
	ldr r0, _080CD1FC @ =0x080CD201
	str r0, [r6, #0x4C]
_080CD1E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CD1EC: .4byte 0x03000FD8
_080CD1F0: .4byte 0x03001038
_080CD1F4: .4byte 0x0819832C
_080CD1F8: .4byte 0x08198220
_080CD1FC: .4byte sub_80CD200
	thumb_func_start sub_80CD200
sub_80CD200:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CD29C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
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
	beq _080CD296
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CD23E
	cmp r1, #0x04
	bne _080CD25A
_080CD23E:
	ldr r2, _080CD2A0 @ =0x00002036
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
_080CD25A:
	ldr r1, _080CD2A4 @ =0x0000208A
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r2, [r0, #0x08]
	ldr r1, [r5, #0x08]
	ldrh r1, [r1, #0x0E]
	adds r1, #0x03
	strh r1, [r2, #0x0E]
	ldr r1, [r0, #0x10]
	movs r2, #0xE0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	str r1, [r0, #0x18]
	ldr r0, _080CD2A8 @ =0x080CD2AD
	str r0, [r6, #0x4C]
_080CD296:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CD29C: .4byte 0x03000FD8
_080CD2A0: .4byte 0x00002036
_080CD2A4: .4byte 0x0000208A
_080CD2A8: .4byte sub_80CD2AC
	thumb_func_start sub_80CD2AC
sub_80CD2AC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CD37C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CD374
	movs r0, #0xAC
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CD2E4
	cmp r1, #0x04
	bne _080CD2FC
_080CD2E4:
	ldr r2, _080CD380 @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CD2FC:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CD30E
	cmp r1, #0x04
	bne _080CD33E
_080CD30E:
	ldr r2, _080CD384 @ =0x03001038
	ldr r0, _080CD388 @ =0x0819832C
	ldr r1, _080CD38C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x50
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
_080CD33E:
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r1, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080CD390 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080CD394 @ =0x080CD399
	str r0, [r6, #0x4C]
_080CD374:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CD37C: .4byte 0x03000FD8
_080CD380: .4byte 0x00002036
_080CD384: .4byte 0x03001038
_080CD388: .4byte 0x0819832C
_080CD38C: .4byte 0x08198220
_080CD390: .4byte 0x00000FFF
_080CD394: .4byte sub_80CD398
	thumb_func_start sub_80CD398
sub_80CD398:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080CD48C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080CD3E2
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CD3E2:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r7, r1, #0x0
	subs r1, #0x35
	str r1, [sp, #0x008]
	cmp r0, #0x00
	beq _080CD3F6
	b _080CD7D2
_080CD3F6:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080CD40E
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080CD410
_080CD40E:
	movs r1, #0x00
_080CD410:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	adds r7, r5, #0x0
	adds r7, #0xAE
	adds r3, r5, #0x0
	adds r3, #0x79
	str r3, [sp, #0x008]
	cmp r1, #0x00
	beq _080CD4F4
	ldr r2, _080CD48C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CD490
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD448
	movs r1, #0x80
_080CD43C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD43C
_080CD448:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD45C
	movs r1, #0x80
_080CD450:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD450
_080CD45C:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD470
	movs r1, #0x80
_080CD464:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD464
_080CD470:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD4EC
	movs r1, #0x08
_080CD47A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD484
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD484:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD47A
	b _080CD4EC
_080CD48C: .4byte 0x03000FD8
_080CD490:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD4A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD49A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD49A
_080CD4A6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD4BC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD4B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD4B0
_080CD4BC:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD4D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD4C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD4C6
_080CD4D2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD4EC
	movs r1, #0x10
_080CD4DC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD4E6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD4E6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD4DC
_080CD4EC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CD4F4:
	movs r1, #0x00
	mov r2, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CD502
	adds r1, r0, #0x0
_080CD502:
	ldr r0, _080CD620 @ =0x00007FFF
	cmp r2, r0
	ble _080CD50A
	adds r2, r0, #0x0
_080CD50A:
	cmp r2, r1
	bge _080CD510
	adds r1, r2, #0x0
_080CD510:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080CD528
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080CD52A
_080CD528:
	movs r1, #0x00
_080CD52A:
	cmp r1, #0x00
	beq _080CD558
	movs r4, #0x01
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x1E
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080CD624 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	ands r4, r0
	cmp r4, #0x00
	beq _080CD558
	ldrh r0, [r7, #0x00]
	ldr r1, _080CD628 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r7, #0x00]
_080CD558:
	ldrh r0, [r7, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CD562
	b _080CD7D2
_080CD562:
	mov r1, r10
	ldr r0, _080CD620 @ =0x00007FFF
	cmp r1, r0
	ble _080CD56C
	adds r1, r0, #0x0
_080CD56C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080CD584
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CD586
_080CD584:
	movs r2, #0x00
_080CD586:
	cmp r2, #0x00
	bne _080CD58C
	b _080CD698
_080CD58C:
	ldr r3, _080CD62C @ =0x03000FD8
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
	ldrh r1, [r7, #0x00]
	ldr r0, _080CD628 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CD630
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD5D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD5CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD5CC
_080CD5D8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD5EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD5E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD5E2
_080CD5EE:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD5F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD5F8
_080CD604:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD68C
	movs r1, #0x10
_080CD60E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD618
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD618:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD60E
	b _080CD68C
_080CD620: .4byte 0x00007FFF
_080CD624: .4byte 0x0300034C
_080CD628: .4byte 0x00000FFF
_080CD62C: .4byte 0x03000FD8
_080CD630:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD646
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD63A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD63A
_080CD646:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD65C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD650:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD650
_080CD65C:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD672
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD666:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD666
_080CD672:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD68C
	movs r1, #0x10
_080CD67C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD686
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD686:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD67C
_080CD68C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080CD7D2
_080CD698:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080CD6A4
	b _080CD7D2
_080CD6A4:
	ldr r0, _080CD760 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CD6BA
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080CD6BA
	b _080CD7D2
_080CD6BA:
	ldr r2, _080CD764 @ =0x03000FD8
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
	bne _080CD7D2
	ldrh r1, [r7, #0x00]
	ldr r0, _080CD768 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CD76C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD718
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD70C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD70C
_080CD718:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD72E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD722:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD722
_080CD72E:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD744
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD738:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD738
_080CD744:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD7C8
	movs r1, #0x10
_080CD74E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD758
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD758:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD74E
	b _080CD7C8
_080CD760: .4byte 0x0300034C
_080CD764: .4byte 0x03000FD8
_080CD768: .4byte 0x00000FFF
_080CD76C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CD782
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD776:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD776
_080CD782:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD798
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD78C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD78C
_080CD798:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD7AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD7A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD7A2
_080CD7AE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD7C8
	movs r1, #0x10
_080CD7B8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD7C2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD7C2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD7B8
_080CD7C8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
_080CD7D2:
	ldrh r0, [r7, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	bne _080CD7DC
	b _080CD8DA
_080CD7DC:
	movs r1, #0x00
	mov r2, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CD7EA
	adds r1, r0, #0x0
_080CD7EA:
	ldr r0, _080CD854 @ =0x00007FFF
	cmp r2, r0
	ble _080CD7F2
	adds r2, r0, #0x0
_080CD7F2:
	cmp r2, r1
	bge _080CD7F8
	adds r1, r2, #0x0
_080CD7F8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CD812
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CD814
_080CD812:
	movs r1, #0x00
_080CD814:
	cmp r1, #0x00
	beq _080CD8DA
	cmp r3, #0x02
	bne _080CD8DA
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r3, [r1, #0x00]
	adds r0, r3, #0x1
	str r0, [r1, #0x00]
	ldr r0, _080CD858 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080CD85C @ =0x000002BF
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x00
	bne _080CD86C
	ldr r2, _080CD860 @ =0x03001038
	ldr r0, _080CD864 @ =0x0819832C
	ldr r1, _080CD868 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r1, r3, #0x0
	adds r1, #0x0F
	movs r0, #0x70
	bl _call_via_r2
	movs r1, #0x08
	b _080CD8B2
	.byte 0x00, 0x00
_080CD854: .4byte 0x00007FFF
_080CD858: .4byte 0x03000FD8
_080CD85C: .4byte 0x000002BF
_080CD860: .4byte 0x03001038
_080CD864: .4byte 0x0819832C
_080CD868: .4byte 0x08198220
_080CD86C:
	cmp r1, #0x40
	bne _080CD898
	ldr r2, _080CD88C @ =0x03001038
	ldr r0, _080CD890 @ =0x0819832C
	ldr r1, _080CD894 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC8
	lsls r0, r0, #0x01
	adds r1, r3, #0x0
	adds r1, #0x15
	bl _call_via_r2
	movs r1, #0x14
	b _080CD8B2
_080CD88C: .4byte 0x03001038
_080CD890: .4byte 0x0819832C
_080CD894: .4byte 0x08198220
_080CD898:
	ldr r2, _080CD960 @ =0x03001038
	ldr r0, _080CD964 @ =0x0819832C
	ldr r1, _080CD968 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xE1
	lsls r0, r0, #0x02
	adds r1, r3, #0x0
	adds r1, #0x1F
	bl _call_via_r2
	movs r1, #0x1E
_080CD8B2:
	subs r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r2, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r2, r1
	bge _080CD8D2
	adds r0, r2, #0x1
	str r0, [r4, #0x00]
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080CD8D2:
	ldrh r1, [r7, #0x00]
	ldr r0, _080CD96C @ =0x00000FFF
	ands r0, r1
	strh r0, [r7, #0x00]
_080CD8DA:
	ldr r3, [sp, #0x008]
	ldrb r1, [r3, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CD8E8
	b _080CDAE4
_080CD8E8:
	ldr r2, _080CD970 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CD974
	adds r2, r5, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA0
	adds r7, r5, #0x0
	adds r7, #0x76
	cmp r5, #0x00
	beq _080CD916
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD90A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD90A
_080CD916:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD92C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD920:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD920
_080CD92C:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD942
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD936:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD936
_080CD942:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD9D8
	movs r1, #0x10
_080CD94C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD956
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD956:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD94C
	b _080CD9D8
	.byte 0x00, 0x00
_080CD960: .4byte 0x03001038
_080CD964: .4byte 0x0819832C
_080CD968: .4byte 0x08198220
_080CD96C: .4byte 0x00000FFF
_080CD970: .4byte 0x03000FD8
_080CD974:
	adds r2, r5, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA0
	adds r7, r5, #0x0
	adds r7, #0x76
	cmp r5, #0x00
	beq _080CD992
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD986:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD986
_080CD992:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CD9A8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD99C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD99C
_080CD9A8:
	mov r2, r8
	cmp r2, #0x00
	beq _080CD9BE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CD9B2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CD9B2
_080CD9BE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CD9D8
	movs r1, #0x10
_080CD9C8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CD9D2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CD9D2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CD9C8
_080CD9D8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	ble _080CDA10
	adds r1, r6, #0x0
	adds r1, #0xA4
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	bl sub_807C298
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDA04
	cmp r1, #0x04
	bne _080CDAE4
_080CDA04:
	ldr r0, _080CDA0C @ =0x080CE1B5
	str r0, [r5, #0x4C]
	b _080CDAE4
	.byte 0x00, 0x00
_080CDA0C: .4byte sub_80CE1B4
_080CDA10:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDA28
	cmp r1, #0x04
	bne _080CDA44
_080CDA28:
	ldr r2, _080CDAF4 @ =0x00002036
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
_080CDA44:
	ldr r0, [r5, #0x30]
	ldr r2, _080CDAF8 @ =0x00002092
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x30]
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDA80
	cmp r1, #0x04
	bne _080CDADE
_080CDA80:
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080CDA8E
	ldr r4, _080CDAFC @ =0x000001FF
	adds r0, r0, r4
_080CDA8E:
	asrs r2, r0, #0x09
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080CDA98
	adds r0, #0xFF
_080CDA98:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, r2
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080CDAB0
	adds r2, #0xFF
_080CDAB0:
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
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x30]
	movs r1, #0x28
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x30]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	bl sub_8088164
_080CDADE:
	ldr r0, _080CDB00 @ =0x080CDB05
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080CDAE4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CDAF4: .4byte 0x00002036
_080CDAF8: .4byte 0x00002092
_080CDAFC: .4byte 0x000001FF
_080CDB00: .4byte sub_80CDB04
	thumb_func_start sub_80CDB04
sub_80CDB04:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CDBB0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x30]
	bl sub_8087CE4
	ldr r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDBA2
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x9C
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	ldr r3, [r4, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDB52
	cmp r1, #0x04
	bne _080CDB9C
_080CDB52:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080CDB5A
	adds r0, #0xFF
_080CDB5A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080CDB72
	adds r2, #0xFF
_080CDB72:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0C
	bl sub_808843C
	ldr r0, [r4, #0x30]
	movs r1, #0x28
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x30]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	bl sub_8088164
_080CDB9C:
	ldr r0, _080CDBB4 @ =0x080CDBB9
	mov r1, r8
	str r0, [r1, #0x4C]
_080CDBA2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CDBB0: .4byte 0x03000FD8
_080CDBB4: .4byte sub_80CDBB8
	thumb_func_start sub_80CDBB8
sub_80CDBB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080CDCA4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x30]
	bl sub_8087CE4
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDC9A
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r7, #0x07
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x30]
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDC3C
	cmp r1, #0x04
	bne _080CDC52
_080CDC3C:
	ldr r2, _080CDCA8 @ =0x00002065
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CDC52:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDC64
	cmp r1, #0x04
	bne _080CDC94
_080CDC64:
	ldr r2, _080CDCAC @ =0x03001038
	ldr r0, _080CDCB0 @ =0x0819832C
	ldr r1, _080CDCB4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x1E
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
_080CDC94:
	ldr r0, _080CDCB8 @ =0x080CDCBD
	mov r1, r8
	str r0, [r1, #0x4C]
_080CDC9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CDCA4: .4byte 0x03000FD8
_080CDCA8: .4byte 0x00002065
_080CDCAC: .4byte 0x03001038
_080CDCB0: .4byte 0x0819832C
_080CDCB4: .4byte 0x08198220
_080CDCB8: .4byte sub_80CDCBC
	thumb_func_start sub_80CDCBC
sub_80CDCBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CDD8C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDD7E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDD00
	cmp r1, #0x04
	bne _080CDD18
_080CDD00:
	ldr r2, _080CDD90 @ =0x00002065
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CDD18:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDD2A
	cmp r1, #0x04
	bne _080CDD78
_080CDD2A:
	ldr r0, [r7, #0x08]
	movs r1, #0x02
	ldsh r6, [r0, r1]
	ldr r5, _080CDD8C @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x10
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r6
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_080CDD78:
	ldr r0, _080CDD94 @ =0x080CDD99
	mov r1, r8
	str r0, [r1, #0x4C]
_080CDD7E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CDD8C: .4byte 0x03000FD8
_080CDD90: .4byte 0x00002065
_080CDD94: .4byte sub_80CDD98
	thumb_func_start sub_80CDD98
sub_80CDD98:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080CDE94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r8, r1
	mov r6, r8
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, [r6, #0x30]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDE86
	mov r0, r8
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDDEC
	cmp r1, #0x04
	bne _080CDE08
_080CDDEC:
	ldr r2, _080CDE98 @ =0x00002036
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
_080CDE08:
	ldr r0, [r5, #0x10]
	movs r2, #0x87
	lsls r2, r2, #0x09
	adds r0, r0, r2
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r1, [r6, #0x30]
	ldr r0, [r1, #0x10]
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDE38
	cmp r1, #0x04
	bne _080CDE80
_080CDE38:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080CDE40
	adds r0, #0xFF
_080CDE40:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CDE5A
	adds r2, #0xFF
_080CDE5A:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
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
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080CDE80:
	ldr r0, _080CDE9C @ =0x080CDEA1
	mov r1, r9
	str r0, [r1, #0x4C]
_080CDE86:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CDE94: .4byte 0x03000FD8
_080CDE98: .4byte 0x00002036
_080CDE9C: .4byte sub_80CDEA0
	thumb_func_start sub_80CDEA0
sub_80CDEA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CDFA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r4, #0x08
	ldr r6, [r0, #0x74]
	adds r7, r6, #0x0
	adds r7, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r0, r7, #0x0
	bl sub_8087CE4
	ldr r2, [r4, #0x30]
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x38]
	subs r1, r1, r0
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDF9C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CDFAC @ =0x0801008C
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r7, #0x24]
	adds r0, #0x01
	strh r0, [r7, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CDF32
	ldr r2, _080CDFB0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CDF68
_080CDF32:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080CDF3A
	adds r1, #0xFF
_080CDF3A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080CDF50
	adds r2, #0xFF
_080CDF50:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r5, [sp, #0x000]
	movs r0, #0x7D
	movs r3, #0x00
	bl sub_80DF024
_080CDF68:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDF7A
	cmp r1, #0x04
	bne _080CDF96
_080CDF7A:
	ldr r2, _080CDFB4 @ =0x00002065
	adds r0, r7, #0x0
	movs r1, #0x02
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
_080CDF96:
	ldr r0, _080CDFB8 @ =0x080D2E7D
	mov r1, r8
	str r0, [r1, #0x4C]
_080CDF9C:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CDFA8: .4byte 0x03000FD8
_080CDFAC: .4byte 0x0801008C
_080CDFB0: .4byte 0x00000111
_080CDFB4: .4byte 0x00002065
_080CDFB8: .4byte sub_80D2E7C
	thumb_func_start sub_80CDFBC
sub_80CDFBC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CE06C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080CDFDE
	b _080CE1A8
_080CDFDE:
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
	beq _080CDFFC
	cmp r1, #0x04
	bne _080CE03A
_080CDFFC:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CE00A
	adds r0, #0xFF
_080CE00A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CE018
	adds r0, #0xFF
_080CE018:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CE026
	adds r0, #0xFF
_080CE026:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080CE03A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CE04E
	cmp r2, #0x04
	bne _080CE0B0
_080CE04E:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CE074
	ldr r2, _080CE070 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CE080
_080CE06C: .4byte 0x03000FD8
_080CE070: .4byte 0x00002002
_080CE074:
	ldr r2, _080CE14C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CE080:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CE096
	movs r2, #0x01
_080CE096:
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
_080CE0B0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CE0BE
	cmp r2, #0x04
	bne _080CE0C8
_080CE0BE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080CE0C8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CE0DC
	cmp r2, #0x04
	bne _080CE11E
_080CE0DC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CE0EA
	adds r0, #0xFF
_080CE0EA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CE0F8
	adds r0, #0xFF
_080CE0F8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CE106
	adds r0, #0xFF
_080CE106:
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
_080CE11E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE12C
	cmp r1, #0x04
	bne _080CE190
_080CE12C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CE154
	ldr r2, _080CE150 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CE160
	.byte 0x00, 0x00
_080CE14C: .4byte 0x0000204F
_080CE150: .4byte 0x00002002
_080CE154:
	ldr r2, _080CE1B0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CE160:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CE176
	movs r2, #0x01
_080CE176:
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
_080CE190:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CE19E
	cmp r2, #0x04
	bne _080CE1A8
_080CE19E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CE1A8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CE1B0: .4byte 0x0000204F
	thumb_func_start sub_80CE1B4
sub_80CE1B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CE344 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	mov r1, r8
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	ldr r1, _080CE348 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r2, r4, #0x0
	adds r2, #0x75
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	movs r1, #0xE0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r2, #0x04
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	strh r0, [r1, #0x0E]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE24E
	cmp r1, #0x04
	bne _080CE266
_080CE24E:
	ldr r2, _080CE34C @ =0x00002092
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CE266:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE278
	cmp r1, #0x04
	bne _080CE294
_080CE278:
	ldr r2, _080CE350 @ =0x00002036
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
_080CE294:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE2A6
	cmp r1, #0x04
	bne _080CE2C2
_080CE2A6:
	ldr r2, _080CE354 @ =0x00002054
	adds r0, r7, #0x0
	movs r1, #0x00
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
_080CE2C2:
	ldr r3, [r6, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE2D6
	cmp r1, #0x04
	bne _080CE324
_080CE2D6:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080CE2DE
	adds r0, #0xFF
_080CE2DE:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CE2F6
	adds r2, #0xFF
_080CE2F6:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0C
	bl sub_808843C
	ldr r0, [r6, #0x30]
	movs r1, #0x64
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x03
	bl sub_8088164
_080CE324:
	ldr r1, [r6, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080CE358 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r0, _080CE35C @ =0x080CE361
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CE344: .4byte 0x03000FD8
_080CE348: .4byte 0x00000111
_080CE34C: .4byte 0x00002092
_080CE350: .4byte 0x00002036
_080CE354: .4byte 0x00002054
_080CE358: .4byte 0x00000FFF
_080CE35C: .4byte sub_80CE360
	thumb_func_start sub_80CE360
sub_80CE360:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080CE480 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r8, r1
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r1, r0, #0x03
	mov r4, r8
	subs r4, r4, r1
	mov r12, r4
	lsls r0, r0, #0x02
	subs r0, r0, r2
	lsls r0, r0, #0x01
	mov r1, r8
	subs r1, r1, r0
	mov r10, r1
	mov r9, r10
	lsls r0, r2, #0x03
	adds r0, r0, r2
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	bge _080CE3D6
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CE3D6:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CE3E6
	b _080CE91A
_080CE3E6:
	mov r1, r12
	cmp r1, #0x00
	bge _080CE3EE
	movs r1, #0x00
_080CE3EE:
	ldr r0, _080CE484 @ =0x00007FFF
	cmp r1, r0
	ble _080CE3F6
	adds r1, r0, #0x0
_080CE3F6:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080CE410
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080CE412
_080CE410:
	movs r2, #0x00
_080CE412:
	cmp r2, #0x00
	beq _080CE4EC
	ldr r2, _080CE480 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080CE488
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE43A
	movs r1, #0x80
_080CE42E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE42E
_080CE43A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE44E
	movs r1, #0x80
_080CE442:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE442
_080CE44E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CE462
	movs r1, #0x80
_080CE456:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE456
_080CE462:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE4E4
	movs r1, #0x08
_080CE46C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE476
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE476:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE46C
	b _080CE4E4
	.byte 0x00, 0x00
_080CE480: .4byte 0x03000FD8
_080CE484: .4byte 0x00007FFF
_080CE488:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE49E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE492:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE492
_080CE49E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE4B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE4A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE4A8
_080CE4B4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CE4CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE4BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE4BE
_080CE4CA:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE4E4
	movs r1, #0x10
_080CE4D4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE4DE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE4DE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE4D4
_080CE4E4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CE4EC:
	ldr r3, [r5, #0x30]
	mov r1, r9
	mov r2, r8
	cmp r1, #0x00
	bge _080CE4F8
	movs r1, #0x00
_080CE4F8:
	mov r0, r8
	cmp r0, #0x00
	bge _080CE500
	movs r2, #0x00
_080CE500:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CE50A
	adds r1, r0, #0x0
_080CE50A:
	ldr r0, _080CE5F4 @ =0x00007FFF
	cmp r2, r0
	ble _080CE512
	adds r2, r0, #0x0
_080CE512:
	cmp r2, r1
	bge _080CE518
	adds r1, r2, #0x0
_080CE518:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CE532
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CE534
_080CE532:
	movs r1, #0x00
_080CE534:
	cmp r1, #0x00
	bne _080CE53A
	b _080CE67C
_080CE53A:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080CE5F8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080CE55A
	b _080CE67C
_080CE55A:
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CE5FC @ =0x03000FD8
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
	bne _080CE660
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CE600
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE5AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE5A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE5A0
_080CE5AC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE5C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE5B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE5B6
_080CE5C2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CE5D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE5CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE5CC
_080CE5D8:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE65C
	movs r1, #0x10
_080CE5E2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE5EC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE5EC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE5E2
	b _080CE65C
_080CE5F4: .4byte 0x00007FFF
_080CE5F8: .4byte 0x0300034C
_080CE5FC: .4byte 0x03000FD8
_080CE600:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE616
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE60A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE60A
_080CE616:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE62C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE620:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE620
_080CE62C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CE642
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE636:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE636
_080CE642:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE65C
	movs r1, #0x10
_080CE64C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE656
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE656:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE64C
_080CE65C:
	bl sub_807F448
_080CE660:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080CE760 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r0, r2
	strh r0, [r1, #0x00]
_080CE67C:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CE68C
	b _080CE91A
_080CE68C:
	mov r1, r8
	cmp r1, #0x00
	bge _080CE694
	movs r1, #0x00
_080CE694:
	ldr r0, _080CE764 @ =0x00007FFF
	cmp r1, r0
	ble _080CE69C
	adds r1, r0, #0x0
_080CE69C:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080CE6B6
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CE6B8
_080CE6B6:
	movs r2, #0x00
_080CE6B8:
	cmp r2, #0x00
	bne _080CE6BE
	b _080CE7D4
_080CE6BE:
	ldr r4, _080CE768 @ =0x03000FD8
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
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080CE760 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CE76C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE716
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE70A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE70A
_080CE716:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE72C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE720:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE720
_080CE72C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CE742
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE736:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE736
_080CE742:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE7C8
	movs r1, #0x10
_080CE74C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE756
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE756:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE74C
	b _080CE7C8
	.byte 0x00, 0x00
_080CE760: .4byte 0x00000FFF
_080CE764: .4byte 0x00007FFF
_080CE768: .4byte 0x03000FD8
_080CE76C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE782
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE776:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE776
_080CE782:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE798
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE78C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE78C
_080CE798:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CE7AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE7A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE7A2
_080CE7AE:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE7C8
	movs r1, #0x10
_080CE7B8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE7C2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE7C2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE7B8
_080CE7C8:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CE91A
_080CE7D4:
	ldr r0, [r5, #0x30]
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	ble _080CE7E2
	b _080CE91A
_080CE7E2:
	ldr r0, _080CE8A8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080CE7F0
	b _080CE91A
_080CE7F0:
	ldr r2, _080CE8AC @ =0x03000FD8
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
	ldr r3, [r2, #0x00]
	ldrb r0, [r3, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	bne _080CE91A
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080CE8B0 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	mov r9, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	mov r2, r9
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CE8B4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE85E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE852:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE852
_080CE85E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE874
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE868:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE868
_080CE874:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CE88A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE87E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE87E
_080CE88A:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE910
	movs r1, #0x10
_080CE894:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE89E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE89E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE894
	b _080CE910
	.byte 0x00, 0x00
_080CE8A8: .4byte 0x0300034C
_080CE8AC: .4byte 0x03000FD8
_080CE8B0: .4byte 0x00000FFF
_080CE8B4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE8CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE8BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE8BE
_080CE8CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE8E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE8D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE8D4
_080CE8E0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CE8F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE8EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE8EA
_080CE8F6:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE910
	movs r1, #0x10
_080CE900:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE90A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE90A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE900
_080CE910:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
_080CE91A:
	ldr r1, [r5, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r4, r0, #0x0C
	adds r3, r1, #0x0
	cmp r4, #0x00
	beq _080CE9C8
	mov r1, r10
	mov r2, r8
	cmp r1, #0x00
	bge _080CE934
	movs r1, #0x00
_080CE934:
	cmp r2, #0x00
	bge _080CE93A
	movs r2, #0x00
_080CE93A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CE944
	adds r1, r0, #0x0
_080CE944:
	ldr r0, _080CE994 @ =0x00007FFF
	cmp r2, r0
	ble _080CE94C
	adds r2, r0, #0x0
_080CE94C:
	cmp r2, r1
	bge _080CE952
	adds r1, r2, #0x0
_080CE952:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r1
	blt _080CE96C
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CE96E
_080CE96C:
	movs r1, #0x00
_080CE96E:
	cmp r1, #0x00
	beq _080CE9C8
	cmp r4, #0x02
	bne _080CE9C8
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	bgt _080CE998
	adds r0, #0x01
	str r0, [r1, #0x00]
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	b _080CE9A6
_080CE994: .4byte 0x00007FFF
_080CE998:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080CE9A6:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE9BE
	cmp r1, #0x04
	bne _080CEA86
_080CE9BE:
	ldr r0, _080CE9C4 @ =0x080CEFB9
	b _080CEA84
	.byte 0x00, 0x00
_080CE9C4: .4byte sub_80CEFB8
_080CE9C8:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CEA86
	adds r0, r3, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x30]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r7, #0x07
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CEA2C
	cmp r2, #0x04
	bne _080CEA42
_080CEA2C:
	ldr r2, _080CEA98 @ =0x00002065
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CEA42:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CEA50
	cmp r2, #0x04
	bne _080CEA80
_080CEA50:
	ldr r2, _080CEA9C @ =0x03001038
	ldr r0, _080CEAA0 @ =0x0819832C
	ldr r1, _080CEAA4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x1E
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
_080CEA80:
	ldr r0, _080CEAA8 @ =0x080CEAAD
	ldr r2, [sp, #0x004]
_080CEA84:
	str r0, [r2, #0x4C]
_080CEA86:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CEA98: .4byte 0x00002065
_080CEA9C: .4byte 0x03001038
_080CEAA0: .4byte 0x0819832C
_080CEAA4: .4byte 0x08198220
_080CEAA8: .4byte sub_80CEAAC
	thumb_func_start sub_80CEAAC
sub_80CEAAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CEB80 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CEB72
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEAF0
	cmp r1, #0x04
	bne _080CEB08
_080CEAF0:
	ldr r2, _080CEB84 @ =0x00002065
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CEB08:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEB1A
	cmp r1, #0x04
	bne _080CEB6C
_080CEB1A:
	ldr r6, [r7, #0x14]
	cmp r6, #0x00
	bge _080CEB22
	adds r6, #0xFF
_080CEB22:
	asrs r6, r6, #0x08
	ldr r5, _080CEB80 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x10
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r6
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_080CEB6C:
	ldr r0, _080CEB88 @ =0x080CEB8D
	mov r1, r8
	str r0, [r1, #0x4C]
_080CEB72:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CEB80: .4byte 0x03000FD8
_080CEB84: .4byte 0x00002065
_080CEB88: .4byte sub_80CEB8C
	thumb_func_start sub_80CEB8C
sub_80CEB8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080CEC88 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r8, r1
	mov r6, r8
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, [r6, #0x30]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CEC7A
	mov r0, r8
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEBE0
	cmp r1, #0x04
	bne _080CEBFC
_080CEBE0:
	ldr r2, _080CEC8C @ =0x00002036
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
_080CEBFC:
	ldr r0, [r5, #0x10]
	movs r2, #0x87
	lsls r2, r2, #0x09
	adds r0, r0, r2
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r1, [r6, #0x30]
	ldr r0, [r1, #0x10]
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEC2C
	cmp r1, #0x04
	bne _080CEC74
_080CEC2C:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080CEC34
	adds r0, #0xFF
_080CEC34:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CEC4E
	adds r2, #0xFF
_080CEC4E:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
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
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080CEC74:
	ldr r0, _080CEC90 @ =0x080CEC95
	mov r1, r9
	str r0, [r1, #0x4C]
_080CEC7A:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CEC88: .4byte 0x03000FD8
_080CEC8C: .4byte 0x00002036
_080CEC90: .4byte sub_80CEC94
	thumb_func_start sub_80CEC94
sub_80CEC94:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CEDAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r4, #0x08
	ldr r7, [r0, #0x74]
	adds r6, r7, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	ldr r2, [r4, #0x30]
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x38]
	subs r1, r1, r0
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r0, r7, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CEDA0
	ldr r0, [r5, #0x28]
	ldr r1, _080CEDB0 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r7, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CEDB4 @ =0x0801018C
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
	bgt _080CED36
	ldr r2, _080CEDB0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CED6C
_080CED36:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080CED3E
	adds r1, #0xFF
_080CED3E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080CED54
	adds r2, #0xFF
_080CED54:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r5, [sp, #0x000]
	movs r0, #0x7D
	movs r3, #0x00
	bl sub_80DF024
_080CED6C:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CED7E
	cmp r1, #0x04
	bne _080CED9A
_080CED7E:
	ldr r2, _080CEDB8 @ =0x00002065
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
_080CED9A:
	ldr r0, _080CEDBC @ =0x080D2E09
	mov r1, r8
	str r0, [r1, #0x4C]
_080CEDA0:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CEDAC: .4byte 0x03000FD8
_080CEDB0: .4byte 0x00000111
_080CEDB4: .4byte 0x0801018C
_080CEDB8: .4byte 0x00002065
_080CEDBC: .4byte sub_80D2E08
	thumb_func_start sub_80CEDC0
sub_80CEDC0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CEE70 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080CEDE2
	b _080CEFAC
_080CEDE2:
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
	beq _080CEE00
	cmp r1, #0x04
	bne _080CEE3E
_080CEE00:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEE0E
	adds r0, #0xFF
_080CEE0E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEE1C
	adds r0, #0xFF
_080CEE1C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEE2A
	adds r0, #0xFF
_080CEE2A:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080CEE3E:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CEE52
	cmp r2, #0x04
	bne _080CEEB4
_080CEE52:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CEE78
	ldr r2, _080CEE74 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CEE84
_080CEE70: .4byte 0x03000FD8
_080CEE74: .4byte 0x00002002
_080CEE78:
	ldr r2, _080CEF50 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CEE84:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CEE9A
	movs r2, #0x01
_080CEE9A:
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
_080CEEB4:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CEEC2
	cmp r2, #0x04
	bne _080CEECC
_080CEEC2:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080CEECC:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CEEE0
	cmp r2, #0x04
	bne _080CEF22
_080CEEE0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEEEE
	adds r0, #0xFF
_080CEEEE:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEEFC
	adds r0, #0xFF
_080CEEFC:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEF0A
	adds r0, #0xFF
_080CEF0A:
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
_080CEF22:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEF30
	cmp r1, #0x04
	bne _080CEF94
_080CEF30:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CEF58
	ldr r2, _080CEF54 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CEF64
	.byte 0x00, 0x00
_080CEF50: .4byte 0x0000204F
_080CEF54: .4byte 0x00002002
_080CEF58:
	ldr r2, _080CEFB4 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CEF64:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CEF7A
	movs r2, #0x01
_080CEF7A:
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
_080CEF94:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CEFA2
	cmp r2, #0x04
	bne _080CEFAC
_080CEFA2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CEFAC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CEFB4: .4byte 0x0000204F
	thumb_func_start sub_80CEFB8
sub_80CEFB8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CF048 @ =0x03000FD8
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
	beq _080CEFE0
	cmp r1, #0x04
	bne _080CEFFC
_080CEFE0:
	ldr r2, _080CF04C @ =0x00002054
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
_080CEFFC:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF00E
	cmp r1, #0x04
	bne _080CF03E
_080CF00E:
	ldr r2, _080CF050 @ =0x03001038
	ldr r0, _080CF054 @ =0x0819832C
	ldr r1, _080CF058 @ =0x08198220
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
_080CF03E:
	ldr r0, _080CF05C @ =0x080CF061
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CF048: .4byte 0x03000FD8
_080CF04C: .4byte 0x00002054
_080CF050: .4byte 0x03001038
_080CF054: .4byte 0x0819832C
_080CF058: .4byte 0x08198220
_080CF05C: .4byte sub_80CF060
	thumb_func_start sub_80CF060
sub_80CF060:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080CF114 @ =0x03000FD8
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
	bne _080CF096
	b _080CF194
_080CF096:
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
	beq _080CF0B6
	cmp r1, #0x04
	bne _080CF168
_080CF0B6:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080CF0BE
	adds r1, #0xFF
_080CF0BE:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080CF0D4
	adds r0, #0xFF
_080CF0D4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080CF0EA
	adds r3, #0xFF
_080CF0EA:
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
	bne _080CF118
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080CF128
_080CF114: .4byte 0x03000FD8
_080CF118:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080CF128:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080CF130
	adds r0, #0xFF
_080CF130:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080CF1A4 @ =0x03001038
	ldr r0, _080CF1A8 @ =0x0819832C
	ldr r1, _080CF1AC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080CF14A
	adds r1, #0x3F
_080CF14A:
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
_080CF168:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	mov r3, r9
	adds r3, #0xAE
	ldrh r2, [r3, #0x00]
	ldr r1, _080CF1B0 @ =0x00000FFF
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
	ldr r0, _080CF1B4 @ =0x080CF1B9
	str r0, [r6, #0x4C]
_080CF194:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CF1A4: .4byte 0x03001038
_080CF1A8: .4byte 0x0819832C
_080CF1AC: .4byte 0x08198220
_080CF1B0: .4byte 0x00000FFF
_080CF1B4: .4byte sub_80CF1B8
	thumb_func_start sub_80CF1B8
sub_80CF1B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r9, r0
	ldr r4, _080CF2EC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	mov r0, r9
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x00C]
	bl sub_8087CE4
	mov r0, r9
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	movs r2, #0xB4
	adds r2, r2, r5
	mov r12, r2
	strh r0, [r2, #0x00]
	mov r0, r9
	adds r0, #0x7A
	ldrh r0, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x82
	strh r0, [r2, #0x00]
	mov r0, r9
	adds r0, #0x7E
	ldrh r0, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x86
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	bne _080CF218
	b _080CF818
_080CF218:
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r4, r0, #0x01
	lsls r1, r0, #0x02
	str r1, [sp, #0x008]
	str r1, [sp, #0x004]
	lsls r1, r0, #0x03
	adds r1, r1, r0
	str r1, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r1
	bge _080CF240
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CF240:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080CF250
	b _080CF784
_080CF250:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080CF258
	movs r1, #0x00
_080CF258:
	ldr r0, _080CF2F0 @ =0x00007FFF
	cmp r1, r0
	ble _080CF260
	adds r1, r0, #0x0
_080CF260:
	mov r4, r12
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, r1
	bgt _080CF274
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF276
_080CF274:
	movs r2, #0x00
_080CF276:
	movs r3, #0x7E
	adds r3, r3, r6
	mov r10, r3
	adds r5, r6, #0x0
	adds r5, #0xAE
	cmp r2, #0x00
	beq _080CF358
	ldr r2, _080CF2EC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CF2F4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF2A8
	movs r1, #0x4C
_080CF29C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF29C
_080CF2A8:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF2BC
	movs r1, #0x4C
_080CF2B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2B0
_080CF2BC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF2D0
	movs r1, #0x4C
_080CF2C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2C4
_080CF2D0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF350
	movs r1, #0x04
_080CF2DA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF2E4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF2E4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF2DA
	b _080CF350
_080CF2EC: .4byte 0x03000FD8
_080CF2F0: .4byte 0x00007FFF
_080CF2F4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF30A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF2FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2FE
_080CF30A:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF320
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF314:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF314
_080CF320:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF336
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF32A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF32A
_080CF336:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF350
	movs r1, #0x10
_080CF340:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF34A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF34A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF340
_080CF350:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CF358:
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF362
	movs r1, #0x00
_080CF362:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080CF36A
	movs r2, #0x00
_080CF36A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CF374
	adds r1, r0, #0x0
_080CF374:
	ldr r0, _080CF46C @ =0x00007FFF
	cmp r2, r0
	ble _080CF37C
	adds r2, r0, #0x0
_080CF37C:
	cmp r2, r1
	bge _080CF382
	adds r1, r2, #0x0
_080CF382:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080CF39A
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CF39C
_080CF39A:
	movs r1, #0x00
_080CF39C:
	cmp r1, #0x00
	bne _080CF3A2
	b _080CF4EE
_080CF3A2:
	ldr r1, _080CF470 @ =0xFF000001
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080CF474 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CF3C2
	b _080CF4EE
_080CF3C2:
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	movs r2, #0x20
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CF478 @ =0x03000FD8
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
	bne _080CF4DE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CF47C
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CF424
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF418:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF418
_080CF424:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF43A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF42E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF42E
_080CF43A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF450
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF444:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF444
_080CF450:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF4DA
	movs r1, #0x10
_080CF45A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF464
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF464:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF45A
	b _080CF4DA
_080CF46C: .4byte 0x00007FFF
_080CF470: .4byte 0xFF000001
_080CF474: .4byte 0x0300034C
_080CF478: .4byte 0x03000FD8
_080CF47C:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CF494
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF488:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF488
_080CF494:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF4AA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF49E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF49E
_080CF4AA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF4C0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF4B4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF4B4
_080CF4C0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF4DA
	movs r1, #0x10
_080CF4CA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF4D4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF4D4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF4CA
_080CF4DA:
	bl sub_807F448
_080CF4DE:
	ldrh r0, [r5, #0x00]
	ldr r1, _080CF5BC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080CF4EE:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CF4F8
	b _080CF784
_080CF4F8:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF500
	movs r1, #0x00
_080CF500:
	ldr r0, _080CF5C0 @ =0x00007FFF
	cmp r1, r0
	ble _080CF508
	adds r1, r0, #0x0
_080CF508:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080CF520
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF522
_080CF520:
	movs r2, #0x00
_080CF522:
	cmp r2, #0x00
	bne _080CF528
	b _080CF630
_080CF528:
	ldr r3, _080CF5C4 @ =0x03000FD8
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
	ldr r0, _080CF5BC @ =0x00000FFF
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
	beq _080CF5C8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF574
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF568:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF568
_080CF574:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF58A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF57E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF57E
_080CF58A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF5A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF594:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF594
_080CF5A0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF624
	movs r1, #0x10
_080CF5AA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF5B4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF5B4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF5AA
	b _080CF624
_080CF5BC: .4byte 0x00000FFF
_080CF5C0: .4byte 0x00007FFF
_080CF5C4: .4byte 0x03000FD8
_080CF5C8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF5DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5D2
_080CF5DE:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF5F4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5E8
_080CF5F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF60A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5FE
_080CF60A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF624
	movs r1, #0x10
_080CF614:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF61E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF61E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF614
_080CF624:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CF784
_080CF630:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	ble _080CF63E
	b _080CF784
_080CF63E:
	ldr r0, _080CF6FC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	ldr r0, _080CF700 @ =0xFF000001
	ands r0, r1
	cmp r0, #0x00
	bne _080CF654
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	bne _080CF654
	b _080CF784
_080CF654:
	ldr r2, _080CF704 @ =0x03000FD8
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
	ldr r1, _080CF708 @ =0x00FFFFFE
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CF682
	b _080CF784
_080CF682:
	ldrh r1, [r5, #0x00]
	ldr r0, _080CF70C @ =0x00000FFF
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
	beq _080CF710
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF6B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6A6
_080CF6B2:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF6C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6BC
_080CF6C8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF6DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6D2
_080CF6DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF76C
	movs r1, #0x10
_080CF6E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF6F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF6F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF6E8
	b _080CF76C
	.byte 0x00, 0x00
_080CF6FC: .4byte 0x0300034C
_080CF700: .4byte 0xFF000001
_080CF704: .4byte 0x03000FD8
_080CF708: .4byte 0x00FFFFFE
_080CF70C: .4byte 0x00000FFF
_080CF710:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF726
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF71A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF71A
_080CF726:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF73C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF730:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF730
_080CF73C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF752
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF746:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF746
_080CF752:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF76C
	movs r1, #0x10
_080CF75C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF766
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF766:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF75C
_080CF76C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x20
	bl sub_807EAE4
_080CF784:
	ldrh r0, [r5, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080CF818
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r2, #0x00
	bge _080CF796
	movs r2, #0x00
_080CF796:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080CF79E
	movs r3, #0x00
_080CF79E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080CF7A8
	adds r2, r0, #0x0
_080CF7A8:
	ldr r0, _080CF80C @ =0x00007FFF
	cmp r3, r0
	ble _080CF7B0
	adds r3, r0, #0x0
_080CF7B0:
	cmp r3, r2
	bge _080CF7B6
	adds r2, r3, #0x0
_080CF7B6:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r2
	blt _080CF7D0
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080CF7D2
_080CF7D0:
	movs r2, #0x00
_080CF7D2:
	cmp r2, #0x00
	beq _080CF818
	cmp r1, #0x02
	bne _080CF818
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF7EC
	cmp r1, #0x04
	bne _080CF7F2
_080CF7EC:
	ldr r0, _080CF810 @ =0x080D2DA5
	mov r3, r9
	str r0, [r3, #0x4C]
_080CF7F2:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF806
	cmp r1, #0x04
	beq _080CF806
	b _080CFB24
_080CF806:
	ldr r0, _080CF814 @ =0x080CFCCD
	str r0, [r6, #0x4C]
	b _080CFB24
_080CF80C: .4byte 0x00007FFF
_080CF810: .4byte sub_80D2DA4
_080CF814: .4byte sub_80CFCCC
_080CF818:
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	ble _080CF878
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF82C
	movs r1, #0x00
_080CF82C:
	ldr r0, _080CF9D8 @ =0x00007FFF
	cmp r1, r0
	ble _080CF834
	adds r1, r0, #0x0
_080CF834:
	mov r0, r9
	adds r0, #0xAC
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r1
	bgt _080CF84E
	mov r0, r9
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF850
_080CF84E:
	movs r2, #0x00
_080CF850:
	cmp r2, #0x00
	beq _080CF878
	mov r1, r9
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080CF878
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF874
	cmp r1, #0x04
	bne _080CF878
_080CF874:
	ldr r0, _080CF9DC @ =0x080CE1B5
	str r0, [r6, #0x4C]
_080CF878:
	mov r0, r9
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CF888
	b _080CFB24
_080CF888:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	mov r2, r9
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CF9E0 @ =0x0413428C
	str r0, [sp, #0x000]
	mov r0, r9
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	mov r3, r9
	ldrh r0, [r3, #0x24]
	adds r0, #0x01
	strh r0, [r3, #0x24]
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bgt _080CF8E2
	ldr r2, _080CF9E4 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CF918
_080CF8E2:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CF8EA
	adds r1, #0xFF
_080CF8EA:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CF900
	adds r2, #0xFF
_080CF900:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	movs r0, #0x6A
	movs r3, #0x00
	bl sub_80DF024
_080CF918:
	mov r0, r9
	bl sub_807C298
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080CF926
	b _080CFB24
_080CF926:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	ble _080CF92E
	b _080CFB24
_080CF92E:
	ldr r0, [r7, #0x28]
	ldr r3, _080CF9E4 @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bne _080CF950
	adds r0, r7, #0x0
	bl sub_8086700
_080CF950:
	mov r1, r8
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CF964
	cmp r2, #0x04
	bne _080CF9A8
_080CF964:
	mov r5, r8
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF974
	adds r0, #0xFF
_080CF974:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF982
	adds r0, #0xFF
_080CF982:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF990
	adds r0, #0xFF
_080CF990:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	mov r0, r8
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	mov r0, r8
	bl sub_80880C4
_080CF9A8:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF9B6
	cmp r1, #0x04
	bne _080CFA2C
_080CF9B6:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CF9EC
	ldr r2, _080CF9E8 @ =0x00002002
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CF9F8
	.byte 0x00, 0x00
_080CF9D8: .4byte 0x00007FFF
_080CF9DC: .4byte sub_80CE1B4
_080CF9E0: .4byte 0x0413428C
_080CF9E4: .4byte 0x00000111
_080CF9E8: .4byte 0x00002002
_080CF9EC:
	ldr r2, _080CFAC8 @ =0x0000204F
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CF9F8:
	mov r5, r8
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	mov r0, r8
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080CFA10
	movs r2, #0x01
_080CFA10:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFA2C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CFA3A
	cmp r2, #0x04
	bne _080CFA46
_080CFA3A:
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	mov r0, r8
	bl sub_808863C
_080CFA46:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CFA5A
	cmp r2, #0x04
	bne _080CFA9C
_080CFA5A:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA68
	adds r0, #0xFF
_080CFA68:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA76
	adds r0, #0xFF
_080CFA76:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA84
	adds r0, #0xFF
_080CFA84:
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
_080CFA9C:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFAAA
	cmp r1, #0x04
	bne _080CFB0C
_080CFAAA:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CFAD0
	ldr r2, _080CFACC @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CFADC
_080CFAC8: .4byte 0x0000204F
_080CFACC: .4byte 0x00002002
_080CFAD0:
	ldr r2, _080CFB34 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CFADC:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080CFAF2
	movs r2, #0x01
_080CFAF2:
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
_080CFB0C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CFB1A
	cmp r2, #0x04
	bne _080CFB24
_080CFB1A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CFB24:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CFB34: .4byte 0x0000204F
	thumb_func_start sub_80CFB38
sub_80CFB38:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CFBC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x10]
	movs r2, #0xE6
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x10]
	movs r3, #0x1A
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080CFB5C
	adds r0, #0xFF
_080CFB5C:
	asrs r0, r0, #0x08
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x14]
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080CFB72
	adds r0, #0xFF
_080CFB72:
	asrs r0, r0, #0x08
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x18]
	muls r0, r2
	movs r2, #0x82
	lsls r2, r2, #0x0C
	adds r1, r0, r2
	cmp r1, #0x00
	bge _080CFB88
	adds r2, #0xFF
	adds r1, r0, r2
_080CFB88:
	asrs r1, r1, #0x08
	str r1, [r5, #0x18]
	ldr r0, [r5, #0x40]
	adds r0, #0x80
	cmp r0, r1
	blt _080CFC56
	movs r0, #0x90
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r5, #0x18]
	ldr r1, _080CFBC4 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r5, #0x18]
_080CFBA8:
	ldr r4, [r4, #0x30]
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080CFBA8
	cmp r5, r4
	beq _080CFBC8
	adds r0, r5, #0x0
	bl sub_807C298
	adds r5, r4, #0x0
	b _080CFBD0
	.byte 0x00, 0x00
_080CFBC0: .4byte 0x03000FD8
_080CFBC4: .4byte 0xFFFFFD00
_080CFBC8:
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
_080CFBD0:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r3, r0, #0x1
	str r3, [r1, #0x00]
	movs r1, #0x01
	adds r0, r3, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080CFBF0
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0A
	bls _080CFC0C
_080CFBF0:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFC02
	cmp r1, #0x04
	bne _080CFC56
_080CFC02:
	ldr r0, _080CFC08 @ =0x080CFC6D
	b _080CFC54
	.byte 0x00, 0x00
_080CFC08: .4byte sub_80CFC6C
_080CFC0C:
	ldr r2, _080CFC5C @ =0x03001038
	ldr r0, _080CFC60 @ =0x0819832C
	ldr r1, _080CFC64 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	movs r1, #0x03
	bl _call_via_r2
	adds r3, r5, #0x0
	adds r3, #0x78
	lsls r0, r0, #0x05
	ldrb r2, [r3, #0x00]
	movs r1, #0x1F
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r5, #0x0
	movs r2, #0x00
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
	ldr r0, _080CFC68 @ =0x080D2D6D
_080CFC54:
	str r0, [r5, #0x4C]
_080CFC56:
	pop {r4, r5}
	pop {r0}
	bx r0
_080CFC5C: .4byte 0x03001038
_080CFC60: .4byte 0x0819832C
_080CFC64: .4byte 0x08198220
_080CFC68: .4byte sub_80D2D6C
	thumb_func_start sub_80CFC6C
sub_80CFC6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFC80
	cmp r1, #0x04
	bne _080CFCB0
_080CFC80:
	ldr r2, _080CFCBC @ =0x03001038
	ldr r0, _080CFCC0 @ =0x0819832C
	ldr r1, _080CFCC4 @ =0x08198220
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
_080CFCB0:
	ldr r0, _080CFCC8 @ =0x080D2D4D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CFCBC: .4byte 0x03001038
_080CFCC0: .4byte 0x0819832C
_080CFCC4: .4byte 0x08198220
_080CFCC8: .4byte sub_80D2D4C
	thumb_func_start sub_80CFCCC
sub_80CFCCC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r3, _080CFD78 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFCF8
	cmp r1, #0x04
	bne _080CFD44
_080CFCF8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CFD00
	adds r1, #0xFF
_080CFD00:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CFD16
	adds r2, #0xFF
_080CFD16:
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
	movs r1, #0x14
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080CFD44:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFD56
	cmp r1, #0x04
	bne _080CFD98
_080CFD56:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CFD7C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080CFD88
	.byte 0x00, 0x00
_080CFD78: .4byte 0x03000FD8
_080CFD7C:
	ldr r2, _080CFDB0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080CFD88:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CFD98:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080CFDB4 @ =0x080CFDB9
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CFDB0: .4byte 0x0000204D
_080CFDB4: .4byte sub_80CFDB8
	thumb_func_start sub_80CFDB8
sub_80CFDB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080CFE78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r7, [r0, #0x74]
	adds r5, r7, #0x0
	adds r5, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CFE6C
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x65
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFE00
	cmp r1, #0x04
	bne _080CFE24
_080CFE00:
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
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
_080CFE24:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFE36
	cmp r1, #0x04
	bne _080CFE5C
_080CFE36:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFE5C:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080CFE7C @ =0x080CFE81
	mov r1, r8
	str r0, [r1, #0x4C]
_080CFE6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CFE78: .4byte 0x03000FD8
_080CFE7C: .4byte sub_80CFE80
	thumb_func_start sub_80CFE80
sub_80CFE80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CFEC4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r5, r1, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r4, r1, #0x0
	adds r4, #0xA8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _080CFECC
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	beq _080CFEAA
	b _080D001C
_080CFEAA:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFEBE
	cmp r1, #0x04
	beq _080CFEBE
	b _080D001C
_080CFEBE:
	ldr r0, _080CFEC8 @ =0x080D15F5
	str r0, [r5, #0x4C]
	b _080D001C
_080CFEC4: .4byte 0x03000FD8
_080CFEC8: .4byte sub_80D15F4
_080CFECC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	ldr r1, _080D0024 @ =0x0000208A
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	movs r1, #0xE0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	ldr r0, [r5, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	strh r0, [r1, #0x0E]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF2A
	cmp r1, #0x04
	bne _080CFF42
_080CFF2A:
	ldr r2, _080D0028 @ =0x00002092
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFF42:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF54
	cmp r1, #0x04
	bne _080CFF70
_080CFF54:
	ldr r2, _080D002C @ =0x00002036
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
_080CFF70:
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF8E
	cmp r1, #0x04
	bne _080CFFAA
_080CFF8E:
	ldr r2, _080D0030 @ =0x00002054
	adds r0, r6, #0x0
	movs r1, #0x00
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
_080CFFAA:
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFFBE
	cmp r1, #0x04
	bne _080D000C
_080CFFBE:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080CFFC6
	adds r0, #0xFF
_080CFFC6:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080CFFDE
	adds r2, #0xFF
_080CFFDE:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0C
	bl sub_808843C
	ldr r0, [r5, #0x30]
	movs r1, #0x64
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x03
	bl sub_8088164
_080D000C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D0034 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r0, _080D0038 @ =0x080D003D
	str r0, [r7, #0x4C]
_080D001C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D0024: .4byte 0x0000208A
_080D0028: .4byte 0x00002092
_080D002C: .4byte 0x00002036
_080D0030: .4byte 0x00002054
_080D0034: .4byte 0x00000FFF
_080D0038: .4byte sub_80D003C
	thumb_func_start sub_80D003C
sub_80D003C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080D015C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r8, r1
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r1, r0, #0x03
	mov r4, r8
	subs r4, r4, r1
	mov r12, r4
	lsls r0, r0, #0x02
	subs r0, r0, r2
	lsls r0, r0, #0x01
	mov r1, r8
	subs r1, r1, r0
	mov r10, r1
	mov r9, r10
	lsls r0, r2, #0x03
	adds r0, r0, r2
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	bge _080D00B2
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D00B2:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D00C2
	b _080D0614
_080D00C2:
	mov r1, r12
	cmp r1, #0x00
	bge _080D00CA
	movs r1, #0x00
_080D00CA:
	ldr r0, _080D0160 @ =0x00007FFF
	cmp r1, r0
	ble _080D00D2
	adds r1, r0, #0x0
_080D00D2:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080D00EC
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D00EE
_080D00EC:
	movs r2, #0x00
_080D00EE:
	cmp r2, #0x00
	beq _080D01C8
	ldr r2, _080D015C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080D0164
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0116
	movs r1, #0x80
_080D010A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D010A
_080D0116:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D012A
	movs r1, #0x80
_080D011E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D011E
_080D012A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D013E
	movs r1, #0x80
_080D0132:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0132
_080D013E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D01C0
	movs r1, #0x08
_080D0148:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0152
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0152:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0148
	b _080D01C0
	.byte 0x00, 0x00
_080D015C: .4byte 0x03000FD8
_080D0160: .4byte 0x00007FFF
_080D0164:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D017A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D016E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D016E
_080D017A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0190
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0184:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0184
_080D0190:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D01A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D019A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D019A
_080D01A6:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D01C0
	movs r1, #0x10
_080D01B0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D01BA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D01BA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D01B0
_080D01C0:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D01C8:
	ldr r3, [r5, #0x30]
	mov r1, r9
	mov r2, r8
	cmp r1, #0x00
	bge _080D01D4
	movs r1, #0x00
_080D01D4:
	mov r0, r8
	cmp r0, #0x00
	bge _080D01DC
	movs r2, #0x00
_080D01DC:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D01E6
	adds r1, r0, #0x0
_080D01E6:
	ldr r0, _080D02E0 @ =0x00007FFF
	cmp r2, r0
	ble _080D01EE
	adds r2, r0, #0x0
_080D01EE:
	cmp r2, r1
	bge _080D01F4
	adds r1, r2, #0x0
_080D01F4:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D020E
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D0210
_080D020E:
	movs r1, #0x00
_080D0210:
	cmp r1, #0x00
	bne _080D0216
	b _080D0368
_080D0216:
	movs r4, #0x28
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_807E680
	ldr r0, _080D02E4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D0238
	b _080D0368
_080D0238:
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080D02E8 @ =0x03000FD8
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
	bne _080D034C
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D02EC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0296
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D028A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D028A
_080D0296:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D02AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02A0
_080D02AC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D02C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02B6
_080D02C2:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D0348
	movs r1, #0x10
_080D02CC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D02D6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D02D6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D02CC
	b _080D0348
	.byte 0x00, 0x00
_080D02E0: .4byte 0x00007FFF
_080D02E4: .4byte 0x0300034C
_080D02E8: .4byte 0x03000FD8
_080D02EC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0302
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02F6
_080D0302:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0318
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D030C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D030C
_080D0318:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D032E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0322:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0322
_080D032E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D0348
	movs r1, #0x10
_080D0338:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0342
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0342:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0338
_080D0348:
	bl sub_807F448
_080D034C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D044C @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r0, r2
	strh r0, [r1, #0x00]
_080D0368:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D0378
	b _080D0614
_080D0378:
	mov r1, r8
	cmp r1, #0x00
	bge _080D0380
	movs r1, #0x00
_080D0380:
	ldr r0, _080D0450 @ =0x00007FFF
	cmp r1, r0
	ble _080D0388
	adds r1, r0, #0x0
_080D0388:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D03A2
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D03A4
_080D03A2:
	movs r2, #0x00
_080D03A4:
	cmp r2, #0x00
	bne _080D03AA
	b _080D04C0
_080D03AA:
	ldr r4, _080D0454 @ =0x03000FD8
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
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D044C @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D0458
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0402
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D03F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D03F6
_080D0402:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0418
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D040C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D040C
_080D0418:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D042E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0422:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0422
_080D042E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D04B4
	movs r1, #0x10
_080D0438:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0442
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0442:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0438
	b _080D04B4
	.byte 0x00, 0x00
_080D044C: .4byte 0x00000FFF
_080D0450: .4byte 0x00007FFF
_080D0454: .4byte 0x03000FD8
_080D0458:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D046E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0462:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0462
_080D046E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0484
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0478:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0478
_080D0484:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D049A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D048E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D048E
_080D049A:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D04B4
	movs r1, #0x10
_080D04A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D04AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D04AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D04A4
_080D04B4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080D0614
_080D04C0:
	ldr r0, [r5, #0x30]
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	ble _080D04CE
	b _080D0614
_080D04CE:
	ldr r0, _080D0594 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D04DC
	b _080D0614
_080D04DC:
	ldr r2, _080D0598 @ =0x03000FD8
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
	ldr r3, [r2, #0x00]
	ldrb r0, [r3, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080D050C
	b _080D0614
_080D050C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D059C @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	mov r9, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	mov r2, r9
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D05A0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D054C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0540:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0540
_080D054C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0562
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0556:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0556
_080D0562:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D0578
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D056C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D056C
_080D0578:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D05FC
	movs r1, #0x10
_080D0582:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D058C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D058C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0582
	b _080D05FC
_080D0594: .4byte 0x0300034C
_080D0598: .4byte 0x03000FD8
_080D059C: .4byte 0x00000FFF
_080D05A0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D05B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05AA
_080D05B6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D05CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05C0
_080D05CC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D05E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05D6
_080D05E2:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D05FC
	movs r1, #0x10
_080D05EC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D05F6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D05F6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D05EC
_080D05FC:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D0614:
	ldr r1, [r5, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r4, r0, #0x0C
	adds r3, r1, #0x0
	cmp r4, #0x00
	beq _080D06C4
	mov r1, r10
	mov r2, r8
	cmp r1, #0x00
	bge _080D062E
	movs r1, #0x00
_080D062E:
	cmp r2, #0x00
	bge _080D0634
	movs r2, #0x00
_080D0634:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D063E
	adds r1, r0, #0x0
_080D063E:
	ldr r0, _080D0690 @ =0x00007FFF
	cmp r2, r0
	ble _080D0646
	adds r2, r0, #0x0
_080D0646:
	cmp r2, r1
	bge _080D064C
	adds r1, r2, #0x0
_080D064C:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r1
	blt _080D0666
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D0668
_080D0666:
	movs r1, #0x00
_080D0668:
	cmp r1, #0x00
	beq _080D06C4
	cmp r4, #0x02
	bne _080D06C4
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	bgt _080D0694
	adds r0, #0x01
	str r0, [r1, #0x00]
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	b _080D06A2
	.byte 0x00, 0x00
_080D0690: .4byte 0x00007FFF
_080D0694:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D06A2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D06BA
	cmp r1, #0x04
	bne _080D0774
_080D06BA:
	ldr r0, _080D06C0 @ =0x080D0C85
	b _080D0772
	.byte 0x00, 0x00
_080D06C0: .4byte sub_80D0C84
_080D06C4:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D0774
	movs r0, #0x82
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x30]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0726
	cmp r1, #0x04
	bne _080D0740
_080D0726:
	ldr r2, _080D0784 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r4, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D0740:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0752
	cmp r1, #0x04
	bne _080D076E
_080D0752:
	ldr r2, _080D0788 @ =0x00002065
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
_080D076E:
	ldr r0, _080D078C @ =0x080D0791
	ldr r2, [sp, #0x004]
_080D0772:
	str r0, [r2, #0x4C]
_080D0774:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D0784: .4byte 0x00002036
_080D0788: .4byte 0x00002065
_080D078C: .4byte sub_80D0790
	thumb_func_start sub_80D0790
sub_80D0790:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D085C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r6, [r1, #0x74]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D0854
	ldr r0, _080D0860 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D07CE
	cmp r1, #0x04
	bne _080D07E6
_080D07CE:
	ldr r2, _080D0864 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D07E6:
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r6, [r4, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0800
	cmp r1, #0x04
	bne _080D0850
_080D0800:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D0808
	adds r1, #0xFF
_080D0808:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080D081E
	adds r0, #0xFF
_080D081E:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080D0834
	adds r3, #0xFF
_080D0834:
	asrs r3, r3, #0x08
	adds r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x30]
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080D0850:
	ldr r0, _080D0868 @ =0x080D086D
	str r0, [r7, #0x4C]
_080D0854:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D085C: .4byte 0x03000FD8
_080D0860: .4byte 0x0000011F
_080D0864: .4byte 0x0000204D
_080D0868: .4byte sub_80D086C
	thumb_func_start sub_80D086C
sub_80D086C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D08E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x30]
	bl sub_8087EFC
	ldr r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D08E2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D08AA
	cmp r1, #0x04
	bne _080D08C6
_080D08AA:
	ldr r2, _080D08EC @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x05
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
_080D08C6:
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D08DA
	cmp r1, #0x04
	bne _080D08DE
_080D08DA:
	ldr r0, _080D08F0 @ =0x080D0AF9
	str r0, [r2, #0x4C]
_080D08DE:
	ldr r0, _080D08F4 @ =0x080D08F9
	str r0, [r6, #0x4C]
_080D08E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D08E8: .4byte 0x03000FD8
_080D08EC: .4byte 0x00002036
_080D08F0: .4byte sub_80D0AF8
_080D08F4: .4byte sub_80D08F8
	thumb_func_start sub_80D08F8
sub_80D08F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D09B0 @ =0x03000FD8
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
	bne _080D091A
	b _080D0AEC
_080D091A:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D0922
	b _080D0AEC
_080D0922:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0940
	cmp r1, #0x04
	bne _080D097E
_080D0940:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D094E
	adds r0, #0xFF
_080D094E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D095C
	adds r0, #0xFF
_080D095C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D096A
	adds r0, #0xFF
_080D096A:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D097E:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D0992
	cmp r2, #0x04
	bne _080D09F4
_080D0992:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D09B8
	ldr r2, _080D09B4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D09C4
_080D09B0: .4byte 0x03000FD8
_080D09B4: .4byte 0x00002002
_080D09B8:
	ldr r2, _080D0A90 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D09C4:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D09DA
	movs r2, #0x01
_080D09DA:
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
_080D09F4:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D0A02
	cmp r2, #0x04
	bne _080D0A0C
_080D0A02:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D0A0C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D0A20
	cmp r2, #0x04
	bne _080D0A62
_080D0A20:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D0A2E
	adds r0, #0xFF
_080D0A2E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D0A3C
	adds r0, #0xFF
_080D0A3C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D0A4A
	adds r0, #0xFF
_080D0A4A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D0A62:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0A70
	cmp r1, #0x04
	bne _080D0AD4
_080D0A70:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D0A98
	ldr r2, _080D0A94 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D0AA4
	.byte 0x00, 0x00
_080D0A90: .4byte 0x0000204F
_080D0A94: .4byte 0x00002002
_080D0A98:
	ldr r2, _080D0AF4 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D0AA4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D0ABA
	movs r2, #0x01
_080D0ABA:
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
_080D0AD4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D0AE2
	cmp r2, #0x04
	bne _080D0AEC
_080D0AE2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D0AEC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D0AF4: .4byte 0x0000204F
	thumb_func_start sub_80D0AF8
sub_80D0AF8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D0B98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r7, #0x2C]
	mov r12, r0
	ldr r6, [r4, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0B20
	cmp r1, #0x04
	bne _080D0B8A
_080D0B20:
	mov r0, r12
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _080D0B2A
	adds r1, #0xFF
_080D0B2A:
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
	bge _080D0B42
	adds r0, #0xFF
_080D0B42:
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
	bge _080D0B5A
	adds r3, #0xFF
_080D0B5A:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x30]
	movs r1, #0x20
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x04
	bl sub_8088164
_080D0B8A:
	ldr r0, _080D0B9C @ =0x080D0BA1
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D0B98: .4byte 0x03000FD8
_080D0B9C: .4byte sub_80D0BA0
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
	thumb_func_start sub_80D2D28
sub_80D2D28:
	push {lr}
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80D2D34
sub_80D2D34:
	push {lr}
	ldr r0, _080D2D48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	ldr r0, [r0, #0x38]
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D2D48: .4byte 0x03000FD8
	thumb_func_start sub_80D2D4C
sub_80D2D4C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D2D66
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080D2D66:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80D2D6C
sub_80D2D6C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2D9E
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080D2D9E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80D2DA4
sub_80D2DA4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080D2DE8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r2, r1, #0x0
	adds r2, #0x08
	ldr r5, [r2, #0x10]
	ldr r3, _080D2DEC @ =0xFFFFF800
	adds r0, r5, r3
	ldr r3, [r4, #0x10]
	cmp r3, r0
	blt _080D2DDE
	adds r0, r1, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r2, #0x18]
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bge _080D2DF0
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r5, r1
	cmp r0, r3
	bge _080D2DF0
_080D2DDE:
	adds r0, r4, #0x0
	bl sub_8087CE4
	b _080D2DFE
	.byte 0x00, 0x00
_080D2DE8: .4byte 0x03000FD8
_080D2DEC: .4byte 0xFFFFF800
_080D2DF0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _080D2E04 @ =0x080CFB39
	str r0, [r4, #0x4C]
_080D2DFE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2E04: .4byte sub_80CFB38
	thumb_func_start sub_80D2E08
sub_80D2E08:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D2E70 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2E6A
	ldr r0, [r2, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2E4A
	cmp r1, #0x04
	bne _080D2E66
_080D2E4A:
	ldr r2, _080D2E74 @ =0x00002009
	adds r0, r4, #0x0
	movs r1, #0x00
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
_080D2E66:
	ldr r0, _080D2E78 @ =0x080CEDC1
	str r0, [r6, #0x4C]
_080D2E6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D2E70: .4byte 0x03000FD8
_080D2E74: .4byte 0x00002009
_080D2E78: .4byte sub_80CEDC0
	thumb_func_start sub_80D2E7C
sub_80D2E7C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D2EE4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2EDE
	ldr r0, [r2, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2EBE
	cmp r1, #0x04
	bne _080D2EDA
_080D2EBE:
	ldr r2, _080D2EE8 @ =0x00002009
	adds r0, r4, #0x0
	movs r1, #0x00
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
_080D2EDA:
	ldr r0, _080D2EEC @ =0x080CDFBD
	str r0, [r6, #0x4C]
_080D2EDE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D2EE4: .4byte 0x03000FD8
_080D2EE8: .4byte 0x00002009
_080D2EEC: .4byte sub_80CDFBC
	thumb_func_start sub_80D2EF0
sub_80D2EF0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D2F54 @ =0x03000FD8
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
	beq _080D2F4E
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2F24
	cmp r1, #0x04
	bne _080D2F4A
_080D2F24:
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
_080D2F4A:
	ldr r0, _080D2F58 @ =0x080CD18D
	str r0, [r6, #0x4C]
_080D2F4E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D2F54: .4byte 0x03000FD8
_080D2F58: .4byte sub_80CD18C
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x81, 0x46, 0x1F, 0x4A, 0x83, 0x6A, 0x18, 0x1C
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x08, 0x01, 0x40, 0x1A, 0x80, 0x00, 0x3C, 0x30, 0x11, 0x68
	.byte 0x09, 0x1A, 0x8A, 0x20, 0x40, 0x00, 0x1A, 0x18, 0x48, 0x8D, 0x10, 0x60, 0x17, 0x48, 0x00, 0x68
	.byte 0x05, 0x6F, 0x08, 0x21, 0x49, 0x19, 0x88, 0x46, 0x44, 0x6F, 0x26, 0x1C, 0x08, 0x36, 0x4A, 0x46
	.byte 0xD0, 0x6A, 0xF0, 0x62, 0xC8, 0x62, 0xD1, 0x6E, 0xF1, 0x66, 0x42, 0x46, 0xD1, 0x66, 0x00, 0x23
	.byte 0x03, 0x65, 0x33, 0x65, 0x13, 0x65, 0x02, 0x1C, 0x7C, 0x32, 0x80, 0x21, 0x49, 0x00, 0x11, 0x80
	.byte 0x84, 0x34, 0x21, 0x80, 0x84, 0x35, 0x29, 0x80, 0x09, 0x49, 0x4C, 0x46, 0xE1, 0x64, 0xB3, 0x84
	.byte 0x41, 0x46, 0x8B, 0x84, 0xB4, 0xF7, 0x70, 0xF8, 0x01, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xD8, 0x0F, 0x00, 0x03
	.byte 0xF1, 0x2F, 0x0D, 0x08
	thumb_func_start sub_80D2FF0
sub_80D2FF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080D30D8 @ =0x03000FD8
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r4, [r1, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	movs r0, #0x07
	strb r0, [r1, #0x0E]
	mov r1, r8
	ldr r5, [r1, #0x00]
	ldr r0, _080D30DC @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x47
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	adds r2, #0x49
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x02
	ands r0, r3
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r5, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x0A]
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x53
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D305E
	cmp r1, #0x04
	bne _080D30A4
_080D305E:
	mov r2, r8
	ldr r0, [r2, #0x00]
	movs r4, #0x93
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x40
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x6E
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080D30A4:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D30B8
	cmp r2, #0x04
	bne _080D3120
_080D30B8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D30E4
	ldr r2, _080D30E0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D30F0
	.byte 0x00, 0x00
_080D30D8: .4byte 0x03000FD8
_080D30DC: .4byte 0x03000FF4
_080D30E0: .4byte 0x00002002
_080D30E4:
	ldr r2, _080D31C0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D30F0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080D3106
	movs r2, #0x01
_080D3106:
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
_080D3120:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D312E
	cmp r2, #0x04
	bne _080D3138
_080D312E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D3138:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D314C
	cmp r2, #0x04
	bne _080D3194
_080D314C:
	ldr r5, _080D31C4 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x1E
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x6E
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_080D3194:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D31A2
	cmp r2, #0x04
	bne _080D3208
_080D31A2:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D31CC
	ldr r2, _080D31C8 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D31D8
_080D31C0: .4byte 0x0000204F
_080D31C4: .4byte 0x03000FD8
_080D31C8: .4byte 0x00002002
_080D31CC:
	ldr r2, _080D321C @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D31D8:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080D31EE
	movs r2, #0x01
_080D31EE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D3208:
	ldr r0, _080D3220 @ =0x080D8D59
	mov r5, r9
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D321C: .4byte 0x0000204F
_080D3220: .4byte sub_80D8D58
	thumb_func_start sub_80D3224
sub_80D3224:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D3284 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	ldr r4, [r0, #0x74]
	ldr r5, [r1, #0x54]
	cmp r5, #0x00
	bne _080D327C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3248
	cmp r1, #0x04
	bne _080D3278
_080D3248:
	ldr r2, _080D3288 @ =0x03001038
	ldr r0, _080D328C @ =0x0819832C
	ldr r1, _080D3290 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D3278:
	ldr r0, _080D3294 @ =0x080D3299
	str r0, [r6, #0x4C]
_080D327C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D3284: .4byte 0x03000FD8
_080D3288: .4byte 0x03001038
_080D328C: .4byte 0x0819832C
_080D3290: .4byte 0x08198220
_080D3294: .4byte sub_80D3298
	thumb_func_start sub_80D3298
sub_80D3298:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080D33D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D32C0
	b _080D33CE
_080D32C0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x87
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D32DC
	cmp r1, #0x04
	bne _080D32F8
_080D32DC:
	ldr r2, _080D33DC @ =0x00002055
	adds r0, r7, #0x0
	movs r1, #0x00
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
_080D32F8:
	ldr r1, _080D33E0 @ =0x0000208B
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r5, #0x04
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	strh r0, [r1, #0x0E]
	ldrb r0, [r2, #0x00]
	movs r4, #0x01
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x10]
	movs r1, #0x90
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x18]
	movs r1, #0xE0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r6, r0, #0x0
	ldr r2, _080D33E4 @ =0x000020B9
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0x02
	strh r0, [r1, #0x0E]
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D338E
	cmp r1, #0x04
	bne _080D33BC
_080D338E:
	ldr r2, _080D33E8 @ =0x03001038
	ldr r0, _080D33EC @ =0x0819832C
	ldr r1, _080D33F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x78
	bl _call_via_r2
	adds r1, r7, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080D33BC:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D33F4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D33F8 @ =0x080D33FD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D33CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D33D8: .4byte 0x03000FD8
_080D33DC: .4byte 0x00002055
_080D33E0: .4byte 0x0000208B
_080D33E4: .4byte 0x000020B9
_080D33E8: .4byte 0x03001038
_080D33EC: .4byte 0x0819832C
_080D33F0: .4byte 0x08198220
_080D33F4: .4byte 0x00000FFF
_080D33F8: .4byte sub_80D33FC
	thumb_func_start sub_80D33FC
sub_80D33FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D3520 @ =0x03000FD8
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
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	mov r2, r10
	str r2, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080D3470
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D3470:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D3480
	b _080D39AC
_080D3480:
	mov r1, r12
	cmp r1, #0x00
	bge _080D3488
	movs r1, #0x00
_080D3488:
	ldr r0, _080D3524 @ =0x00007FFF
	cmp r1, r0
	ble _080D3490
	adds r1, r0, #0x0
_080D3490:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D34A6
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D34A8
_080D34A6:
	movs r2, #0x00
_080D34A8:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r9, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080D358C
	ldr r2, _080D3520 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D3528
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D34DC
	movs r1, #0x80
_080D34D0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34D0
_080D34DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D34F0
	movs r1, #0x80
_080D34E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34E4
_080D34F0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D3504
	movs r1, #0x80
_080D34F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34F8
_080D3504:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3584
	movs r1, #0x08
_080D350E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3518
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3518:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D350E
	b _080D3584
_080D3520: .4byte 0x03000FD8
_080D3524: .4byte 0x00007FFF
_080D3528:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D353E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3532:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3532
_080D353E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3554
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3548:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3548
_080D3554:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D356A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D355E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D355E
_080D356A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3584
	movs r1, #0x10
_080D3574:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D357E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D357E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3574
_080D3584:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D358C:
	mov r1, r10
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D3598
	movs r1, #0x00
_080D3598:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D35A2
	adds r1, r0, #0x0
_080D35A2:
	ldr r0, _080D369C @ =0x00007FFF
	cmp r2, r0
	ble _080D35AA
	adds r2, r0, #0x0
_080D35AA:
	cmp r2, r1
	bge _080D35B0
	adds r1, r2, #0x0
_080D35B0:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080D35C8
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D35CA
_080D35C8:
	movs r1, #0x00
_080D35CA:
	cmp r1, #0x00
	bne _080D35D0
	b _080D371C
_080D35D0:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080D36A0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D35F0
	b _080D371C
_080D35F0:
	movs r3, #0x3C
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D36A4 @ =0x03000FD8
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
	bne _080D370A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D36A8
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D3652
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3646:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3646
_080D3652:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3668
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D365C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D365C
_080D3668:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D367E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3672:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3672
_080D367E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3706
	movs r1, #0x10
_080D3688:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3692
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3692:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3688
	b _080D3706
	.byte 0x00, 0x00
_080D369C: .4byte 0x00007FFF
_080D36A0: .4byte 0x0300034C
_080D36A4: .4byte 0x03000FD8
_080D36A8:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D36C0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36B4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36B4
_080D36C0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D36D6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36CA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36CA
_080D36D6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D36EC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36E0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36E0
_080D36EC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3706
	movs r1, #0x10
_080D36F6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3700
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3700:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D36F6
_080D3706:
	bl sub_807F448
_080D370A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D37EC @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D371C:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D3728
	b _080D39AC
_080D3728:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D37F0 @ =0x00007FFF
	cmp r1, r0
	ble _080D3734
	adds r1, r0, #0x0
_080D3734:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D374C
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D374E
_080D374C:
	movs r2, #0x00
_080D374E:
	cmp r2, #0x00
	bne _080D3754
	b _080D3860
_080D3754:
	ldr r3, _080D37F4 @ =0x03000FD8
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
	ldr r0, _080D37EC @ =0x00000FFF
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
	beq _080D37F8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D37A4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3798:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3798
_080D37A4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D37BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D37AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D37AE
_080D37BA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D37D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D37C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D37C4
_080D37D0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3854
	movs r1, #0x10
_080D37DA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D37E4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D37E4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D37DA
	b _080D3854
_080D37EC: .4byte 0x00000FFF
_080D37F0: .4byte 0x00007FFF
_080D37F4: .4byte 0x03000FD8
_080D37F8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D380E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3802:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3802
_080D380E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3824
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3818:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3818
_080D3824:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D383A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D382E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D382E
_080D383A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3854
	movs r1, #0x10
_080D3844:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D384E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D384E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3844
_080D3854:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D39AC
_080D3860:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080D3870
	b _080D39AC
_080D3870:
	ldr r0, _080D392C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D387E
	b _080D39AC
_080D387E:
	ldr r2, _080D3930 @ =0x03000FD8
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
	beq _080D38AE
	b _080D39AC
_080D38AE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D3934 @ =0x00000FFF
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
	beq _080D3938
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D38E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D38D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D38D6
_080D38E2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D38F8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D38EC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D38EC
_080D38F8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D390E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3902:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3902
_080D390E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3994
	movs r1, #0x10
_080D3918:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3922
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3922:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3918
	b _080D3994
	.byte 0x00, 0x00
_080D392C: .4byte 0x0300034C
_080D3930: .4byte 0x03000FD8
_080D3934: .4byte 0x00000FFF
_080D3938:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D394E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3942:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3942
_080D394E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3964
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3958:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3958
_080D3964:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D397A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D396E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D396E
_080D397A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3994
	movs r1, #0x10
_080D3984:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D398E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D398E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3984
_080D3994:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x3C
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D39AC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D3A24
	ldr r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D39C2
	movs r1, #0x00
_080D39C2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D39CC
	adds r1, r0, #0x0
_080D39CC:
	ldr r0, _080D3A18 @ =0x00007FFF
	cmp r2, r0
	ble _080D39D4
	adds r2, r0, #0x0
_080D39D4:
	cmp r2, r1
	bge _080D39DA
	adds r1, r2, #0x0
_080D39DA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D39F4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D39F6
_080D39F4:
	movs r1, #0x00
_080D39F6:
	cmp r1, #0x00
	beq _080D3A24
	cmp r3, #0x01
	ble _080D3A24
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D3A1C @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D3A20 @ =0x080D3FD5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D3B56
	.byte 0x00, 0x00
_080D3A18: .4byte 0x00007FFF
_080D3A1C: .4byte 0x00000FFF
_080D3A20: .4byte sub_80D3FD4
_080D3A24:
	mov r1, r10
	cmp r1, #0x00
	bge _080D3A2C
	movs r1, #0x00
_080D3A2C:
	ldr r0, _080D3B68 @ =0x00007FFF
	cmp r1, r0
	ble _080D3A34
	adds r1, r0, #0x0
_080D3A34:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D3A4E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D3A50
_080D3A4E:
	movs r2, #0x00
_080D3A50:
	cmp r2, #0x00
	beq _080D3A92
	movs r0, #0xAB
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3A74
	cmp r1, #0x04
	bne _080D3A92
_080D3A74:
	ldr r2, _080D3B6C @ =0x0000208B
	adds r0, r3, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D3A92:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	adds r2, r5, #0x0
	adds r2, #0x79
	cmp r0, #0x01
	bne _080D3AA8
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080D3AA8:
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D3B56
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3ADE
	cmp r2, #0x04
	bne _080D3AFA
_080D3ADE:
	ldr r2, _080D3B70 @ =0x00002055
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
_080D3AFA:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3B08
	cmp r2, #0x04
	bne _080D3B50
_080D3B08:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D3B10
	adds r0, #0xFF
_080D3B10:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x14
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D3B2A
	adds r2, #0xFF
_080D3B2A:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
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
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080D3B50:
	ldr r0, _080D3B74 @ =0x080D3B79
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080D3B56:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D3B68: .4byte 0x00007FFF
_080D3B6C: .4byte 0x0000208B
_080D3B70: .4byte 0x00002055
_080D3B74: .4byte sub_80D3B78
	thumb_func_start sub_80D3B78
sub_80D3B78:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080D3C70 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D3C60
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3BBE
	cmp r1, #0x04
	bne _080D3BD8
_080D3BBE:
	ldr r2, _080D3C74 @ =0x00002037
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D3BD8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3BEC
	cmp r2, #0x04
	bne _080D3C04
_080D3BEC:
	ldr r2, _080D3C78 @ =0x00002055
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D3C04:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3C12
	cmp r2, #0x04
	bne _080D3C5A
_080D3C12:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080D3C1A
	adds r0, #0xFF
_080D3C1A:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0A
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080D3C34
	adds r2, #0xFF
_080D3C34:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
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
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080D3C5A:
	ldr r0, _080D3C7C @ =0x080D3C81
	mov r1, r9
	str r0, [r1, #0x4C]
_080D3C60:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D3C70: .4byte 0x03000FD8
_080D3C74: .4byte 0x00002037
_080D3C78: .4byte 0x00002055
_080D3C7C: .4byte sub_80D3C80
	thumb_func_start sub_80D3C80
sub_80D3C80:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D3DB4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r4, #0x08
	ldr r7, [r0, #0x74]
	adds r5, r7, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x3C]
	subs r1, r1, r0
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x40]
	subs r1, r1, r0
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r7, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D3DA6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r7, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D3DB8 @ =0x0801808D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D3D28
	ldr r2, _080D3DBC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D3D5E
_080D3D28:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D3D30
	adds r1, #0xFF
_080D3D30:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D3D46
	adds r2, #0xFF
_080D3D46:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D3DC0 @ =0x000006C4
	str r6, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D3D5E:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3D70
	cmp r1, #0x04
	bne _080D3DA0
_080D3D70:
	ldr r2, _080D3DC4 @ =0x03001038
	ldr r0, _080D3DC8 @ =0x0819832C
	ldr r1, _080D3DCC @ =0x08198220
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
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D3DA0:
	ldr r0, _080D3DD0 @ =0x080D3DD5
	mov r1, r8
	str r0, [r1, #0x4C]
_080D3DA6:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D3DB4: .4byte 0x03000FD8
_080D3DB8: .4byte 0x0801808D
_080D3DBC: .4byte 0x00000111
_080D3DC0: .4byte 0x000006C4
_080D3DC4: .4byte 0x03001038
_080D3DC8: .4byte 0x0819832C
_080D3DCC: .4byte 0x08198220
_080D3DD0: .4byte sub_80D3DD4
	thumb_func_start sub_80D3DD4
sub_80D3DD4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D3E8C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D3DFC
	b _080D3FC8
_080D3DFC:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3E1A
	cmp r1, #0x04
	bne _080D3E58
_080D3E1A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3E28
	adds r0, #0xFF
_080D3E28:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3E36
	adds r0, #0xFF
_080D3E36:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3E44
	adds r0, #0xFF
_080D3E44:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D3E58:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3E6C
	cmp r2, #0x04
	bne _080D3ED0
_080D3E6C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D3E94
	ldr r2, _080D3E90 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D3EA0
	.byte 0x00, 0x00
_080D3E8C: .4byte 0x03000FD8
_080D3E90: .4byte 0x00002002
_080D3E94:
	ldr r2, _080D3F6C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D3EA0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D3EB6
	movs r2, #0x01
_080D3EB6:
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
_080D3ED0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3EDE
	cmp r2, #0x04
	bne _080D3EE8
_080D3EDE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D3EE8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3EFC
	cmp r2, #0x04
	bne _080D3F3E
_080D3EFC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3F0A
	adds r0, #0xFF
_080D3F0A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3F18
	adds r0, #0xFF
_080D3F18:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3F26
	adds r0, #0xFF
_080D3F26:
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
_080D3F3E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3F4C
	cmp r1, #0x04
	bne _080D3FB0
_080D3F4C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D3F74
	ldr r2, _080D3F70 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D3F80
	.byte 0x00, 0x00
_080D3F6C: .4byte 0x0000204F
_080D3F70: .4byte 0x00002002
_080D3F74:
	ldr r2, _080D3FD0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D3F80:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D3F96
	movs r2, #0x01
_080D3F96:
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
_080D3FB0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3FBE
	cmp r2, #0x04
	bne _080D3FC8
_080D3FBE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D3FC8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D3FD0: .4byte 0x0000204F
	thumb_func_start sub_80D3FD4
sub_80D3FD4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D404C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4008
	cmp r1, #0x04
	bne _080D4024
_080D4008:
	ldr r2, _080D4050 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x01
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
_080D4024:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D4042
	ldr r2, _080D4054 @ =0x00002095
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4042:
	ldr r0, _080D4058 @ =0x080D405D
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D404C: .4byte 0x03000FD8
_080D4050: .4byte 0x00002066
_080D4054: .4byte 0x00002095
_080D4058: .4byte sub_80D405C
	thumb_func_start sub_80D405C
sub_80D405C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D414C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D4084
	b _080D41BA
_080D4084:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D40A0
	cmp r1, #0x04
	bne _080D40BC
_080D40A0:
	ldr r2, _080D4150 @ =0x00002066
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
_080D40BC:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D40DA
	ldr r2, _080D4154 @ =0x00002095
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D40DA:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D40EC
	cmp r1, #0x04
	bne _080D41A8
_080D40EC:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D40F4
	adds r1, #0xFF
_080D40F4:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080D410A
	adds r0, #0xFF
_080D410A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080D4120
	adds r3, #0xFF
_080D4120:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x0C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D4158
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D4168
_080D414C: .4byte 0x03000FD8
_080D4150: .4byte 0x00002066
_080D4154: .4byte 0x00002095
_080D4158:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D4168:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D4170
	adds r0, #0xFF
_080D4170:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D41C8 @ =0x03001038
	ldr r0, _080D41CC @ =0x0819832C
	ldr r1, _080D41D0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D418E
	adds r1, #0x3F
_080D418E:
	asrs r1, r1, #0x06
	adds r1, #0x20
	adds r0, r5, #0x0
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8088164
_080D41A8:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D41D4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D41D8 @ =0x080D41DD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D41BA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D41C8: .4byte 0x03001038
_080D41CC: .4byte 0x0819832C
_080D41D0: .4byte 0x08198220
_080D41D4: .4byte 0x00000FFF
_080D41D8: .4byte sub_80D41DC
	thumb_func_start sub_80D41DC
sub_80D41DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080D4334 @ =0x03000FD8
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r1, [sp, #0x004]
	ldr r7, [r1, #0x2C]
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r10, r2
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	mov r3, r8
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	mov r12, r0
	ands r0, r1
	cmp r0, #0x00
	bne _080D422C
	b _080D48A8
_080D422C:
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r3, r0, r3
	str r3, [sp, #0x00C]
	str r3, [sp, #0x008]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080D4270
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D4270:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080D4280
	b _080D47FC
_080D4280:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0A]
	mov r0, r12
	ands r0, r1
	mov r8, r3
	cmp r0, #0x00
	bne _080D4292
	b _080D43A0
_080D4292:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D429A
	movs r1, #0x00
_080D429A:
	ldr r0, _080D4338 @ =0x00007FFF
	cmp r1, r0
	ble _080D42A2
	adds r1, r0, #0x0
_080D42A2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D42BA
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D42BC
_080D42BA:
	movs r2, #0x00
_080D42BC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r9, r1
	cmp r2, #0x00
	beq _080D43A0
	ldr r2, _080D4334 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D433C
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D42F0
	movs r1, #0x4C
_080D42E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D42E4
_080D42F0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4304
	movs r1, #0x4C
_080D42F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D42F8
_080D4304:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4318
	movs r1, #0x4C
_080D430C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D430C
_080D4318:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4398
	movs r1, #0x04
_080D4322:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D432C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D432C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4322
	b _080D4398
_080D4334: .4byte 0x03000FD8
_080D4338: .4byte 0x00007FFF
_080D433C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4352
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4346:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4346
_080D4352:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4368
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D435C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D435C
_080D4368:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D437E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4372:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4372
_080D437E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4398
	movs r1, #0x10
_080D4388:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4392
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4392:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4388
_080D4398:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D43A0:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080D43AA
	movs r1, #0x00
_080D43AA:
	mov r3, r10
	cmp r3, #0x00
	bge _080D43B2
	movs r2, #0x00
_080D43B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D43BC
	adds r1, r0, #0x0
_080D43BC:
	ldr r0, _080D440C @ =0x00007FFF
	cmp r2, r0
	ble _080D43C4
	adds r2, r0, #0x0
_080D43C4:
	cmp r2, r1
	bge _080D43CA
	adds r1, r2, #0x0
_080D43CA:
	mov r4, r8
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D43E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D43E4
_080D43E2:
	movs r1, #0x00
_080D43E4:
	cmp r1, #0x00
	bne _080D43EA
	b _080D4562
_080D43EA:
	ldr r0, _080D4410 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080D4414
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_807E680
	b _080D442C
_080D440C: .4byte 0x00007FFF
_080D4410: .4byte 0x03000FD8
_080D4414:
	cmp r1, #0x40
	bne _080D442C
	movs r1, #0xFF
	lsls r1, r1, #0x18
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_807E680
_080D442C:
	ldr r0, _080D44E4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D443A
	b _080D4562
_080D443A:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	movs r2, #0x08
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080D44E8 @ =0x03000FD8
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
	bne _080D454E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D44EC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D449C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4490:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4490
_080D449C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D44B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44A6
_080D44B2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D44C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44BC
_080D44C8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D454A
	movs r1, #0x10
_080D44D2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D44DC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D44DC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D44D2
	b _080D454A
_080D44E4: .4byte 0x0300034C
_080D44E8: .4byte 0x03000FD8
_080D44EC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4504
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44F8
_080D4504:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D451A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D450E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D450E
_080D451A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4530
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4524:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4524
_080D4530:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D454A
	movs r1, #0x10
_080D453A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4544
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4544:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D453A
_080D454A:
	bl sub_807F448
_080D454E:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080D4638 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080D4562:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D456E
	b _080D47FC
_080D456E:
	mov r1, r10
	cmp r1, #0x00
	bge _080D4576
	movs r1, #0x00
_080D4576:
	ldr r0, _080D463C @ =0x00007FFF
	cmp r1, r0
	ble _080D457E
	adds r1, r0, #0x0
_080D457E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4596
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4598
_080D4596:
	movs r2, #0x00
_080D4598:
	cmp r2, #0x00
	bne _080D459E
	b _080D46AC
_080D459E:
	ldr r3, _080D4640 @ =0x03000FD8
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
	ldr r0, _080D4638 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r9
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4644
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D45EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D45E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D45E2
_080D45EE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D45F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D45F8
_080D4604:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D461A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D460E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D460E
_080D461A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D46A0
	movs r1, #0x10
_080D4624:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D462E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D462E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4624
	b _080D46A0
	.byte 0x00, 0x00
_080D4638: .4byte 0x00000FFF
_080D463C: .4byte 0x00007FFF
_080D4640: .4byte 0x03000FD8
_080D4644:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D465A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D464E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D464E
_080D465A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4670
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4664:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4664
_080D4670:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D4686
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D467A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D467A
_080D4686:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D46A0
	movs r1, #0x10
_080D4690:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D469A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D469A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4690
_080D46A0:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080D47FC
_080D46AC:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080D46B8
	b _080D47FC
_080D46B8:
	ldr r0, _080D477C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D46CE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D46CE
	b _080D47FC
_080D46CE:
	ldr r2, _080D4780 @ =0x03000FD8
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
	beq _080D46FE
	b _080D47FC
_080D46FE:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4784 @ =0x00000FFF
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
	beq _080D4788
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4732
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4726:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4726
_080D4732:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4748
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D473C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D473C
_080D4748:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D475E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4752:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4752
_080D475E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D47E4
	movs r1, #0x10
_080D4768:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4772
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4772:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4768
	b _080D47E4
	.byte 0x00, 0x00
_080D477C: .4byte 0x0300034C
_080D4780: .4byte 0x03000FD8
_080D4784: .4byte 0x00000FFF
_080D4788:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D479E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4792:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4792
_080D479E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D47B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D47A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D47A8
_080D47B4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D47CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D47BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D47BE
_080D47CA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D47E4
	movs r1, #0x10
_080D47D4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D47DE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D47DE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D47D4
_080D47E4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x08
	bl sub_807EAE4
_080D47FC:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D4878
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080D4810
	movs r1, #0x00
_080D4810:
	mov r4, r10
	cmp r4, #0x00
	bge _080D4818
	movs r2, #0x00
_080D4818:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D4822
	adds r1, r0, #0x0
_080D4822:
	ldr r0, _080D486C @ =0x00007FFF
	cmp r2, r0
	ble _080D482A
	adds r2, r0, #0x0
_080D482A:
	cmp r2, r1
	bge _080D4830
	adds r1, r2, #0x0
_080D4830:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D484A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D484C
_080D484A:
	movs r1, #0x00
_080D484C:
	cmp r1, #0x00
	beq _080D4878
	cmp r3, #0x01
	ble _080D4878
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080D4870 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D4874 @ =0x080D68B5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D48BA
_080D486C: .4byte 0x00007FFF
_080D4870: .4byte 0x00000FFF
_080D4874: .4byte sub_80D68B4
_080D4878:
	mov r1, r10
	cmp r1, #0x00
	bge _080D4880
	movs r1, #0x00
_080D4880:
	ldr r0, _080D48CC @ =0x00007FFF
	cmp r1, r0
	ble _080D4888
	adds r1, r0, #0x0
_080D4888:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D48A2
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D48A4
_080D48A2:
	movs r2, #0x00
_080D48A4:
	cmp r2, #0x00
	beq _080D48BA
_080D48A8:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D48D0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D48D4 @ =0x080D48D9
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D48BA:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D48CC: .4byte 0x00007FFF
_080D48D0: .4byte 0x00000FFF
_080D48D4: .4byte sub_80D48D8
	thumb_func_start sub_80D48D8
sub_80D48D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080D49FC @ =0x03000FD8
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
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x03
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r0, r0, #0x02
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x00C]
	str r2, [sp, #0x008]
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080D494A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D494A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D495A
	b _080D4E86
_080D495A:
	mov r1, r12
	cmp r1, #0x00
	bge _080D4962
	movs r1, #0x00
_080D4962:
	ldr r0, _080D4A00 @ =0x00007FFF
	cmp r1, r0
	ble _080D496A
	adds r1, r0, #0x0
_080D496A:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4980
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4982
_080D4980:
	movs r2, #0x00
_080D4982:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080D4A68
	ldr r2, _080D49FC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D4A04
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D49B6
	movs r1, #0x4C
_080D49AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49AA
_080D49B6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D49CA
	movs r1, #0x4C
_080D49BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49BE
_080D49CA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D49DE
	movs r1, #0x4C
_080D49D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49D2
_080D49DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4A60
	movs r1, #0x04
_080D49E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D49F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D49F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D49E8
	b _080D4A60
	.byte 0x00, 0x00
_080D49FC: .4byte 0x03000FD8
_080D4A00: .4byte 0x00007FFF
_080D4A04:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4A1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A0E
_080D4A1A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4A30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A24
_080D4A30:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4A46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A3A
_080D4A46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4A60
	movs r1, #0x10
_080D4A50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4A5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4A5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4A50
_080D4A60:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D4A68:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080D4A72
	movs r1, #0x00
_080D4A72:
	mov r3, r9
	cmp r3, #0x00
	bge _080D4A7A
	movs r2, #0x00
_080D4A7A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D4A84
	adds r1, r0, #0x0
_080D4A84:
	ldr r0, _080D4B78 @ =0x00007FFF
	cmp r2, r0
	ble _080D4A8C
	adds r2, r0, #0x0
_080D4A8C:
	cmp r2, r1
	bge _080D4A92
	adds r1, r2, #0x0
_080D4A92:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D4AAA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D4AAC
_080D4AAA:
	movs r1, #0x00
_080D4AAC:
	cmp r1, #0x00
	bne _080D4AB2
	b _080D4BFA
_080D4AB2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D4B7C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D4AD0
	b _080D4BFA
_080D4AD0:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D4B80 @ =0x03000FD8
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
	bne _080D4BE6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4B84
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4B30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B24
_080D4B30:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4B46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B3A
_080D4B46:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4B5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B50
_080D4B5C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4BE2
	movs r1, #0x10
_080D4B66:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4B70
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4B70:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4B66
	b _080D4BE2
_080D4B78: .4byte 0x00007FFF
_080D4B7C: .4byte 0x0300034C
_080D4B80: .4byte 0x03000FD8
_080D4B84:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4B9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B90
_080D4B9C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4BB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4BA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4BA6
_080D4BB2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4BC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4BBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4BBC
_080D4BC8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4BE2
	movs r1, #0x10
_080D4BD2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4BDC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4BDC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4BD2
_080D4BE2:
	bl sub_807F448
_080D4BE6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080D4CD0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080D4BFA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D4C06
	b _080D4E86
_080D4C06:
	mov r1, r9
	cmp r1, #0x00
	bge _080D4C0E
	movs r1, #0x00
_080D4C0E:
	ldr r0, _080D4CD4 @ =0x00007FFF
	cmp r1, r0
	ble _080D4C16
	adds r1, r0, #0x0
_080D4C16:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4C2E
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4C30
_080D4C2E:
	movs r2, #0x00
_080D4C30:
	cmp r2, #0x00
	bne _080D4C36
	b _080D4D44
_080D4C36:
	ldr r3, _080D4CD8 @ =0x03000FD8
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
	ldr r0, _080D4CD0 @ =0x00000FFF
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
	beq _080D4CDC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4C86
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4C7A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4C7A
_080D4C86:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4C9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4C90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4C90
_080D4C9C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4CB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CA6
_080D4CB2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4D38
	movs r1, #0x10
_080D4CBC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4CC6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4CC6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4CBC
	b _080D4D38
	.byte 0x00, 0x00
_080D4CD0: .4byte 0x00000FFF
_080D4CD4: .4byte 0x00007FFF
_080D4CD8: .4byte 0x03000FD8
_080D4CDC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4CF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CE6
_080D4CF2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4D08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CFC
_080D4D08:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4D1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4D12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4D12
_080D4D1E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4D38
	movs r1, #0x10
_080D4D28:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4D32
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4D32:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4D28
_080D4D38:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D4E86
_080D4D44:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080D4D50
	b _080D4E86
_080D4D50:
	ldr r0, _080D4E08 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D4D5E
	b _080D4E86
_080D4D5E:
	ldr r2, _080D4E0C @ =0x03000FD8
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
	bne _080D4E86
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4E10 @ =0x00000FFF
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
	beq _080D4E14
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4DC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DB4
_080D4DC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4DD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DCA
_080D4DD6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4DEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DE0
_080D4DEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4E70
	movs r1, #0x10
_080D4DF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4E00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4E00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4DF6
	b _080D4E70
_080D4E08: .4byte 0x0300034C
_080D4E0C: .4byte 0x03000FD8
_080D4E10: .4byte 0x00000FFF
_080D4E14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4E2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E1E
_080D4E2A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4E40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E34
_080D4E40:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4E56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E4A
_080D4E56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4E70
	movs r1, #0x10
_080D4E60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4E6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4E6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4E60
_080D4E70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D4E86:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D4F00
	ldr r2, [sp, #0x00C]
	mov r1, r9
	cmp r2, #0x00
	bge _080D4E9A
	movs r2, #0x00
_080D4E9A:
	cmp r1, #0x00
	bge _080D4EA0
	movs r1, #0x00
_080D4EA0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D4EAA
	adds r2, r0, #0x0
_080D4EAA:
	ldr r0, _080D4EF4 @ =0x00007FFF
	cmp r1, r0
	ble _080D4EB2
	adds r1, r0, #0x0
_080D4EB2:
	cmp r1, r2
	bge _080D4EB8
	adds r2, r1, #0x0
_080D4EB8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D4ED2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080D4ED4
_080D4ED2:
	movs r2, #0x00
_080D4ED4:
	cmp r2, #0x00
	beq _080D4F00
	cmp r3, #0x01
	ble _080D4F00
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080D4EF8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080D4EFC @ =0x080D55F9
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D512E
_080D4EF4: .4byte 0x00007FFF
_080D4EF8: .4byte 0x00000FFF
_080D4EFC: .4byte sub_80D55F8
_080D4F00:
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080D4FC8
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r2, [r6, #0x18]
	adds r2, r2, r1
	adds r4, r0, #0x0
	cmp r3, r2
	bge _080D4FC8
	ldr r0, [r6, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080D4FA0
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4F3C
	cmp r1, #0x04
	bne _080D4F58
_080D4F3C:
	ldr r2, _080D50C0 @ =0x00002066
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
_080D4F58:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D4F76
	ldr r2, _080D50C4 @ =0x00002095
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4F76:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4F88
	cmp r1, #0x04
	bne _080D4FA0
_080D4F88:
	ldr r2, _080D50C8 @ =0x00002037
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
_080D4FA0:
	ldr r2, _080D50CC @ =0x03001038
	ldr r0, _080D50D0 @ =0x0819832C
	ldr r1, _080D50D4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, [r5, #0x18]
	ldr r1, [r6, #0x18]
	cmp r1, #0x00
	bge _080D4FB6
	adds r1, #0xFF
_080D4FB6:
	asrs r1, r1, #0x08
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r1, r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080D4FC8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D4FD8
	b _080D512E
_080D4FD8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D4FF6
	cmp r2, #0x04
	bne _080D5012
_080D4FF6:
	ldr r2, _080D50C0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x04
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
_080D5012:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5030
	ldr r2, _080D50C4 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5030:
	ldr r3, [r5, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r3, #0x12]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r0, [r2, #0x12]
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x12]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D505C
	cmp r2, #0x04
	bne _080D5128
_080D505C:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080D5064
	adds r0, #0xFF
_080D5064:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r6, r0, #0x0
	subs r6, #0x10
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080D507E
	adds r0, #0xFF
_080D507E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080D5094
	adds r3, #0xFF
_080D5094:
	asrs r3, r3, #0x08
	adds r4, r7, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_808843C
	ldr r0, [r7, #0x28]
	adds r0, #0x08
	cmp r7, r0
	bne _080D50D8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D50E8
	.byte 0x00, 0x00
_080D50C0: .4byte 0x00002066
_080D50C4: .4byte 0x00002095
_080D50C8: .4byte 0x00002037
_080D50CC: .4byte 0x03001038
_080D50D0: .4byte 0x0819832C
_080D50D4: .4byte 0x08198220
_080D50D8:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r7, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D50E8:
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _080D50F0
	adds r0, #0xFF
_080D50F0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D5140 @ =0x03001038
	ldr r0, _080D5144 @ =0x0819832C
	ldr r1, _080D5148 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D510A
	adds r1, #0x3F
_080D510A:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D5128:
	ldr r0, _080D514C @ =0x080D5151
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D512E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D5140: .4byte 0x03001038
_080D5144: .4byte 0x0819832C
_080D5148: .4byte 0x08198220
_080D514C: .4byte sub_80D5150
	thumb_func_start sub_80D5150
sub_80D5150:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D52D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r5, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D51DC
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x08]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	cmp r0, #0xFF
	ble _080D51DC
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D51B6
	cmp r1, #0x04
	bne _080D51DC
_080D51B6:
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
_080D51DC:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D52CC
	ldr r0, [r4, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
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
	ldr r0, _080D52DC @ =0x0483818D
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r4, #0x24]
	adds r0, #0x01
	strh r0, [r4, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bgt _080D5244
	ldr r2, _080D52E0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D527A
_080D5244:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D524C
	adds r1, #0xFF
_080D524C:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D5262
	adds r2, #0xFF
_080D5262:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D52E4 @ =0x000006C4
	str r6, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D527A:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D528C
	cmp r1, #0x04
	bne _080D52A8
_080D528C:
	ldr r2, _080D52E8 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x05
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
_080D52A8:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D52C6
	ldr r2, _080D52EC @ =0x00002095
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D52C6:
	ldr r0, _080D52F0 @ =0x080D52F5
	mov r3, r8
	str r0, [r3, #0x4C]
_080D52CC:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D52D8: .4byte 0x03000FD8
_080D52DC: .4byte 0x0483818D
_080D52E0: .4byte 0x00000111
_080D52E4: .4byte 0x000006C4
_080D52E8: .4byte 0x00002066
_080D52EC: .4byte 0x00002095
_080D52F0: .4byte sub_80D52F4
	thumb_func_start sub_80D52F4
sub_80D52F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D53E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D53E0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D532C
	cmp r1, #0x04
	bne _080D5348
_080D532C:
	ldr r2, _080D53EC @ =0x00002066
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
_080D5348:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D5366
	ldr r2, _080D53F0 @ =0x00002095
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5366:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5378
	cmp r1, #0x04
	bne _080D53D2
_080D5378:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D5380
	adds r0, #0xFF
_080D5380:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D539A
	adds r2, #0xFF
_080D539A:
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
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080D53BE
	adds r0, #0xFF
_080D53BE:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D53D2:
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0xBA
	lsls r1, r1, #0x02
	strh r1, [r0, #0x00]
	ldr r0, _080D53F4 @ =0x080D53F9
	str r0, [r6, #0x4C]
_080D53E0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D53E8: .4byte 0x03000FD8
_080D53EC: .4byte 0x00002066
_080D53F0: .4byte 0x00002095
_080D53F4: .4byte sub_80D53F8
	thumb_func_start sub_80D53F8
sub_80D53F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D54B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D5420
	b _080D55EC
_080D5420:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D543E
	cmp r1, #0x04
	bne _080D547C
_080D543E:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D544C
	adds r0, #0xFF
_080D544C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D545A
	adds r0, #0xFF
_080D545A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D5468
	adds r0, #0xFF
_080D5468:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D547C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5490
	cmp r2, #0x04
	bne _080D54F4
_080D5490:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D54B8
	ldr r2, _080D54B4 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D54C4
	.byte 0x00, 0x00
_080D54B0: .4byte 0x03000FD8
_080D54B4: .4byte 0x00002002
_080D54B8:
	ldr r2, _080D5590 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D54C4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D54DA
	movs r2, #0x01
_080D54DA:
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
_080D54F4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D5502
	cmp r2, #0x04
	bne _080D550C
_080D5502:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D550C:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5520
	cmp r2, #0x04
	bne _080D5562
_080D5520:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D552E
	adds r0, #0xFF
_080D552E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D553C
	adds r0, #0xFF
_080D553C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D554A
	adds r0, #0xFF
_080D554A:
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
_080D5562:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5570
	cmp r1, #0x04
	bne _080D55D4
_080D5570:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D5598
	ldr r2, _080D5594 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D55A4
	.byte 0x00, 0x00
_080D5590: .4byte 0x0000204F
_080D5594: .4byte 0x00002002
_080D5598:
	ldr r2, _080D55F4 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D55A4:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D55BA
	movs r2, #0x01
_080D55BA:
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
_080D55D4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D55E2
	cmp r2, #0x04
	bne _080D55EC
_080D55E2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D55EC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D55F4: .4byte 0x0000204F
	thumb_func_start sub_80D55F8
sub_80D55F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D5704 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080D5610
	adds r1, #0xFF
_080D5610:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080D561A
	adds r2, #0xFF
_080D561A:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080D5624
	adds r3, #0xFF
_080D5624:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080D5708 @ =0x00002F7D
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5640
	cmp r1, #0x04
	bne _080D565C
_080D5640:
	ldr r2, _080D570C @ =0x00002066
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
_080D565C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D567A
	ldr r2, _080D5710 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D567A:
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D569E
	cmp r1, #0x04
	bne _080D56EC
_080D569E:
	ldr r5, _080D5704 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xA0
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x73
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x55
	bl sub_808843C
	movs r0, #0x5C
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080D5714 @ =0x00000433
	adds r0, r6, #0x0
	bl sub_8088164
_080D56EC:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D5718 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D571C @ =0x080D5721
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D5704: .4byte 0x03000FD8
_080D5708: .4byte 0x00002F7D
_080D570C: .4byte 0x00002066
_080D5710: .4byte 0x00002095
_080D5714: .4byte 0x00000433
_080D5718: .4byte 0x00000FFF
_080D571C: .4byte sub_80D5720
	thumb_func_start sub_80D5720
sub_80D5720:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080D58A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D57B0
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r6, #0x08]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	cmp r0, #0xFF
	ble _080D57B0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D578A
	cmp r1, #0x04
	bne _080D57B0
_080D578A:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D57B0:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	negs r0, r0
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r3, r0, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r0, r2, r0
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	mov r9, r0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mov r10, r0
	cmp r1, r9
	bge _080D57F6
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D57F6:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D5806
	b _080D5D22
_080D5806:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080D580E
	movs r2, #0x00
_080D580E:
	ldr r0, _080D58A4 @ =0x00007FFF
	cmp r2, r0
	ble _080D5816
	adds r2, r0, #0x0
_080D5816:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x010]
	cmp r1, r2
	bgt _080D5830
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D5832
_080D5830:
	movs r1, #0x00
_080D5832:
	cmp r1, #0x00
	beq _080D590C
	ldr r2, _080D58A0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D58A8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D585A
	movs r1, #0x80
_080D584E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D584E
_080D585A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D586E
	movs r1, #0x80
_080D5862:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5862
_080D586E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D5882
	movs r1, #0x80
_080D5876:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5876
_080D5882:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5904
	movs r1, #0x08
_080D588C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5896
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5896:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D588C
	b _080D5904
	.byte 0x00, 0x00
_080D58A0: .4byte 0x03000FD8
_080D58A4: .4byte 0x00007FFF
_080D58A8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D58BE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58B2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58B2
_080D58BE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D58D4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58C8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58C8
_080D58D4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D58EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58DE
_080D58EA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5904
	movs r1, #0x10
_080D58F4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D58FE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D58FE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D58F4
_080D5904:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D590C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080D5916
	movs r1, #0x00
_080D5916:
	mov r3, r9
	cmp r3, #0x00
	bge _080D591E
	movs r2, #0x00
_080D591E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D5928
	adds r1, r0, #0x0
_080D5928:
	ldr r0, _080D5A1C @ =0x00007FFF
	cmp r2, r0
	ble _080D5930
	adds r2, r0, #0x0
_080D5930:
	cmp r2, r1
	bge _080D5936
	adds r1, r2, #0x0
_080D5936:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D594C
	ldr r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D594E
_080D594C:
	movs r1, #0x00
_080D594E:
	cmp r1, #0x00
	bne _080D5954
	b _080D5A9C
_080D5954:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D5A20 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D5972
	b _080D5A9C
_080D5972:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D5A24 @ =0x03000FD8
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
	bne _080D5A8A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D5A28
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D59D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59C6
_080D59D2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D59E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59DC
_080D59E8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D59FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59F2
_080D59FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5A86
	movs r1, #0x10
_080D5A08:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5A12
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5A12:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5A08
	b _080D5A86
	.byte 0x00, 0x00
_080D5A1C: .4byte 0x00007FFF
_080D5A20: .4byte 0x0300034C
_080D5A24: .4byte 0x03000FD8
_080D5A28:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D5A40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A34
_080D5A40:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5A56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A4A
_080D5A56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D5A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A60
_080D5A6C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5A86
	movs r1, #0x10
_080D5A76:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5A80
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5A80:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5A76
_080D5A86:
	bl sub_807F448
_080D5A8A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D5B6C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D5A9C:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D5AA8
	b _080D5D22
_080D5AA8:
	mov r1, r9
	cmp r1, #0x00
	bge _080D5AB0
	movs r1, #0x00
_080D5AB0:
	ldr r0, _080D5B70 @ =0x00007FFF
	cmp r1, r0
	ble _080D5AB8
	adds r1, r0, #0x0
_080D5AB8:
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080D5ACE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D5AD0
_080D5ACE:
	movs r2, #0x00
_080D5AD0:
	cmp r2, #0x00
	bne _080D5AD6
	b _080D5BE0
_080D5AD6:
	ldr r3, _080D5B74 @ =0x03000FD8
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
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080D5B6C @ =0x00000FFF
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
	beq _080D5B78
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5B24
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B18
_080D5B24:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5B3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B2E
_080D5B3A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5B50
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B44
_080D5B50:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5BD4
	movs r1, #0x10
_080D5B5A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5B64
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5B64:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5B5A
	b _080D5BD4
_080D5B6C: .4byte 0x00000FFF
_080D5B70: .4byte 0x00007FFF
_080D5B74: .4byte 0x03000FD8
_080D5B78:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5B8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B82
_080D5B8E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5BA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B98
_080D5BA4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5BBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5BAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5BAE
_080D5BBA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5BD4
	movs r1, #0x10
_080D5BC4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5BCE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5BCE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5BC4
_080D5BD4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D5D22
_080D5BE0:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080D5BEC
	b _080D5D22
_080D5BEC:
	ldr r0, _080D5CA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D5BFA
	b _080D5D22
_080D5BFA:
	ldr r2, _080D5CA8 @ =0x03000FD8
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
	bne _080D5D22
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D5CAC @ =0x00000FFF
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
	beq _080D5CB0
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5C5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C50
_080D5C5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5C72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C66
_080D5C72:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5C88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C7C
_080D5C88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5D0C
	movs r1, #0x10
_080D5C92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5C9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5C9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5C92
	b _080D5D0C
_080D5CA4: .4byte 0x0300034C
_080D5CA8: .4byte 0x03000FD8
_080D5CAC: .4byte 0x00000FFF
_080D5CB0:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5CC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CBA
_080D5CC6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5CDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CD0
_080D5CDC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5CF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CE6
_080D5CF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5D0C
	movs r1, #0x10
_080D5CFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5D06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5D06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5CFC
_080D5D0C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D5D22:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D5D9C
	ldr r1, [sp, #0x00C]
	mov r2, r9
	cmp r1, #0x00
	bge _080D5D36
	movs r1, #0x00
_080D5D36:
	cmp r2, #0x00
	bge _080D5D3C
	movs r2, #0x00
_080D5D3C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D5D46
	adds r1, r0, #0x0
_080D5D46:
	ldr r0, _080D5D90 @ =0x00007FFF
	cmp r2, r0
	ble _080D5D4E
	adds r2, r0, #0x0
_080D5D4E:
	cmp r2, r1
	bge _080D5D54
	adds r1, r2, #0x0
_080D5D54:
	mov r4, r10
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, r1
	blt _080D5D6C
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D5D6E
_080D5D6C:
	movs r1, #0x00
_080D5D6E:
	cmp r1, #0x00
	beq _080D5D9C
	cmp r3, #0x01
	ble _080D5D9C
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D5D94 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D5D98 @ =0x080D62D5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D5ED2
	.byte 0x00, 0x00
_080D5D90: .4byte 0x00007FFF
_080D5D94: .4byte 0x00000FFF
_080D5D98: .4byte sub_80D62D4
_080D5D9C:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080D5DA4
	movs r2, #0x00
_080D5DA4:
	ldr r0, _080D5EE4 @ =0x00007FFF
	cmp r2, r0
	ble _080D5DAC
	adds r2, r0, #0x0
_080D5DAC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080D5DC4
	mov r6, r10
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D5DC6
_080D5DC4:
	movs r1, #0x00
_080D5DC6:
	cmp r1, #0x00
	beq _080D5E12
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5DDC
	cmp r1, #0x04
	bne _080D5DF4
_080D5DDC:
	ldr r2, _080D5EE8 @ =0x00002066
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
_080D5DF4:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5E12
	ldr r2, _080D5EEC @ =0x00002095
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5E12:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D5ED2
	ldr r0, _080D5EF0 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5E3E
	cmp r2, #0x04
	bne _080D5E5A
_080D5E3E:
	ldr r2, _080D5EE8 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0A
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
_080D5E5A:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5E78
	ldr r2, _080D5EEC @ =0x00002095
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5E78:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D5E86
	cmp r2, #0x04
	bne _080D5ECC
_080D5E86:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D5E8E
	adds r1, #0xFF
_080D5E8E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D5EA4
	adds r2, #0xFF
_080D5EA4:
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
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8088274
_080D5ECC:
	ldr r0, _080D5EF4 @ =0x080D5EF9
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080D5ED2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D5EE4: .4byte 0x00007FFF
_080D5EE8: .4byte 0x00002066
_080D5EEC: .4byte 0x00002095
_080D5EF0: .4byte 0x0000011F
_080D5EF4: .4byte sub_80D5EF8
	thumb_func_start sub_80D5EF8
sub_80D5EF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080D60AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D5F34
	b _080D609A
_080D5F34:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5F56
	cmp r1, #0x04
	bne _080D5F6E
_080D5F56:
	ldr r2, _080D60B0 @ =0x00002066
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
_080D5F6E:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5F8C
	ldr r2, _080D60B4 @ =0x00002095
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5F8C:
	movs r7, #0x00
	movs r0, #0x76
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xCC
	adds r1, r1, r5
	mov r8, r1
_080D5F9A:
	ldr r0, _080D60AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080D604E
	ldr r0, [r4, #0x28]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D604E
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x1E
	orrs r1, r0
	mov r0, r8
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0xCC
	strh r0, [r1, #0x00]
	ldr r0, _080D60B8 @ =0x0881828D
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
	bgt _080D6018
	ldr r2, _080D60BC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D604E
_080D6018:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D6020
	adds r1, #0xFF
_080D6020:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D6036
	adds r2, #0xFF
_080D6036:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	ldr r0, _080D60C0 @ =0x000006D4
	movs r3, #0x00
	bl sub_80DF024
_080D604E:
	adds r7, #0x01
	cmp r7, #0x05
	ble _080D5F9A
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6064
	cmp r1, #0x04
	bne _080D6094
_080D6064:
	ldr r2, _080D60C4 @ =0x03001038
	ldr r0, _080D60C8 @ =0x0819832C
	ldr r1, _080D60CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
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
_080D6094:
	ldr r0, _080D60D0 @ =0x080D60D5
	mov r2, r10
	str r0, [r2, #0x4C]
_080D609A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D60AC: .4byte 0x03000FD8
_080D60B0: .4byte 0x00002066
_080D60B4: .4byte 0x00002095
_080D60B8: .4byte 0x0881828D
_080D60BC: .4byte 0x00000111
_080D60C0: .4byte 0x000006D4
_080D60C4: .4byte 0x03001038
_080D60C8: .4byte 0x0819832C
_080D60CC: .4byte 0x08198220
_080D60D0: .4byte sub_80D60D4
	thumb_func_start sub_80D60D4
sub_80D60D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D618C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D60FC
	b _080D62C8
_080D60FC:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D611A
	cmp r1, #0x04
	bne _080D6158
_080D611A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6128
	adds r0, #0xFF
_080D6128:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6136
	adds r0, #0xFF
_080D6136:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6144
	adds r0, #0xFF
_080D6144:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D6158:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D616C
	cmp r2, #0x04
	bne _080D61D0
_080D616C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6194
	ldr r2, _080D6190 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D61A0
	.byte 0x00, 0x00
_080D618C: .4byte 0x03000FD8
_080D6190: .4byte 0x00002002
_080D6194:
	ldr r2, _080D626C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D61A0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D61B6
	movs r2, #0x01
_080D61B6:
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
_080D61D0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D61DE
	cmp r2, #0x04
	bne _080D61E8
_080D61DE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D61E8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D61FC
	cmp r2, #0x04
	bne _080D623E
_080D61FC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D620A
	adds r0, #0xFF
_080D620A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6218
	adds r0, #0xFF
_080D6218:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6226
	adds r0, #0xFF
_080D6226:
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
_080D623E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D624C
	cmp r1, #0x04
	bne _080D62B0
_080D624C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6274
	ldr r2, _080D6270 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6280
	.byte 0x00, 0x00
_080D626C: .4byte 0x0000204F
_080D6270: .4byte 0x00002002
_080D6274:
	ldr r2, _080D62D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6280:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6296
	movs r2, #0x01
_080D6296:
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
_080D62B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D62BE
	cmp r2, #0x04
	bne _080D62C8
_080D62BE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D62C8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D62D0: .4byte 0x0000204F
	thumb_func_start sub_80D62D4
sub_80D62D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D6374 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0xAF
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6300
	cmp r1, #0x04
	bne _080D631C
_080D6300:
	ldr r2, _080D6378 @ =0x00002066
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
_080D631C:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D633A
	ldr r2, _080D637C @ =0x00002095
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D633A:
	ldr r0, [r5, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080D6348
	adds r1, #0xFF
_080D6348:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080D6352
	adds r2, #0xFF
_080D6352:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080D635C
	adds r3, #0xFF
_080D635C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080D6380 @ =0x0000069F
	bl sub_80DF024
	ldr r0, _080D6384 @ =0x080D6389
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D6374: .4byte 0x03000FD8
_080D6378: .4byte 0x00002066
_080D637C: .4byte 0x00002095
_080D6380: .4byte 0x0000069F
_080D6384: .4byte sub_80D6388
	thumb_func_start sub_80D6388
sub_80D6388:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D63EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D63E4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D63B0
	cmp r1, #0x04
	bne _080D63E0
_080D63B0:
	ldr r2, _080D63F0 @ =0x03001038
	ldr r0, _080D63F4 @ =0x0819832C
	ldr r1, _080D63F8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0E
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D63E0:
	ldr r0, _080D63FC @ =0x080D6401
	str r0, [r5, #0x4C]
_080D63E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D63EC: .4byte 0x03000FD8
_080D63F0: .4byte 0x03001038
_080D63F4: .4byte 0x0819832C
_080D63F8: .4byte 0x08198220
_080D63FC: .4byte sub_80D6400
	thumb_func_start sub_80D6400
sub_80D6400:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080D6590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D642E
	b _080D6580
_080D642E:
	movs r7, #0x00
	movs r0, #0x7E
	adds r0, r0, r4
	mov r9, r0
	adds r4, #0xD4
	mov r8, r4
_080D643A:
	ldr r0, _080D6590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080D64EE
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D64EE
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x55
	orrs r1, r0
	mov r0, r8
	strb r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	ldr r0, _080D6594 @ =0x0881838D
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
	bgt _080D64B8
	ldr r2, _080D6598 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D64EE
_080D64B8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D64C0
	adds r1, #0xFF
_080D64C0:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D64D6
	adds r2, #0xFF
_080D64D6:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D64EE:
	adds r7, #0x01
	cmp r7, #0x05
	ble _080D643A
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6504
	cmp r1, #0x04
	bne _080D651C
_080D6504:
	ldr r2, _080D659C @ =0x00002066
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
_080D651C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D653A
	ldr r2, _080D65A0 @ =0x00002095
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D653A:
	mov r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D654A
	cmp r1, #0x04
	bne _080D657A
_080D654A:
	ldr r2, _080D65A4 @ =0x03001038
	ldr r0, _080D65A8 @ =0x0819832C
	ldr r1, _080D65AC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
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
_080D657A:
	ldr r0, _080D65B0 @ =0x080D65B5
	mov r1, r10
	str r0, [r1, #0x4C]
_080D6580:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D6590: .4byte 0x03000FD8
_080D6594: .4byte 0x0881838D
_080D6598: .4byte 0x00000111
_080D659C: .4byte 0x00002066
_080D65A0: .4byte 0x00002095
_080D65A4: .4byte 0x03001038
_080D65A8: .4byte 0x0819832C
_080D65AC: .4byte 0x08198220
_080D65B0: .4byte sub_80D65B4
	thumb_func_start sub_80D65B4
sub_80D65B4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D660C @ =0x03000FD8
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
	beq _080D669C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D65EA
	cmp r1, #0x04
	bne _080D662C
_080D65EA:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6610
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080D661C
	.byte 0x00, 0x00
_080D660C: .4byte 0x03000FD8
_080D6610:
	ldr r2, _080D66A4 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080D661C:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D662C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D663E
	cmp r1, #0x04
	bne _080D6698
_080D663E:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080D6646
	adds r0, #0xFF
_080D6646:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x28
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D6660
	adds r2, #0xFF
_080D6660:
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
	bge _080D6684
	adds r0, #0xFF
_080D6684:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D6698:
	ldr r0, _080D66A8 @ =0x080D66AD
	str r0, [r6, #0x4C]
_080D669C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D66A4: .4byte 0x0000204D
_080D66A8: .4byte sub_80D66AC
	thumb_func_start sub_80D66AC
sub_80D66AC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D676C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D66D4
	b _080D68A8
_080D66D4:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D66FA
	cmp r1, #0x04
	bne _080D6738
_080D66FA:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6708
	adds r0, #0xFF
_080D6708:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6716
	adds r0, #0xFF
_080D6716:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6724
	adds r0, #0xFF
_080D6724:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D6738:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D674C
	cmp r2, #0x04
	bne _080D67B0
_080D674C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6774
	ldr r2, _080D6770 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6780
	.byte 0x00, 0x00
_080D676C: .4byte 0x03000FD8
_080D6770: .4byte 0x00002002
_080D6774:
	ldr r2, _080D684C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6780:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6796
	movs r2, #0x01
_080D6796:
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
_080D67B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D67BE
	cmp r2, #0x04
	bne _080D67C8
_080D67BE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D67C8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D67DC
	cmp r2, #0x04
	bne _080D681E
_080D67DC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D67EA
	adds r0, #0xFF
_080D67EA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D67F8
	adds r0, #0xFF
_080D67F8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6806
	adds r0, #0xFF
_080D6806:
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
_080D681E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D682C
	cmp r1, #0x04
	bne _080D6890
_080D682C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6854
	ldr r2, _080D6850 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6860
	.byte 0x00, 0x00
_080D684C: .4byte 0x0000204F
_080D6850: .4byte 0x00002002
_080D6854:
	ldr r2, _080D68B0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6860:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6876
	movs r2, #0x01
_080D6876:
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
_080D6890:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D689E
	cmp r2, #0x04
	bne _080D68A8
_080D689E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D68A8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D68B0: .4byte 0x0000204F
	thumb_func_start sub_80D68B4
sub_80D68B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r3, _080D695C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D68E0
	cmp r1, #0x04
	bne _080D6928
_080D68E0:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D68E8
	adds r0, #0xFF
_080D68E8:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D6902
	adds r2, #0xFF
_080D6902:
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
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080D6928:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D693C
	cmp r2, #0x04
	bne _080D69A0
_080D693C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6964
	ldr r2, _080D6960 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6970
	.byte 0x00, 0x00
_080D695C: .4byte 0x03000FD8
_080D6960: .4byte 0x00002002
_080D6964:
	ldr r2, _080D69D0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6970:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6986
	movs r2, #0x01
_080D6986:
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
_080D69A0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D69BA
	cmp r2, #0x04
	bne _080D69C4
_080D69BA:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D69C4:
	ldr r0, _080D69D4 @ =0x080D8D19
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D69D0: .4byte 0x0000204F
_080D69D4: .4byte sub_80D8D18
	thumb_func_start sub_80D69D8
sub_80D69D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080D6A8C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r6, [r5, #0x4C]
	cmp r6, #0x00
	bne _080D6A82
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
	beq _080D6A12
	cmp r1, #0x04
	bne _080D6A42
_080D6A12:
	ldr r2, _080D6A90 @ =0x03001038
	ldr r0, _080D6A94 @ =0x0819832C
	ldr r1, _080D6A98 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r6, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6A42:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6A54
	cmp r1, #0x04
	bne _080D6A70
_080D6A54:
	ldr r2, _080D6A9C @ =0x00002024
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
_080D6A70:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D6AA0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D6AA4 @ =0x080D6AA9
	mov r1, r8
	str r0, [r1, #0x4C]
_080D6A82:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D6A8C: .4byte 0x03000FD8
_080D6A90: .4byte 0x03001038
_080D6A94: .4byte 0x0819832C
_080D6A98: .4byte 0x08198220
_080D6A9C: .4byte 0x00002024
_080D6AA0: .4byte 0x00000FFF
_080D6AA4: .4byte sub_80D6AA8
	thumb_func_start sub_80D6AA8
sub_80D6AA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D6BC8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	mov r2, r10
	str r2, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080D6B18
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6B18:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D6B28
	b _080D705C
_080D6B28:
	mov r1, r12
	cmp r1, #0x00
	bge _080D6B30
	movs r1, #0x00
_080D6B30:
	ldr r0, _080D6BCC @ =0x00007FFF
	cmp r1, r0
	ble _080D6B38
	adds r1, r0, #0x0
_080D6B38:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D6B4E
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D6B50
_080D6B4E:
	movs r2, #0x00
_080D6B50:
	movs r3, #0x7E
	adds r3, r3, r6
	mov r9, r3
	movs r4, #0xAE
	adds r4, r4, r6
	mov r8, r4
	cmp r2, #0x00
	beq _080D6C34
	ldr r2, _080D6BC8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D6BD0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6B84
	movs r1, #0x4C
_080D6B78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6B78
_080D6B84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6B98
	movs r1, #0x4C
_080D6B8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6B8C
_080D6B98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6BAC
	movs r1, #0x4C
_080D6BA0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BA0
_080D6BAC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6C2C
	movs r1, #0x04
_080D6BB6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6BC0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6BC0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6BB6
	b _080D6C2C
_080D6BC8: .4byte 0x03000FD8
_080D6BCC: .4byte 0x00007FFF
_080D6BD0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6BE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6BDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BDA
_080D6BE6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6BFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6BF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BF0
_080D6BFC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6C12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6C06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6C06
_080D6C12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6C2C
	movs r1, #0x10
_080D6C1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6C26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6C26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6C1C
_080D6C2C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D6C34:
	mov r1, r10
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D6C40
	movs r1, #0x00
_080D6C40:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D6C4A
	adds r1, r0, #0x0
_080D6C4A:
	ldr r0, _080D6D44 @ =0x00007FFF
	cmp r2, r0
	ble _080D6C52
	adds r2, r0, #0x0
_080D6C52:
	cmp r2, r1
	bge _080D6C58
	adds r1, r2, #0x0
_080D6C58:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080D6C70
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D6C72
_080D6C70:
	movs r1, #0x00
_080D6C72:
	cmp r1, #0x00
	bne _080D6C78
	b _080D6DC4
_080D6C78:
	movs r4, #0x08
	negs r4, r4
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	adds r2, r4, #0x0
	bl sub_807E680
	ldr r0, _080D6D48 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D6C9C
	b _080D6DC4
_080D6C9C:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D6D4C @ =0x03000FD8
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
	bne _080D6DB2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D6D50
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D6CFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6CF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6CF0
_080D6CFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6D12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D06
_080D6D12:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6D28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D1C
_080D6D28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6DAE
	movs r1, #0x10
_080D6D32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6D3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6D3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6D32
	b _080D6DAE
_080D6D44: .4byte 0x00007FFF
_080D6D48: .4byte 0x0300034C
_080D6D4C: .4byte 0x03000FD8
_080D6D50:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D6D68
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D5C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D5C
_080D6D68:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6D7E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D72:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D72
_080D6D7E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6D94
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D88:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D88
_080D6D94:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6DAE
	movs r1, #0x10
_080D6D9E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6DA8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6DA8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6D9E
_080D6DAE:
	bl sub_807F448
_080D6DB2:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D6E94 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D6DC4:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D6DD0
	b _080D705C
_080D6DD0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D6E98 @ =0x00007FFF
	cmp r1, r0
	ble _080D6DDC
	adds r1, r0, #0x0
_080D6DDC:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D6DF4
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D6DF6
_080D6DF4:
	movs r2, #0x00
_080D6DF6:
	cmp r2, #0x00
	bne _080D6DFC
	b _080D6F08
_080D6DFC:
	ldr r3, _080D6E9C @ =0x03000FD8
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
	ldr r0, _080D6E94 @ =0x00000FFF
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
	beq _080D6EA0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6E4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E40
_080D6E4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6E62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E56
_080D6E62:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6E78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E6C
_080D6E78:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6EFC
	movs r1, #0x10
_080D6E82:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6E8C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6E8C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6E82
	b _080D6EFC
_080D6E94: .4byte 0x00000FFF
_080D6E98: .4byte 0x00007FFF
_080D6E9C: .4byte 0x03000FD8
_080D6EA0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6EB6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6EAA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6EAA
_080D6EB6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6ECC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6EC0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6EC0
_080D6ECC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6EE2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6ED6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6ED6
_080D6EE2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6EFC
	movs r1, #0x10
_080D6EEC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6EF6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6EF6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6EEC
_080D6EFC:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D705C
_080D6F08:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080D6F18
	b _080D705C
_080D6F18:
	ldr r0, _080D6FDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D6F2E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D6F2E
	b _080D705C
_080D6F2E:
	ldr r2, _080D6FE0 @ =0x03000FD8
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
	beq _080D6F5E
	b _080D705C
_080D6F5E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D6FE4 @ =0x00000FFF
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
	beq _080D6FE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6F92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6F86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6F86
_080D6F92:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6FA8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6F9C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6F9C
_080D6FA8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6FBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6FB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6FB2
_080D6FBE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7044
	movs r1, #0x10
_080D6FC8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6FD2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6FD2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6FC8
	b _080D7044
	.byte 0x00, 0x00
_080D6FDC: .4byte 0x0300034C
_080D6FE0: .4byte 0x03000FD8
_080D6FE4: .4byte 0x00000FFF
_080D6FE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6FFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6FF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6FF2
_080D6FFE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7014
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7008:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7008
_080D7014:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D702A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D701E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D701E
_080D702A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7044
	movs r1, #0x10
_080D7034:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D703E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D703E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7034
_080D7044:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x08
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	bl sub_807EAE4
_080D705C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D70D4
	ldr r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D7072
	movs r1, #0x00
_080D7072:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D707C
	adds r1, r0, #0x0
_080D707C:
	ldr r0, _080D70C8 @ =0x00007FFF
	cmp r2, r0
	ble _080D7084
	adds r2, r0, #0x0
_080D7084:
	cmp r2, r1
	bge _080D708A
	adds r1, r2, #0x0
_080D708A:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D70A4
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D70A6
_080D70A4:
	movs r1, #0x00
_080D70A6:
	cmp r1, #0x00
	beq _080D70D4
	cmp r3, #0x01
	ble _080D70D4
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D70CC @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D70D0 @ =0x080D7689
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D71BC
	.byte 0x00, 0x00
_080D70C8: .4byte 0x00007FFF
_080D70CC: .4byte 0x00000FFF
_080D70D0: .4byte sub_80D7688
_080D70D4:
	mov r1, r10
	cmp r1, #0x00
	bge _080D70DC
	movs r1, #0x00
_080D70DC:
	ldr r0, _080D71CC @ =0x00007FFF
	cmp r1, r0
	ble _080D70E4
	adds r1, r0, #0x0
_080D70E4:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D70FE
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D7100
_080D70FE:
	movs r2, #0x00
_080D7100:
	cmp r2, #0x00
	beq _080D712E
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7116
	cmp r1, #0x04
	bne _080D712E
_080D7116:
	ldr r2, _080D71D0 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D712E:
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080D71BC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D715A
	cmp r1, #0x04
	bne _080D7176
_080D715A:
	ldr r2, _080D71D0 @ =0x00002024
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
_080D7176:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7188
	cmp r1, #0x04
	bne _080D71B6
_080D7188:
	ldr r2, _080D71D4 @ =0x03001038
	ldr r0, _080D71D8 @ =0x0819832C
	ldr r1, _080D71DC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x06
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080D71B6:
	ldr r0, _080D71E0 @ =0x080D71E5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D71BC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D71CC: .4byte 0x00007FFF
_080D71D0: .4byte 0x00002024
_080D71D4: .4byte 0x03001038
_080D71D8: .4byte 0x0819832C
_080D71DC: .4byte 0x08198220
_080D71E0: .4byte sub_80D71E4
	thumb_func_start sub_80D71E4
sub_80D71E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D72C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r6, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D72BA
	ldr r0, _080D72C8 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7226
	cmp r1, #0x04
	bne _080D723E
_080D7226:
	ldr r2, _080D72CC @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D723E:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D725C
	ldr r2, _080D72D0 @ =0x00002095
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D725C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D726E
	cmp r1, #0x04
	bne _080D72B6
_080D726E:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D7276
	adds r0, #0xFF
_080D7276:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0A
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D7290
	adds r2, #0xFF
_080D7290:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
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
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080D72B6:
	ldr r0, _080D72D4 @ =0x080D72D9
	str r0, [r7, #0x4C]
_080D72BA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D72C4: .4byte 0x03000FD8
_080D72C8: .4byte 0x0000011F
_080D72CC: .4byte 0x00002066
_080D72D0: .4byte 0x00002095
_080D72D4: .4byte sub_80D72D8
	thumb_func_start sub_80D72D8
sub_80D72D8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D73F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D73EA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0xE6
	strh r0, [r1, #0x00]
	ldr r0, _080D73F8 @ =0x0881848D
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r4, #0x24]
	adds r0, #0x01
	strh r0, [r4, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D7364
	ldr r2, _080D73FC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D739A
_080D7364:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D736C
	adds r1, #0xFF
_080D736C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D7382
	adds r2, #0xFF
_080D7382:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D7400 @ =0x000006C4
	str r5, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D739A:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D73AC
	cmp r1, #0x04
	bne _080D73C8
_080D73AC:
	ldr r2, _080D7404 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x0F
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
_080D73C8:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D73E6
	ldr r2, _080D7408 @ =0x00002095
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D73E6:
	ldr r0, _080D740C @ =0x080D7411
	str r0, [r7, #0x4C]
_080D73EA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D73F4: .4byte 0x03000FD8
_080D73F8: .4byte 0x0881848D
_080D73FC: .4byte 0x00000111
_080D7400: .4byte 0x000006C4
_080D7404: .4byte 0x00002066
_080D7408: .4byte 0x00002095
_080D740C: .4byte sub_80D7410
	thumb_func_start sub_80D7410
sub_80D7410:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D7474 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D746C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7438
	cmp r1, #0x04
	bne _080D7468
_080D7438:
	ldr r2, _080D7478 @ =0x03001038
	ldr r0, _080D747C @ =0x0819832C
	ldr r1, _080D7480 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D7468:
	ldr r0, _080D7484 @ =0x080D7489
	str r0, [r5, #0x4C]
_080D746C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D7474: .4byte 0x03000FD8
_080D7478: .4byte 0x03001038
_080D747C: .4byte 0x0819832C
_080D7480: .4byte 0x08198220
_080D7484: .4byte sub_80D7488
	thumb_func_start sub_80D7488
sub_80D7488:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D7540 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D74B0
	b _080D767C
_080D74B0:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D74CE
	cmp r1, #0x04
	bne _080D750C
_080D74CE:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D74DC
	adds r0, #0xFF
_080D74DC:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D74EA
	adds r0, #0xFF
_080D74EA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D74F8
	adds r0, #0xFF
_080D74F8:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D750C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D7520
	cmp r2, #0x04
	bne _080D7584
_080D7520:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D7548
	ldr r2, _080D7544 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D7554
	.byte 0x00, 0x00
_080D7540: .4byte 0x03000FD8
_080D7544: .4byte 0x00002002
_080D7548:
	ldr r2, _080D7620 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D7554:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D756A
	movs r2, #0x01
_080D756A:
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
_080D7584:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D7592
	cmp r2, #0x04
	bne _080D759C
_080D7592:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D759C:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D75B0
	cmp r2, #0x04
	bne _080D75F2
_080D75B0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D75BE
	adds r0, #0xFF
_080D75BE:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D75CC
	adds r0, #0xFF
_080D75CC:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D75DA
	adds r0, #0xFF
_080D75DA:
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
_080D75F2:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7600
	cmp r1, #0x04
	bne _080D7664
_080D7600:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D7628
	ldr r2, _080D7624 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D7634
	.byte 0x00, 0x00
_080D7620: .4byte 0x0000204F
_080D7624: .4byte 0x00002002
_080D7628:
	ldr r2, _080D7684 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D7634:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D764A
	movs r2, #0x01
_080D764A:
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
_080D7664:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D7672
	cmp r2, #0x04
	bne _080D767C
_080D7672:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D767C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D7684: .4byte 0x0000204F
	thumb_func_start sub_80D7688
sub_80D7688:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D775C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080D76A6
	adds r1, #0xFF
_080D76A6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080D76B0
	adds r2, #0xFF
_080D76B0:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080D76BA
	adds r3, #0xFF
_080D76BA:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080D7760 @ =0x00002FE6
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D76D6
	cmp r1, #0x04
	bne _080D76F2
_080D76D6:
	ldr r2, _080D7764 @ =0x00002024
	adds r0, r7, #0x0
	movs r1, #0x02
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
_080D76F2:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7704
	cmp r1, #0x04
	bne _080D7720
_080D7704:
	ldr r2, _080D7768 @ =0x00002066
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
_080D7720:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D773E
	ldr r2, _080D776C @ =0x00002095
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D773E:
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D7770 @ =0x080D7775
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D775C: .4byte 0x03000FD8
_080D7760: .4byte 0x00002FE6
_080D7764: .4byte 0x00002024
_080D7768: .4byte 0x00002066
_080D776C: .4byte 0x00002095
_080D7770: .4byte sub_80D7774
	thumb_func_start sub_80D7774
sub_80D7774:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D7818 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D7812
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D77A6
	cmp r1, #0x04
	bne _080D77CC
_080D77A6:
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
_080D77CC:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D77DE
	cmp r1, #0x04
	bne _080D780E
_080D77DE:
	ldr r2, _080D781C @ =0x03001038
	ldr r0, _080D7820 @ =0x0819832C
	ldr r1, _080D7824 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
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
_080D780E:
	ldr r0, _080D7828 @ =0x080D782D
	str r0, [r6, #0x4C]
_080D7812:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D7818: .4byte 0x03000FD8
_080D781C: .4byte 0x03001038
_080D7820: .4byte 0x0819832C
_080D7824: .4byte 0x08198220
_080D7828: .4byte sub_80D782C
	thumb_func_start sub_80D782C
sub_80D782C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D7914 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r6, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D790A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x41
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D786E
	cmp r1, #0x04
	bne _080D7886
_080D786E:
	ldr r2, _080D7918 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D7886:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D78A4
	ldr r2, _080D791C @ =0x00002095
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D78A4:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D78B6
	cmp r1, #0x04
	bne _080D78FA
_080D78B6:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D78BE
	adds r1, #0xFF
_080D78BE:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D78D4
	adds r2, #0xFF
_080D78D4:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
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
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080D78FA:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D7920 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D7924 @ =0x080D7929
	str r0, [r7, #0x4C]
_080D790A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D7914: .4byte 0x03000FD8
_080D7918: .4byte 0x00002066
_080D791C: .4byte 0x00002095
_080D7920: .4byte 0x00000FFF
_080D7924: .4byte sub_80D7928
	thumb_func_start sub_80D7928
sub_80D7928:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080D7A44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r0, r1
	lsls r0, r0, #0x01
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080D7994
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D7994:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D79A4
	b _080D7ECA
_080D79A4:
	mov r1, r12
	cmp r1, #0x00
	bge _080D79AC
	movs r1, #0x00
_080D79AC:
	ldr r0, _080D7A48 @ =0x00007FFF
	cmp r1, r0
	ble _080D79B4
	adds r1, r0, #0x0
_080D79B4:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D79CA
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D79CC
_080D79CA:
	movs r2, #0x00
_080D79CC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080D7AB0
	ldr r2, _080D7A44 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D7A4C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D7A00
	movs r1, #0x40
_080D79F4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D79F4
_080D7A00:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7A14
	movs r1, #0x40
_080D7A08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A08
_080D7A14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7A28
	movs r1, #0x40
_080D7A1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A1C
_080D7A28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7AA8
	movs r1, #0x04
_080D7A32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7A3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7A3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7A32
	b _080D7AA8
_080D7A44: .4byte 0x03000FD8
_080D7A48: .4byte 0x00007FFF
_080D7A4C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D7A62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A56
_080D7A62:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7A78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A6C
_080D7A78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7A8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A82
_080D7A8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7AA8
	movs r1, #0x10
_080D7A98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7AA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7AA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7A98
_080D7AA8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D7AB0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	mov r3, r9
	cmp r3, #0x00
	bge _080D7ABE
	movs r2, #0x00
_080D7ABE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D7AC8
	adds r1, r0, #0x0
_080D7AC8:
	ldr r0, _080D7BBC @ =0x00007FFF
	cmp r2, r0
	ble _080D7AD0
	adds r2, r0, #0x0
_080D7AD0:
	cmp r2, r1
	bge _080D7AD6
	adds r1, r2, #0x0
_080D7AD6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D7AEE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D7AF0
_080D7AEE:
	movs r1, #0x00
_080D7AF0:
	cmp r1, #0x00
	bne _080D7AF6
	b _080D7C3E
_080D7AF6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D7BC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D7B14
	b _080D7C3E
_080D7B14:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D7BC4 @ =0x03000FD8
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
	bne _080D7C2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D7BC8
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080D7B74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B68
_080D7B74:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7B8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B7E
_080D7B8A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7BA0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B94:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B94
_080D7BA0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7C26
	movs r1, #0x10
_080D7BAA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7BB4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7BB4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7BAA
	b _080D7C26
_080D7BBC: .4byte 0x00007FFF
_080D7BC0: .4byte 0x0300034C
_080D7BC4: .4byte 0x03000FD8
_080D7BC8:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080D7BE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7BD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7BD4
_080D7BE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7BF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7BEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7BEA
_080D7BF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7C0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7C00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7C00
_080D7C0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7C26
	movs r1, #0x10
_080D7C16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7C20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7C20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7C16
_080D7C26:
	bl sub_807F448
_080D7C2A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080D7D14 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080D7C3E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D7C4A
	b _080D7ECA
_080D7C4A:
	mov r1, r9
	cmp r1, #0x00
	bge _080D7C52
	movs r1, #0x00
_080D7C52:
	ldr r0, _080D7D18 @ =0x00007FFF
	cmp r1, r0
	ble _080D7C5A
	adds r1, r0, #0x0
_080D7C5A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D7C72
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D7C74
_080D7C72:
	movs r2, #0x00
_080D7C74:
	cmp r2, #0x00
	bne _080D7C7A
	b _080D7D88
_080D7C7A:
	ldr r3, _080D7D1C @ =0x03000FD8
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
	ldr r0, _080D7D14 @ =0x00000FFF
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
	beq _080D7D20
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7CCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CBE
_080D7CCA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7CE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CD4
_080D7CE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7CF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CEA
_080D7CF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7D7C
	movs r1, #0x10
_080D7D00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7D0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7D0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7D00
	b _080D7D7C
	.byte 0x00, 0x00
_080D7D14: .4byte 0x00000FFF
_080D7D18: .4byte 0x00007FFF
_080D7D1C: .4byte 0x03000FD8
_080D7D20:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7D36
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D2A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D2A
_080D7D36:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7D4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D40
_080D7D4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7D62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D56
_080D7D62:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7D7C
	movs r1, #0x10
_080D7D6C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7D76
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7D76:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7D6C
_080D7D7C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D7ECA
_080D7D88:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080D7D94
	b _080D7ECA
_080D7D94:
	ldr r0, _080D7E4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D7DA2
	b _080D7ECA
_080D7DA2:
	ldr r2, _080D7E50 @ =0x03000FD8
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
	bne _080D7ECA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D7E54 @ =0x00000FFF
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
	beq _080D7E58
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7E04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7DF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7DF8
_080D7E04:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E0E
_080D7E1A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7E30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E24
_080D7E30:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7EB4
	movs r1, #0x10
_080D7E3A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7E44
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7E44:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7E3A
	b _080D7EB4
_080D7E4C: .4byte 0x0300034C
_080D7E50: .4byte 0x03000FD8
_080D7E54: .4byte 0x00000FFF
_080D7E58:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7E6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E62
_080D7E6E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7E84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E78
_080D7E84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7E9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E8E
_080D7E9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7EB4
	movs r1, #0x10
_080D7EA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7EAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7EAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7EA4
_080D7EB4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D7ECA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D7F40
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080D7EE0
	movs r1, #0x00
_080D7EE0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D7EEA
	adds r2, r0, #0x0
_080D7EEA:
	ldr r0, _080D7F34 @ =0x00007FFF
	cmp r1, r0
	ble _080D7EF2
	adds r1, r0, #0x0
_080D7EF2:
	cmp r1, r2
	bge _080D7EF8
	adds r2, r1, #0x0
_080D7EF8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D7F12
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080D7F14
_080D7F12:
	movs r2, #0x00
_080D7F14:
	cmp r2, #0x00
	beq _080D7F40
	cmp r3, #0x01
	ble _080D7F40
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080D7F38 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080D7F3C @ =0x080D85D5
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D801C
_080D7F34: .4byte 0x00007FFF
_080D7F38: .4byte 0x00000FFF
_080D7F3C: .4byte sub_80D85D4
_080D7F40:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _080D801C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bne _080D7F76
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7F72
	cmp r1, #0x04
	bne _080D7F76
_080D7F72:
	ldr r0, _080D802C @ =0x080D8439
	str r0, [r6, #0x4C]
_080D7F76:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r7, r1, #0x0
	cmp r2, #0x02
	beq _080D7F8A
	cmp r2, #0x04
	bne _080D7FA6
_080D7F8A:
	ldr r2, _080D8030 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x12
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
_080D7FA6:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D7FC4
	ldr r2, _080D8034 @ =0x00002095
	movs r1, #0x12
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D7FC4:
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r4, [r0, #0x00]
	adds r0, #0x01
	strb r4, [r0, #0x00]
	ldrb r0, [r7, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D7FDE
	cmp r2, #0x04
	bne _080D800E
_080D7FDE:
	ldr r2, _080D8038 @ =0x03001038
	ldr r0, _080D803C @ =0x0819832C
	ldr r1, _080D8040 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r4, [r0, #0x00]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
_080D800E:
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _080D8044 @ =0x080D8049
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080D801C:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D802C: .4byte sub_80D8438
_080D8030: .4byte 0x00002066
_080D8034: .4byte 0x00002095
_080D8038: .4byte 0x03001038
_080D803C: .4byte 0x0819832C
_080D8040: .4byte 0x08198220
_080D8044: .4byte sub_80D8048
	thumb_func_start sub_80D8048
sub_80D8048:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D816C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080D809E
	ldr r1, [r5, #0x40]
	lsls r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0xCD
	movs r2, #0x00
	ldsb r2, [r0, r2]
	subs r0, #0x47
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r2
	cmp r1, r0
	bge _080D809E
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D809A
	cmp r1, #0x04
	bne _080D809E
_080D809A:
	ldr r0, _080D8170 @ =0x080D8439
	str r0, [r5, #0x4C]
_080D809E:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r7, #0x20
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080D815E
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D80C2
	cmp r2, #0x04
	bne _080D8110
_080D80C2:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080D80CA
	adds r0, #0xFF
_080D80CA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D80E4
	adds r2, #0xFF
_080D80E4:
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
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r7, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080D8110:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D811E
	cmp r2, #0x04
	bne _080D813A
_080D811E:
	ldr r2, _080D8174 @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x13
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
_080D813A:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D8158
	ldr r2, _080D8178 @ =0x00002095
	movs r1, #0x13
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8158:
	ldr r0, _080D817C @ =0x080D8181
	mov r1, r8
	str r0, [r1, #0x4C]
_080D815E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D816C: .4byte 0x03000FD8
_080D8170: .4byte sub_80D8438
_080D8174: .4byte 0x00002066
_080D8178: .4byte 0x00002095
_080D817C: .4byte sub_80D8180
	thumb_func_start sub_80D8180
sub_80D8180:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080D8228 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080D81D6
	adds r0, r6, #0x0
	adds r0, #0xCD
	movs r1, #0x00
	ldsb r1, [r0, r1]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	ldr r1, [r5, #0x40]
	cmp r1, r0
	bge _080D81D6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D81D2
	cmp r1, #0x04
	bne _080D81D6
_080D81D2:
	ldr r0, _080D822C @ =0x080D8439
	str r0, [r5, #0x4C]
_080D81D6:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8220
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8200
	cmp r1, #0x04
	bne _080D821C
_080D8200:
	ldr r2, _080D8230 @ =0x00002005
	adds r0, r4, #0x0
	movs r1, #0x00
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
_080D821C:
	ldr r0, _080D8234 @ =0x080D8239
	str r0, [r7, #0x4C]
_080D8220:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8228: .4byte 0x03000FD8
_080D822C: .4byte sub_80D8438
_080D8230: .4byte 0x00002005
_080D8234: .4byte sub_80D8238
	thumb_func_start sub_80D8238
sub_80D8238:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D82F0 @ =0x03000FD8
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
	bne _080D825A
	b _080D842C
_080D825A:
	ldr r0, [r5, #0x30]
	bl sub_807C298
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D827E
	cmp r1, #0x04
	bne _080D82BC
_080D827E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D828C
	adds r0, #0xFF
_080D828C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D829A
	adds r0, #0xFF
_080D829A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D82A8
	adds r0, #0xFF
_080D82A8:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D82BC:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D82D0
	cmp r2, #0x04
	bne _080D8334
_080D82D0:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D82F8
	ldr r2, _080D82F4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D8304
	.byte 0x00, 0x00
_080D82F0: .4byte 0x03000FD8
_080D82F4: .4byte 0x00002002
_080D82F8:
	ldr r2, _080D83D0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D8304:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D831A
	movs r2, #0x01
_080D831A:
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
_080D8334:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D8342
	cmp r2, #0x04
	bne _080D834C
_080D8342:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D834C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D8360
	cmp r2, #0x04
	bne _080D83A2
_080D8360:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D836E
	adds r0, #0xFF
_080D836E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D837C
	adds r0, #0xFF
_080D837C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D838A
	adds r0, #0xFF
_080D838A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D83A2:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D83B0
	cmp r1, #0x04
	bne _080D8414
_080D83B0:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D83D8
	ldr r2, _080D83D4 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D83E4
	.byte 0x00, 0x00
_080D83D0: .4byte 0x0000204F
_080D83D4: .4byte 0x00002002
_080D83D8:
	ldr r2, _080D8434 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D83E4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D83FA
	movs r2, #0x01
_080D83FA:
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
_080D8414:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D8422
	cmp r2, #0x04
	bne _080D842C
_080D8422:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D842C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D8434: .4byte 0x0000204F
	thumb_func_start sub_80D8438
sub_80D8438:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080D8464 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	mov r12, r0
	mov r5, r12
	adds r5, #0x08
	adds r6, r4, #0x0
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1D]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080D8468
	movs r0, #0x00
	b _080D85B8
	.byte 0x00, 0x00
_080D8464: .4byte 0x03000FD8
_080D8468:
	ldr r3, _080D85C4 @ =0x00000111
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x28]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	mov r2, r12
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x46
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r12
	adds r1, #0xD2
	movs r0, #0xCC
	strh r0, [r1, #0x00]
	ldr r0, _080D85C8 @ =0x0881858D
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
	bgt _080D84CC
	ldr r2, _080D85C4 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D8502
_080D84CC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D84D4
	adds r1, #0xFF
_080D84D4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D84EA
	adds r2, #0xFF
_080D84EA:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D85CC @ =0x000006C4
	str r4, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D8502:
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	str r2, [r0, #0x00]
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080D854A
	str r2, [r4, #0x4C]
	adds r2, r1, #0x0
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	adds r5, r6, #0x0
	adds r5, #0x7C
	cmp r0, #0x00
	bne _080D853E
	movs r3, #0x80
_080D852C:
	ldr r2, [r2, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080D852C
_080D853E:
	adds r4, r2, #0x0
	adds r4, #0x08
	ldrh r1, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	strh r1, [r0, #0x00]
_080D854A:
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D855E
	cmp r1, #0x04
	bne _080D85B6
_080D855E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D856C
	adds r0, #0xFF
_080D856C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D857A
	adds r0, #0xFF
_080D857A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8588
	adds r0, #0xFF
_080D8588:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D85A2
	adds r0, #0xFF
_080D85A2:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D85B6:
	ldr r0, _080D85D0 @ =0x080D8CC1
_080D85B8:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D85C4: .4byte 0x00000111
_080D85C8: .4byte 0x0881858D
_080D85CC: .4byte 0x000006C4
_080D85D0: .4byte sub_80D8CC0
	thumb_func_start sub_80D85D4
sub_80D85D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D8698 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r5, [r6, #0x2C]
	movs r0, #0xAF
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D860A
	cmp r1, #0x04
	bne _080D860E
_080D860A:
	ldr r0, _080D869C @ =0x080D8A55
	str r0, [r5, #0x4C]
_080D860E:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D8616
	adds r1, #0xFF
_080D8616:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D8620
	adds r2, #0xFF
_080D8620:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D862A
	adds r3, #0xFF
_080D862A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080D86A0 @ =0x000006AF
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8650
	cmp r1, #0x04
	bne _080D866C
_080D8650:
	ldr r2, _080D86A4 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x10
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
_080D866C:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D868A
	ldr r2, _080D86A8 @ =0x00002095
	movs r1, #0x10
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D868A:
	ldr r0, _080D86AC @ =0x080D86B1
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8698: .4byte 0x03000FD8
_080D869C: .4byte sub_80D8A54
_080D86A0: .4byte 0x000006AF
_080D86A4: .4byte 0x00002066
_080D86A8: .4byte 0x00002095
_080D86AC: .4byte sub_80D86B0
	thumb_func_start sub_80D86B0
sub_80D86B0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D8788 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D877E
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D86DE
	cmp r1, #0x04
	bne _080D86FA
_080D86DE:
	ldr r2, _080D878C @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x11
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
_080D86FA:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D8718
	ldr r2, _080D8790 @ =0x00002095
	movs r1, #0x11
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8718:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D872A
	cmp r1, #0x04
	bne _080D877A
_080D872A:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D8732
	adds r0, #0xFF
_080D8732:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D874C
	adds r2, #0xFF
_080D874C:
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
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x30
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D877A:
	ldr r0, _080D8794 @ =0x080D8799
	str r0, [r5, #0x4C]
_080D877E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8788: .4byte 0x03000FD8
_080D878C: .4byte 0x00002066
_080D8790: .4byte 0x00002095
_080D8794: .4byte sub_80D8798
	thumb_func_start sub_80D8798
sub_80D8798:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D881C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
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
	beq _080D884A
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2E
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D87D0
	adds r1, #0xFF
_080D87D0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D87DA
	adds r2, #0xFF
_080D87DA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D87E4
	adds r3, #0xFF
_080D87E4:
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
	beq _080D8800
	cmp r1, #0x04
	bne _080D883C
_080D8800:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080D8820
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080D882C
_080D881C: .4byte 0x03000FD8
_080D8820:
	ldr r2, _080D8854 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080D882C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D883C:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080D8858 @ =0x080D885D
	str r0, [r7, #0x4C]
_080D884A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8854: .4byte 0x0000204D
_080D8858: .4byte sub_80D885C
	thumb_func_start sub_80D885C
sub_80D885C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D890C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D887E
	b _080D8A48
_080D887E:
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
	beq _080D889C
	cmp r1, #0x04
	bne _080D88DA
_080D889C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D88AA
	adds r0, #0xFF
_080D88AA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D88B8
	adds r0, #0xFF
_080D88B8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D88C6
	adds r0, #0xFF
_080D88C6:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D88DA:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D88EE
	cmp r2, #0x04
	bne _080D8950
_080D88EE:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D8914
	ldr r2, _080D8910 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D8920
_080D890C: .4byte 0x03000FD8
_080D8910: .4byte 0x00002002
_080D8914:
	ldr r2, _080D89EC @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D8920:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D8936
	movs r2, #0x01
_080D8936:
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
_080D8950:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D895E
	cmp r2, #0x04
	bne _080D8968
_080D895E:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D8968:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D897C
	cmp r2, #0x04
	bne _080D89BE
_080D897C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D898A
	adds r0, #0xFF
_080D898A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8998
	adds r0, #0xFF
_080D8998:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D89A6
	adds r0, #0xFF
_080D89A6:
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
_080D89BE:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D89CC
	cmp r1, #0x04
	bne _080D8A30
_080D89CC:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D89F4
	ldr r2, _080D89F0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D8A00
	.byte 0x00, 0x00
_080D89EC: .4byte 0x0000204F
_080D89F0: .4byte 0x00002002
_080D89F4:
	ldr r2, _080D8A50 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D8A00:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D8A16
	movs r2, #0x01
_080D8A16:
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
_080D8A30:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D8A3E
	cmp r2, #0x04
	bne _080D8A48
_080D8A3E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D8A48:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D8A50: .4byte 0x0000204F
	thumb_func_start sub_80D8A54
sub_80D8A54:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080D8B00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x74]
	adds r5, r3, #0x0
	adds r5, #0x08
	adds r6, r4, #0x0
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1D]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080D8B10
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x48
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0xF3
	strh r0, [r1, #0x00]
	ldr r0, _080D8B04 @ =0x0843868D
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
	bgt _080D8AC4
	ldr r2, _080D8B08 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D8AFA
_080D8AC4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D8ACC
	adds r1, #0xFF
_080D8ACC:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D8AE2
	adds r2, #0xFF
_080D8AE2:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D8B0C @ =0x000006C4
	str r4, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D8AFA:
	movs r0, #0x00
	b _080D8C4E
	.byte 0x00, 0x00
_080D8B00: .4byte 0x03000FD8
_080D8B04: .4byte 0x0843868D
_080D8B08: .4byte 0x00000111
_080D8B0C: .4byte 0x000006C4
_080D8B10:
	ldr r0, _080D8C58 @ =0x00000111
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x48
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0xF3
	strh r0, [r1, #0x00]
	ldr r0, _080D8C5C @ =0x0843868D
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
	bgt _080D8B68
	ldr r2, _080D8C58 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D8B9E
_080D8B68:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D8B70
	adds r1, #0xFF
_080D8B70:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D8B86
	adds r2, #0xFF
_080D8B86:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D8C60 @ =0x000006C4
	str r4, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D8B9E:
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080D8BE0
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r2, r1, #0x0
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	adds r5, r6, #0x0
	adds r5, #0x7C
	cmp r0, #0x00
	bne _080D8BD4
	movs r3, #0x80
_080D8BC2:
	ldr r2, [r2, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080D8BC2
_080D8BD4:
	adds r4, r2, #0x0
	adds r4, #0x08
	ldrh r1, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	strh r1, [r0, #0x00]
_080D8BE0:
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8BF4
	cmp r1, #0x04
	bne _080D8C4C
_080D8BF4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C02
	adds r0, #0xFF
_080D8C02:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C10
	adds r0, #0xFF
_080D8C10:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C1E
	adds r0, #0xFF
_080D8C1E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C38
	adds r0, #0xFF
_080D8C38:
	asrs r0, r0, #0x08
	adds r0, #0x40
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D8C4C:
	ldr r0, _080D8C64 @ =0x080D8C69
_080D8C4E:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8C58: .4byte 0x00000111
_080D8C5C: .4byte 0x0843868D
_080D8C60: .4byte 0x000006C4
_080D8C64: .4byte sub_80D8C68
	thumb_func_start sub_80D8C68
sub_80D8C68:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8CBA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	movs r3, #0x00
	str r3, [r4, #0x4C]
	ldr r0, [r5, #0x28]
	ldr r1, _080D8CB4 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080D8CB8
	adds r0, r5, #0x0
	bl sub_8086700
	b _080D8CBA
	.byte 0x00, 0x00
_080D8CB4: .4byte 0x00000111
_080D8CB8:
	str r3, [r5, #0x4C]
_080D8CBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80D8CC0
sub_80D8CC0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8D12
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	movs r3, #0x00
	str r3, [r4, #0x4C]
	ldr r0, [r5, #0x28]
	ldr r1, _080D8D0C @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080D8D10
	adds r0, r5, #0x0
	bl sub_8086700
	b _080D8D12
	.byte 0x00, 0x00
_080D8D0C: .4byte 0x00000111
_080D8D10:
	str r3, [r5, #0x4C]
_080D8D12:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80D8D18
sub_80D8D18:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D8D50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087DE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8D4A
	ldr r0, _080D8D54 @ =0x080D69D9
	str r0, [r6, #0x4C]
_080D8D4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8D50: .4byte 0x03000FD8
_080D8D54: .4byte sub_80D69D8
	thumb_func_start sub_80D8D58
sub_80D8D58:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D8DBC @ =0x03000FD8
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
	beq _080D8DB6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8D8C
	cmp r1, #0x04
	bne _080D8DB2
_080D8D8C:
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
_080D8DB2:
	ldr r0, _080D8DC0 @ =0x080D3225
	str r0, [r6, #0x4C]
_080D8DB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8DBC: .4byte 0x03000FD8
_080D8DC0: .4byte sub_80D3224
	thumb_func_start sub_80D8DC4
sub_80D8DC4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D8DDE
	adds r0, #0xFF
_080D8DDE:
	asrs r0, r0, #0x08
	mov r5, r12
	strh r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D8DF8
	adds r0, #0xFF
_080D8DF8:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080D8E50
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _080D8E58 @ =0x080D8E5D
	str r0, [r4, #0x50]
_080D8E50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8E58: .4byte sub_80D8E5C
	thumb_func_start sub_80D8E5C
sub_80D8E5C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
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
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _080D8EE0 @ =0x080D8EE5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D8EE0: .4byte sub_80D8EE4
	thumb_func_start sub_80D8EE4
sub_80D8EE4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D8F5C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080D8F5C
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
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
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D8F64 @ =0x080D8F69
	str r0, [r4, #0x4C]
_080D8F5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8F64: .4byte sub_80D8F68
	thumb_func_start sub_80D8F68
sub_80D8F68:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080D8F8A
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D8F90 @ =0x0808750D
	str r0, [r4, #0x4C]
_080D8F8A:
	pop {r4}
	pop {r0}
	bx r0
_080D8F90: .4byte sub_808750C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA1, 0x8F, 0x0D, 0x08
	thumb_func_start sub_80D8FA0
sub_80D8FA0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x06
	adds r0, r0, r3
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
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D9014 @ =0x080D9019
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9014: .4byte sub_80D9018
	thumb_func_start sub_80D9018
sub_80D9018:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D9082
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xAE
	adds r1, r4, #0x0
	adds r1, #0xB0
	adds r2, r4, #0x0
	adds r2, #0xB2
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080D908C @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0x82
	lsls r3, r3, #0x01
	str r3, [sp, #0x010]
	str r5, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r4, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080D9090 @ =0x080D90BD
	str r0, [r4, #0x58]
	ldr r0, _080D9094 @ =0x080D909D
	str r0, [r4, #0x60]
	ldr r0, _080D9098 @ =0x080D8DC5
	str r0, [r4, #0x4C]
_080D9082:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D908C: .4byte 0x000004CC
_080D9090: .4byte sub_80D90BC
_080D9094: .4byte sub_80D909C
_080D9098: .4byte sub_80D8DC4
	thumb_func_start sub_80D909C
sub_80D909C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087124
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80D90BC
sub_80D90BC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80D90DC
sub_80D90DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	mov r9, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D90F8
	b _080D9286
_080D90F8:
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _080D9104
	adds r2, #0xFF
_080D9104:
	asrs r2, r2, #0x08
	mov r5, r9
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080D9110
	adds r3, #0xFF
_080D9110:
	asrs r3, r3, #0x08
	mov r5, r9
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D911C
	adds r0, #0xFF
_080D911C:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080D9298 @ =0x00004070
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r9
	str r7, [r0, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r5, r9
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
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
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080D929C @ =0x080D92B1
	str r0, [r7, #0x4C]
	ldr r0, _080D92A0 @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r9
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080D92A4 @ =0x080D99F1
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r9
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, r7, #0x0
	adds r4, #0x98
	mov r2, r9
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	mov r10, r0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xAE
	movs r5, #0xB0
	adds r5, r5, r7
	mov r8, r5
	adds r0, r7, #0x0
	adds r0, #0xB2
	str r0, [sp, #0x018]
	mov r0, r10
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	mov r0, r10
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x00]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D92A8 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	adds r0, r6, #0x0
	mov r1, r8
	ldr r2, [sp, #0x018]
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r1, r9
	str r4, [r1, #0x6C]
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x09
	cmp r1, r0
	bne _080D9264
	movs r2, #0x05
_080D9264:
	mov r0, r9
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r9
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D92AC @ =0x080D99D5
	str r0, [r5, #0x4C]
_080D9286:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9298: .4byte 0x00004070
_080D929C: .4byte sub_80D92B0
_080D92A0: .4byte sub_8087540
_080D92A4: .4byte sub_80D99F0
_080D92A8: .4byte 0x000004CC
_080D92AC: .4byte sub_80D99D4
	thumb_func_start sub_80D92B0
sub_80D92B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	adds r0, r0, r1
	strh r0, [r6, #0x00]
	movs r1, #0xAE
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x98
	ldr r1, [r5, #0x00]
	cmp r0, r1
	bgt _080D9362
	str r1, [r4, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r5, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	lsrs r0, r3, #0x1F
	adds r3, r3, r0
	asrs r3, r3, #0x01
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	str r0, [sp, #0x008]
	ldr r0, _080D9370 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_808552C
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _080D9374 @ =0x080D9379
	str r0, [r4, #0x4C]
_080D9362:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9370: .4byte 0x000004CC
_080D9374: .4byte sub_80D9378
	thumb_func_start sub_80D9378
sub_80D9378:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r5, #0x3C]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _080D9414
	str r1, [r5, #0x18]
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	movs r1, #0x16
	movs r2, #0x01
	bl sub_807B838
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r1, [r5, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8086150
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x18]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x1C]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x20]
	ldr r0, _080D941C @ =0x080D99A1
	str r0, [r6, #0x54]
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
_080D9414:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D941C: .4byte sub_80D99A0
	thumb_func_start sub_80D9420
sub_80D9420:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D943A
	adds r0, #0xFF
_080D943A:
	asrs r0, r0, #0x08
	mov r5, r12
	strh r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D9454
	adds r0, #0xFF
_080D9454:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _080D94AC
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _080D94B4 @ =0x080D94B9
	str r0, [r4, #0x50]
_080D94AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D94B4: .4byte sub_80D94B8
	thumb_func_start sub_80D94B8
sub_80D94B8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
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
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _080D9528 @ =0x080D952D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9528: .4byte sub_80D952C
	thumb_func_start sub_80D952C
sub_80D952C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D959A
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080D959A
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
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
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D95A0 @ =0x0808750D
	str r0, [r4, #0x4C]
_080D959A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D95A0: .4byte sub_808750C
	thumb_func_start sub_80D95A4
sub_80D95A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D95C0
	b _080D9752
_080D95C0:
	mov r0, r10
	ldr r1, [r0, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _080D95CC
	adds r2, #0xFF
_080D95CC:
	asrs r2, r2, #0x08
	mov r5, r10
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080D95D8
	adds r3, #0xFF
_080D95D8:
	asrs r3, r3, #0x08
	mov r5, r10
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D95E4
	adds r0, #0xFF
_080D95E4:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080D9764 @ =0x00004070
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r10
	str r7, [r0, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r5, r10
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
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
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080D9768 @ =0x080D977D
	str r0, [r7, #0x4C]
	ldr r0, _080D976C @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r10
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080D9770 @ =0x080D99F1
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r10
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r7, #0x0
	adds r1, #0x98
	mov r2, r10
	ldr r0, [r2, #0x2C]
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xAE
	movs r5, #0xB0
	adds r5, r5, r7
	mov r8, r5
	movs r0, #0xB2
	adds r0, r0, r7
	mov r9, r0
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x000]
	mov r0, r10
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D9774 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	adds r0, r6, #0x0
	mov r1, r8
	mov r2, r9
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r1, r10
	str r4, [r1, #0x6C]
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x09
	cmp r1, r0
	bne _080D9730
	movs r2, #0x05
_080D9730:
	mov r0, r10
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r10
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D9778 @ =0x080D9985
	str r0, [r5, #0x4C]
_080D9752:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9764: .4byte 0x00004070
_080D9768: .4byte sub_80D977C
_080D976C: .4byte sub_8087540
_080D9770: .4byte sub_80D99F0
_080D9774: .4byte 0x000004CC
_080D9778: .4byte sub_80D9984
	thumb_func_start sub_80D977C
sub_80D977C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	adds r0, r0, r1
	strh r0, [r6, #0x00]
	movs r1, #0xAE
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x98
	ldr r1, [r5, #0x00]
	cmp r0, r1
	bgt _080D9836
	str r1, [r4, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r5, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	lsrs r0, r3, #0x1F
	adds r3, r3, r0
	asrs r3, r3, #0x01
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D9844 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_808552C
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _080D9848 @ =0x080D984D
	str r0, [r4, #0x4C]
_080D9836:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9844: .4byte 0x000004CC
_080D9848: .4byte sub_80D984C
	thumb_func_start sub_80D984C
sub_80D984C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r5, #0x00]
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	adds r7, r4, #0x0
	adds r7, #0xAE
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r3, r4, #0x0
	adds r3, #0x98
	ldr r1, [r3, #0x00]
	cmp r0, r1
	bgt _080D98E4
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	str r0, [sp, #0x008]
	ldr r0, _080D98F0 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_808552C
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _080D98F4 @ =0x080D98F9
	str r0, [r4, #0x4C]
_080D98E4:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D98F0: .4byte 0x000004CC
_080D98F4: .4byte sub_80D98F8
	thumb_func_start sub_80D98F8
sub_80D98F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r3, [r4, #0x38]
	adds r0, r3, r0
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r5, [r4, #0x3C]
	adds r0, r5, r0
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r6, [r4, #0x40]
	adds r1, r6, r1
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080D9978
	str r0, [r4, #0x18]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080D9946
	adds r0, #0xFF
_080D9946:
	asrs r7, r0, #0x08
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _080D9950
	adds r0, #0xFF
_080D9950:
	asrs r2, r0, #0x08
	adds r1, r6, #0x0
	cmp r1, #0x00
	bge _080D995A
	adds r1, #0xFF
_080D995A:
	asrs r3, r1, #0x08
	ldr r0, [r4, #0x2C]
	str r0, [sp, #0x000]
	ldr r0, _080D9980 @ =0x00000C6E
	adds r1, r7, #0x0
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080D9978:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9980: .4byte 0x00000C6E
	thumb_func_start sub_80D9984
sub_80D9984:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D999A
	adds r0, r2, #0x0
	bl sub_8087540
_080D999A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80D99A0
sub_80D99A0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807F4FC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
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
	ldr r0, _080D99D0 @ =0x080D9A99
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D99D0: .4byte sub_80D9A98
	thumb_func_start sub_80D99D4
sub_80D99D4:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D99EA
	adds r0, r2, #0x0
	bl sub_8087540
_080D99EA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80D99F0
sub_80D99F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080D9A2C
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r1, #0x00
	ldsh r0, [r2, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r0, _080D9A34 @ =0x080D9B25
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D9A2C:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_080D9A34: .4byte sub_80D9B24
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x7D, 0x9A, 0x0D, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x09, 0x9B, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x16, 0x20, 0xA6, 0xF7
	.byte 0x17, 0xF9, 0x21, 0x1C, 0xA4, 0x31, 0x08, 0x60, 0x00, 0x28, 0x03, 0xDB, 0x00, 0x48, 0x02, 0xE0
	.byte 0x09, 0x9B, 0x0D, 0x08, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x7D, 0x9A, 0x0D, 0x08
	thumb_func_start sub_80D9A7C
sub_80D9A7C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080D9A8C
	ldr r0, _080D9A94 @ =0x080D9B9D
	str r0, [r4, #0x4C]
_080D9A8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9A94: .4byte sub_80D9B9C
	thumb_func_start sub_80D9A98
sub_80D9A98:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9AF8
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r4, [r0, #0x00]
	str r4, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAE
	adds r1, #0x18
	adds r2, r6, #0x0
	adds r2, #0xB2
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r3, [r6, #0x40]
	subs r4, r4, r3
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080D9B00 @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0x82
	lsls r3, r3, #0x01
	str r3, [sp, #0x010]
	str r5, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r6, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D9B04 @ =0x080D9421
	str r0, [r6, #0x4C]
_080D9AF8:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D9B00: .4byte 0x000004CC
_080D9B04: .4byte sub_80D9420
	thumb_func_start sub_80D9B08
sub_80D9B08:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080D9B18
	ldr r0, _080D9B20 @ =0x080D9BE1
	str r0, [r4, #0x4C]
_080D9B18:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9B20: .4byte sub_80D9BE0
	thumb_func_start sub_80D9B24
sub_80D9B24:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r2, #0x00]
	subs r0, #0x5E
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _080D9B52
	adds r0, #0xFF
_080D9B52:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _080D9B5E
	adds r0, #0xFF
_080D9B5E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080D9B6A
	adds r0, #0xFF
_080D9B6A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	blt _080D9B8E
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _080D9B94
_080D9B8E:
	adds r0, r4, #0x0
	bl sub_807C298
_080D9B94:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80D9B9C
sub_80D9B9C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x06
	cmp r1, r0
	bne _080D9BB6
	movs r2, #0x02
_080D9BB6:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
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
	ldr r0, _080D9BDC @ =0x080D9C25
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D9BDC: .4byte sub_80D9C24
	thumb_func_start sub_80D9BE0
sub_80D9BE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x06
	cmp r1, r0
	bne _080D9BFA
	movs r2, #0x02
_080D9BFA:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
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
	ldr r0, _080D9C20 @ =0x080D9C6D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D9C20: .4byte sub_80D9C6C
	thumb_func_start sub_80D9C24
sub_80D9C24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9C62
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x07
	cmp r1, r0
	bne _080D9C4A
	movs r2, #0x03
_080D9C4A:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080D9C68 @ =0x080D9CB5
	str r0, [r4, #0x4C]
_080D9C62:
	pop {r4}
	pop {r0}
	bx r0
_080D9C68: .4byte sub_80D9CB4
	thumb_func_start sub_80D9C6C
sub_80D9C6C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9CAA
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x07
	cmp r1, r0
	bne _080D9C92
	movs r2, #0x03
_080D9C92:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080D9CB0 @ =0x080D9D09
	str r0, [r4, #0x4C]
_080D9CAA:
	pop {r4}
	pop {r0}
	bx r0
_080D9CB0: .4byte sub_80D9D08
	thumb_func_start sub_80D9CB4
sub_80D9CB4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9CFE
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x08
	cmp r1, r0
	bne _080D9CDE
	movs r2, #0x04
_080D9CDE:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
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
	ldr r0, _080D9D04 @ =0x080D95A5
	str r0, [r4, #0x4C]
_080D9CFE:
	pop {r4}
	pop {r0}
	bx r0
_080D9D04: .4byte sub_80D95A4
	thumb_func_start sub_80D9D08
sub_80D9D08:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9D52
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x08
	cmp r1, r0
	bne _080D9D32
	movs r2, #0x04
_080D9D32:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
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
	ldr r0, _080D9D58 @ =0x080D90DD
	str r0, [r4, #0x4C]
_080D9D52:
	pop {r4}
	pop {r0}
	bx r0
_080D9D58: .4byte sub_80D90DC
	thumb_func_start sub_80D9D5C
sub_80D9D5C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9DCA
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
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
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, _080D9DD0 @ =0x080D9DD5
	str r0, [r4, #0x4C]
_080D9DCA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D9DD0: .4byte sub_80D9DD4
	thumb_func_start sub_80D9DD4
sub_80D9DD4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D9E20
	adds r6, r4, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9E20
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _080D9E28 @ =0x0000138A
	adds r0, r4, #0x0
	bl sub_8086858
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _080D9E2C @ =0x080D9E35
	str r0, [r4, #0x5C]
	str r5, [r4, #0x54]
	strh r5, [r6, #0x00]
	ldr r0, _080D9E30 @ =0x080D9E9D
	str r0, [r4, #0x4C]
_080D9E20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9E28: .4byte 0x0000138A
_080D9E2C: .4byte sub_80D9E34
_080D9E30: .4byte sub_80D9E9C
	thumb_func_start sub_80D9E34
sub_80D9E34:
	push {r4, r5, lr}
	ldr r0, [r0, #0x28]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8086C64
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _080D9E4E
	adds r0, r5, #0x0
	bl sub_80D9F34
_080D9E4E:
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xBD, 0x9E, 0x0D, 0x08, 0x01, 0x49
	.byte 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xF5, 0x9E, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x07, 0x48
	.byte 0xE0, 0x64, 0xC0, 0xF0, 0x5A, 0xF8, 0x01, 0x1C, 0x02, 0x20, 0x03, 0xF1, 0x7C, 0xFC, 0x00, 0x28
	.byte 0x01, 0xD0, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xF5, 0x9E
	.byte 0x0D, 0x08, 0xBD, 0x9E, 0x0D, 0x08
