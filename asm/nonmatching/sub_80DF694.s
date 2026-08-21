	.syntax unified
	.text

	thumb_func_start sub_80DF694
sub_80DF694:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x01
	bne _080DF6C4
	ldr r1, [r5, #0x0C]
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x12]
	ldrh r0, [r1, #0x02]
	adds r0, #0x01
	strh r0, [r5, #0x14]
	ldrh r0, [r1, #0x04]
	adds r0, #0x01
	strh r0, [r5, #0x16]
_080DF6C4:
	ldr r0, [r5, #0x08]
	mov r9, r0
	movs r2, #0x10
	ldsh r1, [r5, r2]
	mov r10, r1
	movs r0, #0x12
	ldsh r7, [r5, r0]
	movs r2, #0x14
	ldsh r1, [r5, r2]
	mov r8, r1
	movs r1, #0x16
	ldsh r0, [r5, r1]
	str r0, [sp, #0x000]
	mov r0, r9
	adds r1, r7, #0x0
	mov r2, r8
	bl sub_80E1880
	mov r2, r9
	ldr r0, [r2, #0x28]
	cmp r0, #0x00
	beq _080DF746
	adds r0, #0x08
	cmp r0, r9
	bne _080DF746
	ldr r4, [r2, #0x30]
	cmp r4, #0x00
	beq _080DF71A
_080DF6FC:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DF714
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	mov r2, r8
	bl sub_80E1880
_080DF714:
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _080DF6FC
_080DF71A:
	mov r0, r9
	ldr r6, [r0, #0x28]
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _080DF746
	adds r4, r0, #0x0
	cmp r4, r6
	beq _080DF746
_080DF72A:
	ldr r1, [r4, #0x10]
	mov r2, r9
	ldr r0, [r2, #0x08]
	cmp r1, r0
	beq _080DF740
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r1, r7, #0x0
	mov r2, r8
	bl sub_80E1880
_080DF740:
	ldr r4, [r4, #0x00]
	cmp r4, r6
	bne _080DF72A
_080DF746:
	cmp r7, #0x00
	beq _080DF76E
	lsls r0, r7, #0x01
	ldr r1, _080DF75C @ =0x0838F8B2
	adds r1, r0, r1
	movs r2, #0x04
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _080DF760
	movs r0, #0x00
	b _080DF76C
_080DF75C: .4byte 0x0838F8B2
_080DF760:
	movs r2, #0x04
	ldsh r0, [r1, r2]
	cmp r0, r10
	bge _080DF76E
	ldrh r0, [r5, #0x12]
	adds r0, #0x03
_080DF76C:
	strh r0, [r5, #0x12]
_080DF76E:
	mov r0, r8
	cmp r0, #0x00
	beq _080DF79A
	lsls r0, r0, #0x01
	ldr r1, _080DF788 @ =0x0838F8B2
	adds r2, r0, r1
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080DF78C
	movs r0, #0x00
	b _080DF798
	.byte 0x00, 0x00
_080DF788: .4byte 0x0838F8B2
_080DF78C:
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, r10
	bge _080DF79A
	ldrh r0, [r5, #0x14]
	adds r0, #0x03
_080DF798:
	strh r0, [r5, #0x14]
_080DF79A:
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	beq _080DF7E8
	lsls r1, r2, #0x01
	ldr r0, _080DF7BC @ =0x0838F8B2
	adds r2, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, r10
	bge _080DF7C8
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080DF7C0
	movs r0, #0x00
	strh r0, [r5, #0x16]
	b _080DF7E8
_080DF7BC: .4byte 0x0838F8B2
_080DF7C0:
	ldrh r0, [r5, #0x16]
	adds r0, #0x02
	strh r0, [r5, #0x16]
	b _080DF7E8
_080DF7C8:
	cmp r0, r10
	bne _080DF7E8
	mov r1, r9
	ldr r0, [r1, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080DF7E8
	movs r0, #0x02
	ldsh r1, [r2, r0]
	mov r0, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080DF7E8:
	movs r1, #0x12
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bne _080DF7F8
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bne _080DF7F8
	str r0, [r5, #0x04]
_080DF7F8:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
