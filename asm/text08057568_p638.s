	.include "asm/macros.inc"

	.syntax unified
	.text

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
