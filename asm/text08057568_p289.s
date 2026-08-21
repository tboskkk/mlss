	.include "asm/macros.inc"

	.syntax unified
	.text

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
