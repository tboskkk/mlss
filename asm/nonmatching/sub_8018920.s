	.syntax unified
	.text

	thumb_func_start sub_8018920
sub_8018920:
	push {r4, r5, r6, r7, lr}
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	ldr r1, _08018960 @ =0x03000374
	adds r2, r2, r1
	lsls r0, r0, #0x16
	lsrs r5, r0, #0x16
	ldrh r1, [r2, #0x00]
	adds r0, r5, #0x0
	bics r0, r1
	strh r0, [r2, #0x02]
	bics r1, r5
	strh r1, [r2, #0x04]
	movs r4, #0x00
	ldrh r7, [r2, #0x00]
	mov r12, r4
	adds r3, r2, #0x0
	adds r3, #0x0A
	ldr r6, _08018964 @ =0x0839EC6C
_08018948:
	ldrh r1, [r6, #0x00]
	ands r1, r5
	cmp r1, #0x00
	beq _0801897C
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08018968
	orrs r4, r1
	ldrb r0, [r2, #0x08]
	strb r0, [r3, #0x00]
	b _0801897E
_08018960: .4byte 0x03000374
_08018964: .4byte word_839EC6C @ =0x0839EC6C
_08018968:
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0801897E
	orrs r4, r1
	ldrb r0, [r2, #0x09]
	strb r0, [r3, #0x00]
	b _0801897E
_0801897C:
	strb r1, [r3, #0x00]
_0801897E:
	ldrh r1, [r6, #0x02]
	ands r1, r5
	cmp r1, #0x00
	beq _080189AA
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08018996
	orrs r4, r1
	ldrb r0, [r2, #0x08]
	strb r0, [r3, #0x01]
	b _080189AC
_08018996:
	ldrb r0, [r3, #0x01]
	subs r0, #0x01
	strb r0, [r3, #0x01]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080189AC
	orrs r4, r1
	ldrb r0, [r2, #0x09]
	strb r0, [r3, #0x01]
	b _080189AC
_080189AA:
	strb r1, [r3, #0x01]
_080189AC:
	adds r3, #0x02
	adds r6, #0x04
	movs r0, #0x02
	add r12, r0
	mov r0, r12
	cmp r0, #0x07
	bls _08018948
	strh r4, [r2, #0x06]
	strh r5, [r2, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
