	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r4, _080FE670 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mvns r7, r0
	ldr r3, _080FE674 @ =0x00000342
	adds r1, r1, r3
	movs r2, #0x80
	strb r2, [r1, #0x00]
	ldr r1, [r4, #0x00]
	ldr r5, _080FE678 @ =0x0000034A
	adds r0, r1, r5
	adds r0, r0, r7
	ldrb r3, [r0, #0x00]
	ldr r6, _080FE67C @ =0x00000343
	adds r1, r1, r6
	strb r2, [r1, #0x00]
	cmp r3, #0xFF
	beq _080FE6B8
	movs r2, #0x00
	ldr r1, [r4, #0x00]
	ldr r4, _080FE680 @ =0x0000033F
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bge _080FE6B8
	subs r5, #0x2A
	adds r4, r1, r5
	adds r5, r0, #0x0
	movs r0, #0x03
	ands r0, r5
	cmp r5, #0x00
	ble _080FE6A8
	cmp r0, #0x00
	beq _080FE684
	cmp r0, #0x01
	ble _080FE6A8
	cmp r0, #0x02
	ble _080FE69C
	subs r6, #0x23
	adds r0, r1, r6
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE66A
	b _080FE862
_080FE66A:
	movs r2, #0x01
	b _080FE69C
	.byte 0x00, 0x00
_080FE670: .4byte 0x03000FD8
_080FE674: .4byte 0x00000342
_080FE678: .4byte 0x0000034A
_080FE67C: .4byte 0x00000343
_080FE680: .4byte 0x0000033F
_080FE684:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE68E
	b _080FE862
_080FE68E:
	adds r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE69A
	b _080FE862
_080FE69A:
	adds r2, #0x01
_080FE69C:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE6A6
	b _080FE862
_080FE6A6:
	adds r2, #0x01
_080FE6A8:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE6B2
	b _080FE862
_080FE6B2:
	adds r2, #0x01
	cmp r2, r5
	blt _080FE684
_080FE6B8:
	ldr r2, _080FE71C @ =0x03000FD8
	ldr r1, [r2, #0x00]
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r0, r1, r3
	adds r0, r0, r7
	ldrb r3, [r0, #0x00]
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r1, r1, r4
	movs r0, #0x80
	strb r0, [r1, #0x00]
	mov r9, r2
	ldr r5, _080FE720 @ =0x03000FF4
	mov r12, r5
	lsls r6, r7, #0x04
	mov r8, r6
	lsls r6, r7, #0x01
	cmp r3, #0xFF
	beq _080FE75C
	movs r2, #0x00
	mov r0, r9
	ldr r1, [r0, #0x00]
	subs r4, #0x04
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bge _080FE75C
	ldr r5, _080FE724 @ =0x00000323
	adds r4, r1, r5
	adds r5, r0, #0x0
	movs r0, #0x03
	ands r0, r5
	cmp r5, #0x00
	ble _080FE74C
	cmp r0, #0x00
	beq _080FE728
	cmp r0, #0x01
	ble _080FE74C
	cmp r0, #0x02
	ble _080FE740
	ldr r0, _080FE724 @ =0x00000323
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE716
	b _080FE850
_080FE716:
	movs r2, #0x01
	b _080FE740
	.byte 0x00, 0x00
_080FE71C: .4byte 0x03000FD8
_080FE720: .4byte 0x03000FF4
_080FE724: .4byte 0x00000323
_080FE728:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE732
	b _080FE850
_080FE732:
	adds r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE73E
	b _080FE850
_080FE73E:
	adds r2, #0x01
_080FE740:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE74A
	b _080FE850
_080FE74A:
	adds r2, #0x01
_080FE74C:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080FE756
	b _080FE850
_080FE756:
	adds r2, #0x01
	cmp r2, r5
	blt _080FE728
_080FE75C:
	mov r1, r9
	ldr r2, [r1, #0x00]
	movs r4, #0xC6
	lsls r4, r4, #0x02
	adds r3, r2, r4
	mov r5, r12
	ldr r1, [r5, #0x00]
	mov r4, r8
	subs r0, r4, r7
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	ldr r5, _080FE7C8 @ =0x0000034E
	adds r0, r2, r5
	adds r0, r0, r7
	ldrb r3, [r0, #0x00]
	ldr r0, _080FE7CC @ =0x00000345
	adds r2, r2, r0
	movs r0, #0x80
	strb r0, [r2, #0x00]
	cmp r3, #0xFF
	bne _080FE78C
	b _080FE8A2
_080FE78C:
	movs r2, #0x00
	mov r4, r9
	ldr r1, [r4, #0x00]
	subs r5, #0x0D
	adds r0, r1, r5
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bge _080FE7FC
	subs r5, #0x15
	adds r4, r1, r5
	adds r5, r0, #0x0
	movs r0, #0x03
	ands r0, r5
	cmp r5, #0x00
	ble _080FE7EE
	cmp r0, #0x00
	beq _080FE7D0
	cmp r0, #0x01
	ble _080FE7EE
	cmp r0, #0x02
	ble _080FE7E4
	movs r0, #0xCB
	lsls r0, r0, #0x02
	ldrb r0, [r0, r1]
	mov r8, r0
	cmp r8, r3
	bcs _080FE83C
	movs r2, #0x01
	b _080FE7E4
	.byte 0x00, 0x00
_080FE7C8: .4byte 0x0000034E
_080FE7CC: .4byte 0x00000345
_080FE7D0:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bcs _080FE83C
	adds r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bcs _080FE83C
	adds r2, #0x01
_080FE7E4:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bcs _080FE83C
	adds r2, #0x01
_080FE7EE:
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bcs _080FE83C
	adds r2, #0x01
	cmp r2, r5
	blt _080FE7D0
_080FE7FC:
	mov r1, r9
	ldr r3, [r1, #0x00]
	ldr r2, _080FE834 @ =0x00000345
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	movs r2, #0x7F
	ands r2, r0
	adds r1, r6, r7
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r0, r3, r4
	adds r0, r0, r1
	movs r4, #0x00
	ldsb r4, [r0, r4]
	subs r0, r2, r4
	cmp r0, #0x00
	bge _080FE826
	ldr r5, _080FE838 @ =0x00000341
	adds r0, r3, r5
	ldrb r0, [r0, #0x00]
	adds r2, r2, r0
_080FE826:
	ldr r1, _080FE838 @ =0x00000341
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x05
	bls _080FE878
	subs r2, r2, r4
	b _080FE87C
_080FE834: .4byte 0x00000345
_080FE838: .4byte 0x00000341
_080FE83C:
	movs r3, #0x80
	negs r3, r3
	adds r0, r3, #0x0
	ldr r4, _080FE84C @ =0x00000345
	adds r1, r1, r4
	orrs r2, r0
	strb r2, [r1, #0x00]
	b _080FE7FC
_080FE84C: .4byte 0x00000345
_080FE850:
	movs r5, #0x80
	negs r5, r5
	adds r0, r5, #0x0
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r1, r1, r3
	orrs r2, r0
	strb r2, [r1, #0x00]
	b _080FE75C
_080FE862:
	movs r4, #0x80
	negs r4, r4
	adds r0, r4, #0x0
	ldr r5, _080FE874 @ =0x00000343
	adds r1, r1, r5
	orrs r2, r0
	strb r2, [r1, #0x00]
	b _080FE6B8
	.byte 0x00, 0x00
_080FE874: .4byte 0x00000343
_080FE878:
	adds r4, r2, #0x0
	movs r2, #0x00
_080FE87C:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r1, r6, r7
	ldr r3, _080FE980 @ =0x000002CA
	adds r0, r0, r3
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	mov r5, r9
	ldr r0, [r5, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	strb r4, [r0, #0x00]
	ldr r0, [r5, #0x00]
	adds r3, #0x7F
	adds r0, r0, r3
	movs r1, #0xFF
	strb r1, [r0, #0x00]
_080FE8A2:
	ldr r4, _080FE984 @ =0x03000FD8
	adds r3, r6, r7
	movs r5, #0xB2
	lsls r5, r5, #0x02
	mov r12, r5
	ldr r0, [r4, #0x00]
	ldr r6, _080FE988 @ =0x000002C2
	adds r1, r0, r6
	add r0, r12
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r2, _080FE98C @ =0x000002C5
	adds r1, r0, r2
	adds r5, #0x06
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	movs r6, #0x00
	mov r8, r6
	ldr r0, [r4, #0x00]
	subs r2, #0x02
	adds r1, r0, r2
	adds r2, r3, #0x1
	add r0, r12
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r6, _080FE990 @ =0x000002C6
	adds r1, r0, r6
	adds r0, r0, r5
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0xB1
	lsls r2, r2, #0x02
	adds r1, r0, r2
	adds r3, #0x02
	add r0, r12
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r4, _080FE994 @ =0x000002C7
	adds r1, r0, r4
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	mov r5, r9
	ldr r1, [r5, #0x00]
	adds r6, #0x8A
	adds r0, r1, r6
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	adds r2, #0x8E
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r0, r1, r3
	movs r4, #0x00
	mov r5, r8
	strh r5, [r0, #0x00]
	subs r6, #0x3A
	adds r1, r1, r6
	movs r0, #0x7F
	strh r0, [r1, #0x00]
	bl sub_810B754
	mov r0, r9
	ldr r1, [r0, #0x00]
	ldr r2, _080FE998 @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r2, #0x00
	bl sub_810D524
	mov r5, r9
	ldr r0, [r5, #0x00]
	adds r6, #0x8F
	adds r0, r0, r6
	strb r4, [r0, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _080FE99C @ =0x080FE9A1
	mov r1, r10
	str r0, [r1, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FE980: .4byte 0x000002CA
_080FE984: .4byte 0x03000FD8
_080FE988: .4byte 0x000002C2
_080FE98C: .4byte 0x000002C5
_080FE990: .4byte 0x000002C6
_080FE994: .4byte 0x000002C7
_080FE998: .4byte 0x0000033E
_080FE99C: .4byte sub_80FE9A0
