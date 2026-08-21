	.syntax unified
	.text

	thumb_func_start sub_8136EFC
sub_8136EFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r7, r0
	movs r1, #0xE2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xDC
	lsls r2, r2, #0x01
	adds r5, r7, r2
	strh r0, [r5, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	movs r6, #0xDD
	lsls r6, r6, #0x01
	adds r6, r6, r7
	mov r8, r6
	strh r0, [r6, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0F
	movs r3, #0x84
	lsls r3, r3, #0x01
	adds r1, r7, r3
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	ldr r6, _08136FA8 @ =0x00000239
	adds r1, r7, r6
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r4, r4, r0
	ldrh r1, [r4, #0x00]
	ldr r2, _08136FAC @ =0x0000023E
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r3, #0x00
	ldsh r2, [r5, r3]
	lsls r2, r2, #0x08
	mov r6, r8
	movs r0, #0x00
	ldsh r3, [r6, r0]
	lsls r3, r3, #0x08
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r7, #0x0
	bl sub_81382A8
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08136FB0 @ =0x08139365
	mov r2, r9
	str r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08136FA8: .4byte 0x00000239
_08136FAC: .4byte 0x0000023E
_08136FB0: .4byte sub_8139364
