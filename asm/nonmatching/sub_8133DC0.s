	.syntax unified
	.text

	thumb_func_start sub_8133DC0
sub_8133DC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0x9C
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08133DF4
	movs r0, #0x80
	lsls r0, r0, #0x02
	str r0, [r4, #0x00]
	bl sub_8199F30
	adds r2, r6, #0x0
	adds r2, #0xA0
	movs r1, #0x03
	ands r1, r0
	str r1, [r2, #0x00]
	bl sub_8199F30
	adds r2, r6, #0x0
	adds r2, #0xA4
	movs r1, #0x01
	ands r1, r0
	str r1, [r2, #0x00]
_08133DF4:
	adds r7, r6, #0x0
	adds r7, #0xAC
	movs r0, #0x00
	mov r8, r0
	mov r1, r8
	strh r1, [r7, #0x00]
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08133E10
	ldr r0, [r4, #0x00]
	negs r0, r0
	str r0, [r4, #0x00]
_08133E10:
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r2, [r0, #0x00]
	cmp r2, #0x02
	beq _08133E94
	cmp r2, #0x02
	ble _08133E24
	cmp r2, #0x03
	beq _08133F14
	b _08133F5A
_08133E24:
	cmp r2, #0x00
	bge _08133E2A
	b _08133F5A
_08133E2A:
	ldr r0, _08133E8C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	str r0, [r6, #0x2C]
	adds r2, r6, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_807F4FC
	movs r0, #0x08
	strh r0, [r7, #0x00]
	ldr r0, [r6, #0x38]
	str r0, [r5, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xA8
	ldr r0, [r6, #0x3C]
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, _08133E90 @ =0x08133F6D
	b _08133EFC
	.byte 0x00, 0x00
_08133E8C: .4byte 0x03000FD8
_08133E90: .4byte sub_8133F6C
_08133E94:
	adds r2, r6, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_807F4FC
	adds r5, r6, #0x0
	adds r5, #0x84
	ldr r0, _08133F0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	ldr r3, [r0, #0x74]
	ldr r0, [r2, #0x40]
	ldr r1, [r3, #0x40]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r5, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x88
	ldr r0, [r2, #0x44]
	ldr r1, [r3, #0x44]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r4, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r6, #0x38]
	ldr r0, [r5, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08133EEA
	adds r0, #0xFF
_08133EEA:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	movs r0, #0x08
	strh r0, [r7, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x98
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, _08133F10 @ =0x08134085
_08133EFC:
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xDB
	bl play_sfx_80195B4
	b _08133F5A
	.byte 0x00, 0x00
_08133F0C: .4byte 0x03000FD8
_08133F10: .4byte sub_8134084
_08133F14:
	adds r2, r6, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	strb r1, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_807F4FC
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08133F3A
	adds r0, #0xFF
_08133F3A:
	asrs r0, r0, #0x08
	subs r0, #0x54
	str r0, [r1, #0x00]
	movs r0, #0x08
	strh r0, [r7, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x98
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, _08133F68 @ =0x08134191
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xDB
	bl play_sfx_80195B4
_08133F5A:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08133F68: .4byte sub_8134190
