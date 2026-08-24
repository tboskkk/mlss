	.syntax unified
	.text

	thumb_func_start sub_8105D0C
sub_8105D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldrh r1, [r7, #0x10]
	movs r2, #0x10
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	beq _08105D26
	subs r0, r1, #0x1
	strh r0, [r7, #0x10]
	b _08105DDA
_08105D26:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08105DDA
	ldr r0, _08105DE8 @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldr r2, _08105DEC @ =0x0000033F
	mov r8, r2
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r3, _08105DF0 @ =0x00002038
	cmp r2, #0x00
	beq _08105D54
	adds r3, #0x2F
_08105D54:
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08105DF4 @ =0x00008004
	movs r1, #0x03
	movs r2, #0x02
	movs r3, #0x00
	bl sub_8084338
	adds r4, r0, #0x0
	str r4, [r7, #0x08]
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105D7C
	adds r0, #0xFF
_08105D7C:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105D8C
	adds r0, #0xFF
_08105D8C:
	asrs r1, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08105DF8 @ =0x083B950C
	ldrb r0, [r0, #0x03]
	strh r0, [r7, #0x10]
	ldr r0, _08105DFC @ =0x08105E01
	str r0, [r7, #0x04]
	mov r1, r9
	ldr r0, [r1, #0x00]
	add r0, r8
	ldrb r0, [r0, #0x00]
	movs r2, #0xEF
	cmp r0, #0x00
	beq _08105DD0
	movs r2, #0xFD
_08105DD0:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08105DDA:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105DE8: .4byte 0x03000FD8
_08105DEC: .4byte 0x0000033F
_08105DF0: .4byte 0x00002038
_08105DF4: .4byte 0x00008004
_08105DF8: .4byte byte_83B950C @ =0x083B950C
_08105DFC: .4byte sub_8105E00
