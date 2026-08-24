	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	ldr r1, _0810CB5C @ =0x03000FD8
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x02
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r1, r2, r3
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	cmp r5, #0x00
	beq _0810CB78
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, r4
	beq _0810CB78
	movs r3, #0x00
	strh r4, [r5, #0x16]
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	lsls r1, r4, #0x01
	adds r1, r1, r4
	lsls r1, r1, #0x08
	movs r2, #0xC4
	lsls r2, r2, #0x05
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810CB60 @ =0x06010DE0
	movs r2, #0xC0
	lsls r2, r2, #0x02
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	cmp r4, #0x01
	beq _0810CB74
	cmp r4, #0x01
	bgt _0810CB64
	cmp r4, #0x00
	beq _0810CB6A
	b _0810CB78
_0810CB5C: .4byte 0x03000FD8
_0810CB60: .4byte 0x06010DE0
_0810CB64:
	cmp r4, #0x02
	beq _0810CB74
	b _0810CB78
_0810CB6A:
	ldr r0, _0810CB70 @ =0x0810B99D
	b _0810CB76
	.byte 0x00, 0x00
_0810CB70: .4byte sub_810B99C
_0810CB74:
	ldr r0, _0810CB80 @ =0x0810BD89
_0810CB76:
	str r0, [r5, #0x04]
_0810CB78:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CB80: .4byte sub_810BD88
