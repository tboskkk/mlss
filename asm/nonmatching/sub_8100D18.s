	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08100D2C
	b _08100E48
_08100D2C:
	ldr r6, _08100DCC @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08100D3C
	b _08100E48
_08100D3C:
	ldr r4, [r2, #0x7C]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x6C]
	ldr r1, [r0, #0x04]
	adds r0, r5, #0x0
	bl _call_via_r1
	adds r4, #0x7F
	ldrb r1, [r4, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r4, [r6, #0x00]
	ldr r1, _08100DD0 @ =0x00000346
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100DFC
	movs r2, #0xD2
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x03
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #0x01
	lsls r1, r0, #0x02
	orrs r0, r1
	movs r1, #0x0F
	ands r0, r1
	ldrb r2, [r4, #0x08]
	movs r1, #0x10
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x08]
	ldr r4, [r5, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xFC
	movs r5, #0x00
	ldsh r3, [r0, r5]
	ldr r2, [r6, #0x00]
	ldr r1, _08100DD4 @ =0x000002BF
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	bhi _08100DD8
	movs r5, #0xD2
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	movs r5, #0xDC
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldr r2, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	b _08100DF2
	.byte 0x00, 0x00
_08100DCC: .4byte 0x03000FD8
_08100DD0: .4byte 0x00000346
_08100DD4: .4byte 0x000002BF
_08100DD8:
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r5, #0xDC
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldr r2, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r2
	ldrb r0, [r0, #0x11]
_08100DF2:
	subs r1, r3, r0
	adds r0, r4, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	b _08100E3C
_08100DFC:
	ldr r1, _08100E54 @ =0x00000347
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	adds r1, #0x01
	movs r7, #0x0F
	ands r1, r7
	ldrb r2, [r4, #0x08]
	movs r5, #0x10
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x08]
	ldr r3, [r6, #0x00]
	ldr r0, [r3, #0x7C]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08100E3C
	ldrb r2, [r3, #0x08]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1A
	ands r1, r7
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x08]
_08100E3C:
	ldr r0, _08100E58 @ =0x08100E5D
	mov r5, r8
	str r0, [r5, #0x04]
	movs r0, #0x08
	bl sub_80F75B4
_08100E48:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08100E54: .4byte 0x00000347
_08100E58: .4byte sub_8100E5C
