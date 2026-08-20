	.syntax unified
	.text

	thumb_func_start sub_8161814
sub_8161814:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x02
	ldsh r0, [r2, r1]
	cmp r0, #0x01
	beq _0816182A
	cmp r0, #0x01
	ble _08161880
	cmp r0, #0x02
	beq _08161870
	b _08161880
_0816182A:
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08161840
	movs r0, #0x50
	strh r0, [r2, #0x00]
	ldrh r0, [r2, #0x02]
	adds r0, #0x01
	strh r0, [r2, #0x02]
_08161840:
	ldr r1, [r2, #0x10]
	movs r3, #0xFA
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldr r3, _0816186C @ =0xFFFFFC18
	adds r0, r0, r3
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x08]
	asrs r1, r1, #0x08
	ldrh r3, [r2, #0x04]
	adds r1, r1, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x0C]
	ldr r0, [r2, #0x14]
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x06]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	b _08161880
	.byte 0x00, 0x00
_0816186C: .4byte 0xFFFFFC18
_08161870:
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08161880
	movs r0, #0x01
	b _08161882
_08161880:
	movs r0, #0x00
_08161882:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
