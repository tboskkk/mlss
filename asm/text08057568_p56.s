	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FBA28
sub_80FBA28:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x0C
	ldr r5, [r1, #0x00]
	movs r0, #0x0C
	ldsb r0, [r2, r0]
	cmp r0, #0x00
	bge _080FBA6C
	ldrb r1, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FBA56
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FBA66
	b _080FBB44
_080FBA56:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	mov r1, sp
	strb r0, [r1, #0x00]
_080FBA66:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _080FBA70
_080FBA6C:
	movs r0, #0x0C
	ldsb r0, [r2, r0]
_080FBA70:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r0, [r5, #0x0C]
	ldr r1, [r4, #0x0C]
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	ldr r2, [r4, #0x10]
	subs r1, r1, r2
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bhi _080FBB44
	lsls r0, r0, #0x02
	ldr r1, _080FBA98 @ =0x080FBA9C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080FBA98: .4byte 0x080FBA9C
	.byte 0xBC, 0xBA, 0x0F, 0x08, 0xCA, 0xBA, 0x0F, 0x08, 0xD6, 0xBA, 0x0F, 0x08, 0xF0, 0xBA, 0x0F, 0x08
	.byte 0xFE, 0xBA, 0x0F, 0x08, 0x0C, 0xBB, 0x0F, 0x08, 0x1E, 0xBB, 0x0F, 0x08, 0x2E, 0xBB, 0x0F, 0x08
	.byte 0x20, 0x1C, 0x24, 0x30, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x02, 0x38, 0x2E, 0xE0, 0x20, 0x1C
	.byte 0x24, 0x30, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x20, 0xE0, 0x20, 0x1C, 0x24, 0x30, 0x01, 0x78
	.byte 0x07, 0x20, 0x08, 0x40, 0x00, 0x28, 0x2F, 0xD0, 0x48, 0x07, 0x40, 0x0F, 0x03, 0x28, 0x2B, 0xD8
	.byte 0x01, 0x20, 0x2A, 0xE0, 0x20, 0x1C, 0x24, 0x30, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x02, 0x38
	.byte 0x0C, 0xE0, 0x20, 0x1C, 0x24, 0x30, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x03, 0x38, 0x05, 0xE0
	.byte 0x20, 0x1C, 0x24, 0x30, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x04, 0x38, 0x02, 0x28, 0x13, 0xD8
	.byte 0xE6, 0xE7, 0x20, 0x1C, 0x24, 0x30, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x04, 0x28, 0x0B, 0xD9
	.byte 0xDE, 0xE7, 0x20, 0x1C, 0x24, 0x30, 0x01, 0x78, 0x48, 0x07, 0x40, 0x0F, 0x05, 0x28, 0xD7, 0xD8
	.byte 0x07, 0x20, 0x08, 0x40, 0x00, 0x28, 0xD3, 0xD0
_080FBB44:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FBB50
sub_80FBB50:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r12, r2
	ldr r0, [sp, #0x01C]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [r7, #0x0C]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080FBB76
	adds r0, #0xFF
_080FBB76:
	asrs r5, r0, #0x08
	movs r1, #0x00
	ldsh r0, [r6, r1]
	subs r4, r5, r0
	mov r3, r12
	ldr r1, [r3, #0x0C]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FBB8A
	adds r0, #0xFF
_080FBB8A:
	asrs r3, r0, #0x08
	cmp r4, r3
	bgt _080FBC06
	movs r2, #0x02
	ldsh r0, [r6, r2]
	adds r0, r5, r0
	cmp r0, r3
	blt _080FBC06
	ldr r2, [r7, #0x10]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080FBBA4
	adds r0, #0xFF
_080FBBA4:
	asrs r5, r0, #0x08
	movs r3, #0x06
	ldsh r0, [r6, r3]
	subs r4, r5, r0
	mov r0, r12
	ldr r1, [r0, #0x10]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FBBB8
	adds r0, #0xFF
_080FBBB8:
	asrs r3, r0, #0x08
	cmp r4, r3
	bgt _080FBC06
	movs r2, #0x04
	ldsh r0, [r6, r2]
	adds r0, r5, r0
	cmp r0, r3
	blt _080FBC06
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r2, r1, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080FBBD6
	adds r0, #0xFF
_080FBBD6:
	asrs r5, r0, #0x08
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r4, r5, r0
	mov r0, r12
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r1, r1, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FBBF0
	adds r0, #0xFF
_080FBBF0:
	asrs r3, r0, #0x08
	cmp r4, r3
	bgt _080FBC06
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	cmp r0, r3
	blt _080FBC06
	movs r0, #0x01
	b _080FBC08
_080FBC06:
	movs r0, #0x00
_080FBC08:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80FBC14
sub_80FBC14:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	mov r12, r1
	mov r8, r2
	ldr r0, [sp, #0x020]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r10, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r2, _080FBC60 @ =0x083A05EC
	ldr r0, _080FBC64 @ =0x00000216
	add r0, r12
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	mov r0, r12
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _080FBC78
	cmp r0, #0x01
	bgt _080FBC68
	cmp r0, #0x00
	beq _080FBC6E
	b _080FBC8C
_080FBC60: .4byte 0x083A05EC
_080FBC64: .4byte 0x00000216
_080FBC68:
	cmp r0, #0x02
	beq _080FBC82
	b _080FBC8C
_080FBC6E:
	ldrh r0, [r4, #0x00]
	ldrh r3, [r4, #0x02]
	ldrh r5, [r4, #0x04]
	ldrh r6, [r4, #0x06]
	b _080FBC94
_080FBC78:
	ldrh r0, [r4, #0x06]
	ldrh r3, [r4, #0x04]
	ldrh r5, [r4, #0x00]
	ldrh r6, [r4, #0x02]
	b _080FBC94
_080FBC82:
	ldrh r0, [r4, #0x02]
	ldrh r3, [r4, #0x00]
	ldrh r5, [r4, #0x06]
	ldrh r6, [r4, #0x04]
	b _080FBC94
_080FBC8C:
	ldrh r0, [r4, #0x04]
	ldrh r3, [r4, #0x06]
	ldrh r5, [r4, #0x02]
	ldrh r6, [r4, #0x00]
_080FBC94:
	mov r1, r12
	ldr r4, [r1, #0x0C]
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _080FBCA0
	adds r1, #0xFF
_080FBCA0:
	asrs r7, r1, #0x08
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r7, r0
	mov r2, r8
	ldr r1, [r2, #0x0C]
	adds r2, r1, #0x0
	cmp r1, #0x00
	bge _080FBCB4
	adds r2, #0xFF
_080FBCB4:
	asrs r2, r2, #0x08
	cmp r0, r2
	bgt _080FBD34
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r7, r0
	cmp r0, r2
	blt _080FBD34
	mov r3, r12
	ldr r4, [r3, #0x10]
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _080FBCD0
	adds r0, #0xFF
_080FBCD0:
	asrs r7, r0, #0x08
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r7, r0
	mov r2, r8
	ldr r1, [r2, #0x10]
	adds r2, r1, #0x0
	cmp r1, #0x00
	bge _080FBCE4
	adds r2, #0xFF
_080FBCE4:
	asrs r2, r2, #0x08
	cmp r0, r2
	bgt _080FBD34
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r7, r0
	cmp r0, r2
	blt _080FBD34
	mov r3, r12
	ldr r1, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r2, r1, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080FBD04
	adds r0, #0xFF
_080FBD04:
	asrs r6, r0, #0x08
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r5, r6, r0
	mov r3, r8
	ldr r1, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r1, r1, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FBD1E
	adds r0, #0xFF
_080FBD1E:
	asrs r4, r0, #0x08
	cmp r5, r4
	bgt _080FBD34
	mov r2, r10
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r6, r0
	cmp r0, r4
	blt _080FBD34
	movs r0, #0x01
	b _080FBD36
_080FBD34:
	movs r0, #0x00
_080FBD36:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80FBD44
sub_80FBD44:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r4, [r0, #0x00]
	lsls r0, r4, #0x1D
	lsrs r5, r0, #0x1F
	lsls r0, r5, #0x02
	adds r0, r0, r3
	ldr r2, [r0, #0x28]
	movs r7, #0x83
	lsls r7, r7, #0x02
	mov r12, r7
	mov r1, r12
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r7, _080FBDBC @ =0x00000352
	mov r8, r7
	adds r0, r2, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	ldr r7, _080FBDC0 @ =0x0000020D
	adds r0, r2, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	bne _080FBDD0
	adds r1, r3, #0x0
	adds r1, #0x28
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	bne _080FBD9C
	adds r1, #0x04
_080FBD9C:
	ldr r2, [r1, #0x00]
	mov r1, r12
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	mov r3, r8
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	bne _080FBDC4
	movs r0, #0x00
	b _080FBDD4
_080FBDBC: .4byte 0x00000352
_080FBDC0: .4byte 0x0000020D
_080FBDC4:
	lsrs r0, r4, #0x02
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	strb r0, [r6, #0x00]
	b _080FBDD2
_080FBDD0:
	strb r5, [r6, #0x00]
_080FBDD2:
	movs r0, #0x01
_080FBDD4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
