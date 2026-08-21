	.syntax unified
	.text

	thumb_func_start sub_806CBCC
sub_806CBCC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0806CCAC
	movs r7, #0x00
	str r7, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CC60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	ldr r0, [r0, #0x30]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806CC22
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _0806CC64
_0806CC22:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	subs r1, #0x26
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	b _0806CC9E
	.byte 0x00, 0x00
_0806CC60: .4byte 0x03000FD8
_0806CC64:
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r7, [r0, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
_0806CC9E:
	ldr r0, _0806CCB4 @ =0x0806D3C5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806CCAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CCB4: .4byte sub_806D3C4
