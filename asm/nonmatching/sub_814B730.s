	.syntax unified
	.text

	thumb_func_start sub_814B730
sub_814B730:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	ldr r5, _0814B798 @ =0xFFFFD000
	adds r0, r0, r5
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814B79C @ =0x0814B7A5
	str r0, [r2, #0x00]
	ldr r0, _0814B7A0 @ =0x0814A185
	str r0, [r2, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B798: .4byte 0xFFFFD000
_0814B79C: .4byte sub_814B7A4
_0814B7A0: .4byte sub_814A184
