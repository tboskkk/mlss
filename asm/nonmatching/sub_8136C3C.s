	.syntax unified
	.text

	thumb_func_start sub_8136C3C
sub_8136C3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0x0
	mov r8, r2
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	ldrb r4, [r5, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_8047364
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8047258
	adds r0, r5, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r7, #0x01
	lsls r4, r4, #0x06
	ldrb r1, [r5, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #0x11]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08136CD4
	ldr r0, _08136CCC @ =0x0813B1A5
	mov r1, r8
	str r0, [r1, #0x00]
	subs r2, #0x26
	adds r1, r6, r2
	ldr r0, _08136CD0 @ =0x081392CD
	str r0, [r1, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08136CF2
_08136CCC: .4byte sub_813B1A4
_08136CD0: .4byte sub_81392CC
_08136CD4:
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _08136CFC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
_08136CF2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08136CFC: .4byte 0x0000FBFF
