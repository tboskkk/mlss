	.syntax unified
	.text

	thumb_func_start sub_806EF38
sub_806EF38:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r3, _0806EFF8 @ =0x083B873C
	ldr r2, _0806EFFC @ =0x03000E7D
	ldr r0, _0806F000 @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	ldr r0, _0806F004 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r1, #0x06
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r4, #0x28]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806EF76
	adds r0, #0xFF
_0806EF76:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806EF84
	adds r0, #0xFF
_0806EF84:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806EF94
	adds r0, #0xFF
_0806EF94:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _0806F008 @ =0x000040E8
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0x79
	adds r0, r0, r3
	mov r12, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	str r2, [r3, #0x4C]
	ldr r0, [r6, #0x28]
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, _0806F00C @ =0x000067FF
	cmp r1, r0
	bgt _0806F010
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	b _0806F01C
	.byte 0x00, 0x00
_0806EFF8: .4byte dword_83B873C @ =0x083B873C
_0806EFFC: .4byte 0x03000E7D
_0806F000: .4byte 0x03000E7C
_0806F004: .4byte 0x03000FD8
_0806F008: .4byte 0x000040E8
_0806F00C: .4byte 0x000067FF
_0806F010:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806F01C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x12
	strh r1, [r0, #0x00]
	ldr r0, _0806F030 @ =0x080709E5
	str r0, [r4, #0x4C]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806F030: .4byte sub_80709E4
