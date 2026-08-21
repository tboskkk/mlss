	.syntax unified
	.text

	thumb_func_start sub_80F0C08
sub_80F0C08:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0x0
	ldr r1, _080F0C50 @ =0x03000FD0
	ldr r0, [r1, #0x00]
	movs r3, #0xA8
	lsls r3, r3, #0x02
	adds r3, r3, r0
	mov r12, r3
	movs r6, #0x00
	mov r8, r1
_080F0C20:
	mov r7, r8
	ldr r3, [r7, #0x00]
	ldr r1, _080F0C54 @ =0x0000055B
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1C
	asrs r0, r6
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F0C68
	cmp r5, #0x00
	beq _080F0C58
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	adds r0, #0x04
	mov r3, r12
	ldrb r3, [r3, #0x1C]
	cmp r0, r3
	bne _080F0C68
	b _080F0CA6
	.byte 0x00, 0x00
_080F0C50: .4byte 0x03000FD0
_080F0C54: .4byte 0x0000055B
_080F0C58:
	movs r7, #0xA9
	lsls r7, r7, #0x03
	adds r0, r3, r7
	ldrb r0, [r0, #0x00]
	mov r1, r12
	ldrb r1, [r1, #0x1C]
	cmp r0, r1
	beq _080F0CA6
_080F0C68:
	mov r4, r12
	adds r4, #0x20
	adds r1, r6, #0x1
	mov r7, r8
	ldr r3, [r7, #0x00]
	ldr r7, _080F0C94 @ =0x0000055B
	adds r0, r3, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1C
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F0CAE
	cmp r5, #0x00
	beq _080F0C98
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	adds r0, #0x04
	b _080F0CA0
_080F0C94: .4byte 0x0000055B
_080F0C98:
	movs r1, #0xA9
	lsls r1, r1, #0x03
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
_080F0CA0:
	ldrb r4, [r4, #0x1C]
	cmp r0, r4
	bne _080F0CAE
_080F0CA6:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
	b _080F0CBA
_080F0CAE:
	movs r3, #0x40
	add r12, r3
	adds r6, #0x02
	cmp r6, #0x03
	ble _080F0C20
	movs r0, #0x01
_080F0CBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
