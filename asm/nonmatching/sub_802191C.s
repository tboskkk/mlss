	.syntax unified
	.text

	thumb_func_start sub_802191C
sub_802191C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08021A0C @ =0x0203FFB8
	adds r6, r3, #0x0
	adds r6, #0x0C
	movs r2, #0x00
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	lsls r1, r0, #0x10
	ldr r4, _08021A10 @ =0x0000FFFF
	cmp r0, r4
	beq _080219FC
	lsrs r1, r1, #0x1A
	mov r12, r1
	movs r1, #0x0F
	mov r10, r1
	mov r2, r10
	mov r1, r12
	ands r2, r1
	mov r12, r2
	ldr r1, _08021A14 @ =0x000003FF
	adds r7, r1, #0x0
	ands r7, r0
	movs r5, #0x00
	ldrb r3, [r3, #0x04]
	cmp r3, #0x0F
	bgt _080219FA
	mov r8, r4
	mov r9, r1
	lsls r0, r3, #0x01
	adds r4, r0, r6
	movs r0, #0x10
	subs r0, r0, r3
	movs r6, #0x01
	ands r0, r6
	cmp r3, #0x10
	bge _08021972
	cmp r0, #0x00
	beq _080219A0
_08021972:
	ldrh r2, [r4, #0x00]
	lsls r0, r2, #0x10
	cmp r2, r8
	beq _08021998
	lsrs r0, r0, #0x1A
	mov r1, r10
	ands r0, r1
	mov r1, r9
	ands r1, r2
	cmp r12, r0
	bne _08021998
	cmp r7, r1
	bne _08021998
	mov r2, r8
	strh r2, [r4, #0x00]
	adds r0, r6, #0x0
	lsls r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08021998:
	adds r4, #0x02
	adds r3, #0x01
	cmp r3, #0x0F
	bgt _080219FA
_080219A0:
	ldrh r2, [r4, #0x00]
	lsls r1, r2, #0x10
	cmp r2, r8
	beq _080219C8
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	mov r0, r9
	ands r0, r2
	cmp r12, r1
	bne _080219C8
	cmp r7, r0
	bne _080219C8
	mov r0, r8
	strh r0, [r4, #0x00]
	movs r0, #0x01
	lsls r0, r3
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080219C8:
	adds r6, r3, #0x1
	ldrh r2, [r4, #0x02]
	lsls r1, r2, #0x10
	cmp r2, r8
	beq _080219F2
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	mov r0, r9
	ands r0, r2
	cmp r12, r1
	bne _080219F2
	cmp r7, r0
	bne _080219F2
	mov r1, r8
	strh r1, [r4, #0x02]
	movs r0, #0x01
	lsls r0, r6
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080219F2:
	adds r4, #0x04
	adds r3, #0x02
	cmp r3, #0x0F
	ble _080219A0
_080219FA:
	adds r2, r5, #0x0
_080219FC:
	adds r0, r2, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08021A0C: .4byte 0x0203FFB8
_08021A10: .4byte 0x0000FFFF
_08021A14: .4byte 0x000003FF
