	.syntax unified
	.text

	thumb_func_start sub_80F2618
sub_80F2618:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	movs r7, #0x01
	ldr r4, [r6, #0x2C]
_080F2624:
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F263E
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8C8C
_080F263E:
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F2654
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8C60
_080F2654:
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r8, r0
	ands r0, r1
	cmp r0, #0x00
	beq _080F266A
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F2844
_080F266A:
	ldrh r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F267E
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl sub_80EA778
_080F267E:
	lsls r0, r7, #0x10
	ldr r1, _080F27B0 @ =0xFFFF0000
	adds r0, r0, r1
	add r4, r8
	lsrs r7, r0, #0x10
	cmp r0, #0x00
	bgt _080F2624
	movs r7, #0x00
_080F268E:
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F26A8
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8C60
_080F26A8:
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F26C2
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8B84
_080F26C2:
	ldrh r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080F26D8
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F27B4
_080F26D8:
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F26EE
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8C8C
_080F26EE:
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r8, r0
	ands r0, r1
	cmp r0, #0x00
	beq _080F2704
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F2844
_080F2704:
	ldrh r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F2718
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl sub_80EA778
_080F2718:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	add r4, r8
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _080F268E
	movs r7, #0x00
	adds r5, r4, #0x0
	adds r5, #0xA0
_080F2730:
	ldrh r1, [r5, #0x00]
	movs r0, #0x84
	ands r0, r1
	cmp r0, #0x00
	bne _080F278E
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F274E
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F8B34
_080F274E:
	ldrh r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080F2764
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F27B4
_080F2764:
	ldrh r0, [r5, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F277A
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80F2844
_080F277A:
	ldrh r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F278E
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl sub_80EA778
_080F278E:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r5, r5, r2
	adds r4, r4, r2
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _080F2730
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F27B0: .4byte 0xFFFF0000
