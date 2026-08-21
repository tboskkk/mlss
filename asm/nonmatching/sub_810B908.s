	.syntax unified
	.text

	thumb_func_start sub_810B908
sub_810B908:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, _0810B924 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	lsls r2, r6, #0x02
	adds r0, r1, #0x0
	adds r0, #0x80
	adds r0, r0, r2
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _0810B928
	movs r0, #0x00
	b _0810B98E
	.byte 0x00, 0x00
_0810B924: .4byte 0x03000FD8
_0810B928:
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r1, r3
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810B98E
	adds r0, r1, #0x0
	adds r0, #0x48
	ldr r1, _0810B954 @ =0x0810BFFD
	bl sub_807FFD8
	adds r2, r0, #0x0
	str r4, [r2, #0x08]
	ldr r0, [r5, #0x00]
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810B958
	movs r0, #0x20
	b _0810B96E
	.byte 0x00, 0x00
_0810B954: .4byte sub_810BFFC
_0810B958:
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0810B96C
	movs r0, #0x3C
	b _0810B96E
_0810B96C:
	movs r0, #0x04
_0810B96E:
	strh r0, [r2, #0x12]
	movs r1, #0x00
	movs r0, #0xA0
	strh r0, [r2, #0x14]
	strh r1, [r2, #0x16]
	ldr r0, _0810B994 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	ldr r0, _0810B998 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r0, r3
	adds r0, r0, r1
	str r2, [r0, #0x00]
	adds r0, r2, #0x0
_0810B98E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0810B994: .4byte 0x0000FFFF
_0810B998: .4byte 0x03000FD8
