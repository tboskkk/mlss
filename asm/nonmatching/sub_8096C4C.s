	.syntax unified
	.text

	thumb_func_start sub_8096C4C
sub_8096C4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, _08096D74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r7, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _08096D78 @ =0x03001038
	ldr r2, _08096D7C @ =0x0819832C
	ldr r3, _08096D80 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _08096C9E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _08096CA0
_08096C9E:
	movs r1, #0x00
_08096CA0:
	cmp r1, #0x00
	beq _08096CD2
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096CB6
	cmp r1, #0x04
	bne _08096CD2
_08096CB6:
	adds r0, r5, #0x0
	movs r1, #0x02
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
_08096CD2:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08096D68
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x9F
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x08]
	bl sub_807FB64
	ldr r0, [r5, #0x28]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096D08
	cmp r1, #0x04
	bne _08096D20
_08096D08:
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08096D20:
	ldr r0, [r7, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08096D64
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096D64
	ldr r2, _08096D84 @ =0x00002051
	cmp r7, r8
	bne _08096D4A
	subs r2, #0x2F
_08096D4A:
	adds r0, r7, #0x0
	movs r1, #0x08
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
_08096D64:
	ldr r0, _08096D88 @ =0x08095E05
	str r0, [r5, #0x4C]
_08096D68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096D74: .4byte 0x03000FD8
_08096D78: .4byte 0x03001038
_08096D7C: .4byte 0x0819832C
_08096D80: .4byte 0x08198220
_08096D84: .4byte 0x00002051
_08096D88: .4byte sub_8095E04
