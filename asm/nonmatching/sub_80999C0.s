	.syntax unified
	.text

	thumb_func_start sub_80999C0
sub_80999C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, _08099A50 @ =0xFFFFFD34
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _08099A0E
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080999F0
	adds r1, #0xFF
_080999F0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080999FA
	adds r2, #0xFF
_080999FA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08099A04
	adds r3, #0xFF
_08099A04:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08099A54 @ =0x00000D1D
	bl sub_80DF024
_08099A0E:
	ldr r0, [r6, #0x08]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x30
	negs r0, r0
	cmp r1, r0
	bge _08099A7E
	ldr r0, _08099A58 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0x90
	lsls r2, r2, #0x09
	adds r0, r0, r2
	str r0, [r6, #0x10]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x14]
	ldr r5, [r1, #0x00]
	movs r7, #0x00
	movs r0, #0x41
	negs r0, r0
	mov r8, r0
	b _08099A5E
	.byte 0x00, 0x00
_08099A50: .4byte 0xFFFFFD34
_08099A54: .4byte 0x00000D1D
_08099A58: .4byte 0x03000FD8
_08099A5C:
	ldr r5, [r5, #0x00]
_08099A5E:
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r5, #0x0
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	mov r2, r8
	ands r0, r2
	strb r0, [r1, #0x00]
	str r7, [r4, #0x2C]
	str r7, [r4, #0x6C]
	ldr r0, [r6, #0x28]
	cmp r5, r0
	bne _08099A5C
_08099A7E:
	ldr r0, [r6, #0x28]
	adds r0, #0xD8
	ldr r1, [r6, #0x38]
	ldr r2, [r0, #0x00]
	cmp r1, r2
	blt _08099AAC
	ldr r0, [r6, #0x10]
	cmp r2, r0
	blt _08099AAC
	str r2, [r6, #0x10]
	movs r1, #0x01
	negs r1, r1
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
	str r0, [r6, #0x4C]
_08099AAC:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
