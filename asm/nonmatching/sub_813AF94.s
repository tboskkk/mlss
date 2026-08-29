	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0x0
	mov r8, r1
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _0813B038 @ =0x083A05EC
	ldr r1, _0813B03C @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0x85
	lsls r2, r2, #0x02
	adds r5, r5, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r5, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B038: .4byte 0x083A05EC
_0813B03C: .4byte 0x00000216
