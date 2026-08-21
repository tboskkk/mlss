	.syntax unified
	.text

	thumb_func_start sub_814D514
sub_814D514:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	adds r0, r4, #0x0
	adds r0, #0x58
	str r0, [sp, #0x014]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r4, r1
	str r1, [sp, #0x018]
	ldr r2, _0814D5C4 @ =0x00000272
	adds r1, r4, r2
	ldrh r5, [r1, #0x00]
	mov r8, r5
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrh r5, [r2, #0x00]
	mov r9, r5
	adds r0, #0x02
	adds r3, r4, r0
	ldrh r5, [r3, #0x00]
	mov r10, r5
	movs r0, #0x80
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r2, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B8A8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D582
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B878
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D5A4
_0814D582:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B8A8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D5D0
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B878
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D5D0
_0814D5A4:
	ldr r2, _0814D5C4 @ =0x00000272
	adds r0, r4, r2
	mov r5, r8
	strh r5, [r0, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	mov r2, r9
	strh r2, [r0, #0x00]
	ldr r5, _0814D5C8 @ =0x00000276
	adds r0, r4, r5
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r0, _0814D5CC @ =0x0814D671
	b _0814D65A
	.byte 0x00, 0x00
_0814D5C4: .4byte 0x00000272
_0814D5C8: .4byte 0x00000276
_0814D5CC: .4byte sub_814D670
_0814D5D0:
	ldr r2, _0814D644 @ =0x00000272
	adds r0, r4, r2
	mov r5, r8
	strh r5, [r0, #0x00]
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	mov r2, r9
	strh r2, [r0, #0x00]
	ldr r5, _0814D648 @ =0x00000276
	adds r0, r4, r5
	mov r1, r10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D65C
	adds r0, r4, #0x0
	bl sub_814DCC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814D650
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	movs r5, #0x08
	ldsh r3, [r0, r5]
	ldr r1, [sp, #0x014]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r1, [r0, #0x00]
	ldr r5, [sp, #0x014]
	adds r2, #0x04
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_814DB8C
	ldr r0, _0814D64C @ =0x0814DD15
	b _0814D65A
_0814D644: .4byte 0x00000272
_0814D648: .4byte 0x00000276
_0814D64C: .4byte sub_814DD14
_0814D650:
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_814DB8C
	ldr r0, _0814D66C @ =0x0814D35D
_0814D65A:
	str r0, [r7, #0x00]
_0814D65C:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D66C: .4byte sub_814D35C
