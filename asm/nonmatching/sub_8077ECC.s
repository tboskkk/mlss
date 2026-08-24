	.syntax unified
	.text

	thumb_func_start sub_8077ECC
sub_8077ECC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	movs r6, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08077EF4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08077EF4:
	ldr r0, [r7, #0x30]
	cmp r0, #0x00
	bne _08077FD4
	movs r0, #0x01
	movs r1, #0xFF
	movs r2, #0x00
	bl sub_80193B4
	ldr r1, _08077FE0 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x03
	adds r0, r0, r2
	strb r6, [r0, #0x00]
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r3, #0x4C]
	ldr r4, _08077FE4 @ =0x08079789
	cmp r0, r4
	bne _08077F40
	ldr r0, _08077FE8 @ =0x03000ED4
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08077F40:
	ldr r0, [r5, #0x4C]
	cmp r0, r4
	bne _08077F58
	ldr r0, _08077FEC @ =0x03000ED8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08077F58:
	ldr r1, _08077FF0 @ =0x03000F5C
	strb r6, [r1, #0x00]
	ldr r0, _08077FF4 @ =0x03000F5D
	strb r6, [r0, #0x00]
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	beq _08077F98
	mov r12, r4
	movs r0, #0x11
	negs r0, r0
	mov r8, r0
	ldr r6, _08077FF8 @ =0x03000EDC
	adds r4, r1, #0x0
_08077F72:
	ldr r0, [r3, #0x4C]
	cmp r0, r12
	bne _08077F92
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x00]
	adds r1, r0, #0x1
	strb r1, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
_08077F92:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _08077F72
_08077F98:
	ldr r3, [r5, #0x30]
	cmp r3, #0x00
	beq _08077FD0
	ldr r6, _08077FE4 @ =0x08079789
	movs r2, #0x11
	negs r2, r2
	mov r8, r2
	ldr r5, _08077FFC @ =0x03000F1C
	ldr r4, _08077FF4 @ =0x03000F5D
_08077FAA:
	ldr r0, [r3, #0x4C]
	cmp r0, r6
	bne _08077FCA
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x00]
	adds r1, r0, #0x1
	strb r1, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
_08077FCA:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _08077FAA
_08077FD0:
	movs r0, #0x00
	str r0, [r7, #0x4C]
_08077FD4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077FE0: .4byte 0x03000FD8
_08077FE4: .4byte 0x08079789
_08077FE8: .4byte 0x03000ED4
_08077FEC: .4byte 0x03000ED8
_08077FF0: .4byte 0x03000F5C
_08077FF4: .4byte 0x03000F5D
_08077FF8: .4byte 0x03000EDC
_08077FFC: .4byte 0x03000F1C
