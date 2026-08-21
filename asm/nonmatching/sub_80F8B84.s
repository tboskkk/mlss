	.syntax unified
	.text

	thumb_func_start sub_80F8B84
sub_80F8B84:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r0, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r0
	mov r12, r1
	movs r5, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x05
	mov r8, r0
	ldr r7, _080F8BD8 @ =0x00000FF7
_080F8BA4:
	cmp r12, r4
	beq _080F8BEA
	mov r0, r12
	adds r0, #0xA0
	ldrh r3, [r0, #0x00]
	mov r0, r8
	ands r0, r3
	cmp r0, #0x00
	beq _080F8BE2
	adds r0, r4, #0x0
	adds r0, #0xFE
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r1, r0, #0x1D
	mov r0, r12
	adds r0, #0xFE
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r3, r0, #0x1D
	cmp r6, r5
	ble _080F8BDC
	adds r0, r1, #0x1
	cmp r3, r0
	blt _080F8C50
	b _080F8BEA
	.byte 0x00, 0x00
_080F8BD8: .4byte 0x00000FF7
_080F8BDC:
	cmp r3, r1
	bge _080F8BEA
	b _080F8C50
_080F8BE2:
	adds r0, r7, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _080F8C50
_080F8BEA:
	adds r2, r5, #0x1
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r12, r1
	cmp r12, r4
	beq _080F8C32
	mov r0, r12
	adds r0, #0xA0
	ldrh r3, [r0, #0x00]
	mov r0, r8
	ands r0, r3
	cmp r0, #0x00
	beq _080F8C2A
	adds r0, r4, #0x0
	adds r0, #0xFE
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r1, r0, #0x1D
	mov r0, r12
	adds r0, #0xFE
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r3, r0, #0x1D
	cmp r6, r2
	ble _080F8C24
	adds r0, r1, #0x1
	cmp r3, r0
	blt _080F8C50
	b _080F8C32
_080F8C24:
	cmp r3, r1
	bge _080F8C32
	b _080F8C50
_080F8C2A:
	adds r0, r7, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _080F8C50
_080F8C32:
	adds r5, #0x02
	movs r0, #0x80
	lsls r0, r0, #0x01
	add r12, r0
	cmp r5, #0x05
	ble _080F8BA4
	movs r0, #0x01
	cmp r0, #0x00
	beq _080F8C50
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8C5C @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080F8C50:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F8C5C: .4byte 0x0000EFFF
