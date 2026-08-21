	.syntax unified
	.text

	thumb_func_start sub_811E55C
sub_811E55C:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r6, #0x00
	mov r4, r12
	adds r4, #0x88
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0C]
	cmp r0, #0x00
	bne _0811E572
	movs r0, #0x00
	b _0811E67C
_0811E572:
	ldrb r0, [r2, #0x0C]
	cmp r0, #0x01
	beq _0811E57E
	cmp r0, #0x03
	beq _0811E5F0
	b _0811E67A
_0811E57E:
	ldrh r5, [r2, #0x02]
	movs r1, #0x02
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	ble _0811E5DC
	movs r3, #0xB2
	lsls r3, r3, #0x01
	add r3, r12
	movs r4, #0x00
	ldsh r1, [r3, r4]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0811E59C
	strh r6, [r2, #0x02]
	b _0811E5A2
_0811E59C:
	ldrh r0, [r3, #0x00]
	subs r0, r5, r0
	strh r0, [r2, #0x02]
_0811E5A2:
	ldr r0, _0811E5B8 @ =0x00000167
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0811E5BC
	movs r1, #0xB2
	lsls r1, r1, #0x01
	add r1, r12
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	b _0811E5CA
_0811E5B8: .4byte 0x00000167
_0811E5BC:
	cmp r0, #0x06
	bne _0811E5CC
	movs r1, #0xB2
	lsls r1, r1, #0x01
	add r1, r12
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
_0811E5CA:
	strh r0, [r1, #0x00]
_0811E5CC:
	movs r2, #0xB2
	lsls r2, r2, #0x01
	add r2, r12
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	ble _0811E640
	b _0811E646
_0811E5DC:
	movs r1, #0xB2
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0x80
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	strb r0, [r1, #0x0C]
	movs r6, #0x01
	b _0811E67A
_0811E5F0:
	ldrh r1, [r2, #0x02]
	movs r3, #0x02
	ldsh r0, [r2, r3]
	cmp r0, #0x5F
	bgt _0811E668
	movs r3, #0xB2
	lsls r3, r3, #0x01
	add r3, r12
	ldrh r0, [r3, #0x00]
	adds r0, r1, r0
	strh r0, [r2, #0x02]
	ldr r1, [r4, #0x00]
	movs r4, #0x02
	ldsh r0, [r1, r4]
	cmp r0, #0x60
	ble _0811E614
	movs r0, #0x60
	strh r0, [r1, #0x02]
_0811E614:
	ldr r0, _0811E624 @ =0x00000167
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0811E628
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	b _0811E630
_0811E624: .4byte 0x00000167
_0811E628:
	cmp r0, #0x06
	bne _0811E632
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
_0811E630:
	strh r0, [r3, #0x00]
_0811E632:
	movs r2, #0xB2
	lsls r2, r2, #0x01
	add r2, r12
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _0811E646
_0811E640:
	movs r0, #0x01
	strh r0, [r2, #0x00]
	b _0811E67A
_0811E646:
	cmp r0, #0x08
	bne _0811E67A
	ldr r1, _0811E664 @ =0x00000167
	add r1, r12
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x06
	bne _0811E67A
	movs r0, #0x07
	strh r0, [r2, #0x00]
	b _0811E67A
	.byte 0x00, 0x00
_0811E664: .4byte 0x00000167
_0811E668:
	movs r1, #0xB2
	lsls r1, r1, #0x01
	add r1, r12
	movs r2, #0x00
	movs r0, #0x80
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	strb r2, [r0, #0x0C]
	movs r6, #0x02
_0811E67A:
	adds r0, r6, #0x0
_0811E67C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
