	.syntax unified
	.text

	thumb_func_start sub_80DF808
sub_80DF808:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	mov r8, r1
	bl sub_8199F30
	adds r4, r0, #0x0
	movs r7, #0xFF
	ands r0, r7
	lsrs r4, r4, #0x08
	adds r6, r0, #0x0
	muls r6, r0
	ldr r1, _080DF8E0 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	mvns r0, r0
	ldr r1, [r1, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	adds r0, r4, #0x0
	ands r0, r7
	lsrs r4, r4, #0x08
	ldr r1, _080DF8E4 @ =0x08198584
	ands r0, r7
	lsls r2, r0, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080DF84A
	adds r0, #0x3F
_080DF84A:
	asrs r0, r0, #0x06
	muls r0, r3
	cmp r0, #0x00
	bge _080DF854
	adds r0, #0xFF
_080DF854:
	asrs r0, r0, #0x08
	mov r12, r0
	ldr r0, _080DF8E8 @ =0x08198504
	adds r0, r2, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080DF866
	adds r0, #0x3F
_080DF866:
	asrs r0, r0, #0x06
	muls r0, r3
	cmp r0, #0x00
	bge _080DF870
	adds r0, #0xFF
_080DF870:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	ands r0, r7
	mov r3, r8
	movs r7, #0x00
	ldsh r1, [r3, r7]
	adds r1, r0, r1
	lsrs r4, r4, #0x08
	movs r3, #0x01
	ands r4, r3
	cmp r4, #0x00
	beq _080DF88A
	negs r6, r6
_080DF88A:
	mov r0, r12
	muls r0, r1
	cmp r0, #0x00
	bge _080DF896
	ldr r4, _080DF8EC @ =0x00001FFF
	adds r0, r0, r4
_080DF896:
	asrs r0, r0, #0x0D
	str r0, [r5, #0x04]
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080DF8A6
	ldr r7, _080DF8EC @ =0x00001FFF
	adds r0, r0, r7
_080DF8A6:
	asrs r0, r0, #0x0D
	str r0, [r5, #0x08]
	adds r0, r2, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080DF8B6
	ldr r1, _080DF8EC @ =0x00001FFF
	adds r0, r0, r1
_080DF8B6:
	asrs r1, r0, #0x0D
	mov r2, r8
	movs r4, #0x02
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	movs r0, #0x00
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	movs r7, #0x04
	ldsh r0, [r2, r7]
	lsls r0, r0, #0x08
	strh r0, [r5, #0x14]
	strh r3, [r5, #0x16]
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080DF8E0: .4byte 0x03001038
_080DF8E4: .4byte word_8198584 @ =0x08198584
_080DF8E8: .4byte word_8198504 @ =0x08198504
_080DF8EC: .4byte 0x00001FFF
