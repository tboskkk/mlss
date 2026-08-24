	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080B4FCC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r9, r2
	mov r10, r9
	adds r0, r4, #0x0
	bl sub_8087EFC
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080B4EAE
	adds r0, #0xFF
_080B4EAE:
	asrs r7, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCD
	movs r5, #0x00
	ldsb r5, [r0, r5]
	cmp r7, r5
	bge _080B4F1E
	mov r3, r8
	ldr r0, [r3, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080B4F04
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4EE8
	cmp r1, #0x04
	bne _080B4F04
_080B4EE8:
	ldr r2, _080B4FD0 @ =0x00002060
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4F04:
	ldr r2, _080B4FD4 @ =0x03001038
	ldr r0, _080B4FD8 @ =0x0819832C
	ldr r1, _080B4FDC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r7, #0x08
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r3, r8
	ldr r1, [r3, #0x08]
	strh r0, [r1, #0x06]
_080B4F1E:
	mov r2, r10
	ldr r0, _080B4FE0 @ =0x00007FFF
	cmp r2, r0
	ble _080B4F28
	adds r2, r0, #0x0
_080B4F28:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r5, r0, #0x0
	cmp r1, r2
	bgt _080B4F44
	adds r0, r4, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B4F46
_080B4F44:
	movs r1, #0x00
_080B4F46:
	cmp r1, #0x00
	beq _080B4F52
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B4F52:
	mov r1, r9
	ldr r0, _080B4FE0 @ =0x00007FFF
	cmp r1, r0
	ble _080B4F5C
	adds r1, r0, #0x0
_080B4F5C:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, r1
	bgt _080B4F72
	adds r0, r4, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B4F74
_080B4F72:
	movs r2, #0x00
_080B4F74:
	cmp r2, #0x00
	beq _080B4F80
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B4F80:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B4FBA
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080B4F96
	adds r1, #0xFF
_080B4F96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080B4FA0
	adds r2, #0xFF
_080B4FA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080B4FAA
	adds r3, #0xFF
_080B4FAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080B4FE4 @ =0x00002F7D
	bl sub_80DF024
	ldr r0, _080B4FE8 @ =0x080B4FED
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080B4FBA:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B4FCC: .4byte 0x03000FD8
_080B4FD0: .4byte 0x00002060
_080B4FD4: .4byte 0x03001038
_080B4FD8: .4byte 0x0819832C
_080B4FDC: .4byte 0x08198220
_080B4FE0: .4byte 0x00007FFF
_080B4FE4: .4byte 0x00002F7D
_080B4FE8: .4byte sub_80B4FEC
