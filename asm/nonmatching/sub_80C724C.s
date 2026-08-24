	.syntax unified
	.text

	thumb_func_start sub_80C724C
sub_80C724C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C72A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r6
	mov r8, r1
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	ldr r4, _080C72A4 @ =0x00000FFF
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x03
	bgt _080C72AC
	ldr r2, _080C72A8 @ =0x083B89F8
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080C733E
_080C72A0: .4byte 0x03000FD8
_080C72A4: .4byte 0x00000FFF
_080C72A8: .4byte dword_83B89F8 @ =0x083B89F8
_080C72AC:
	ldr r5, _080C72D4 @ =0x083B8A00
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C72D8
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080C72F2
	.byte 0x00, 0x00
_080C72D4: .4byte byte_83B8A00 @ =0x083B8A00
_080C72D8:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080C72F2:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C731E
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080C7338
_080C731E:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080C7338:
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0xB2
_080C733E:
	strh r1, [r0, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _080C734A
	adds r0, #0xFF
_080C734A:
	asrs r0, r0, #0x08
	subs r1, r0, #0x4
	mov r0, r8
	ldr r2, [r0, #0x14]
	cmp r2, #0x00
	bge _080C7358
	adds r2, #0xFF
_080C7358:
	asrs r2, r2, #0x08
	mov r0, r8
	ldr r3, [r0, #0x18]
	cmp r3, #0x00
	bge _080C7364
	adds r3, #0xFF
_080C7364:
	asrs r3, r3, #0x08
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r0, _080C7400 @ =0x00002FE6
	bl sub_80DF024
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C7384
	cmp r2, #0x04
	bne _080C73A0
_080C7384:
	ldr r2, _080C7404 @ =0x00002063
	adds r0, r7, #0x0
	movs r1, #0x04
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
_080C73A0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C73AE
	cmp r2, #0x04
	bne _080C73DE
_080C73AE:
	ldr r2, _080C7408 @ =0x03001038
	ldr r0, _080C740C @ =0x0819832C
	ldr r1, _080C7410 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x04
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C73DE:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C7414 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C7418 @ =0x080C741D
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C7400: .4byte 0x00002FE6
_080C7404: .4byte 0x00002063
_080C7408: .4byte 0x03001038
_080C740C: .4byte 0x0819832C
_080C7410: .4byte 0x08198220
_080C7414: .4byte 0x00000FFF
_080C7418: .4byte sub_80C741C
