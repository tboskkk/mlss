	.syntax unified
	.text

	thumb_func_start sub_810567C
sub_810567C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _08105690
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810577C
_08105690:
	ldr r4, _081056D4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldr r1, _081056D8 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810577C
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810577C
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	bne _081056DC
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081056DC
	bl sub_8106724
	b _0810577C
	.byte 0x00, 0x00
_081056D4: .4byte 0x03000FD8
_081056D8: .4byte 0x000002BF
_081056DC:
	ldr r5, _08105784 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _08105788 @ =0x000002BF
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810577C
	movs r0, #0x01
	bl sub_8019628
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r3, r0
	ldr r7, _0810578C @ =0x03000FF4
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	strh r1, [r4, #0x0E]
	ldr r0, [r2, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bne _08105732
	movs r0, #0x01
	strh r0, [r4, #0x0E]
_08105732:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08105774
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r3, r0
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xF6
	ldrh r2, [r0, #0x00]
	strh r2, [r4, #0x0E]
	ldr r0, [r1, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x14]
	lsls r2, r2, #0x10
	cmp r2, #0x00
	bne _08105774
	movs r0, #0x01
	strh r0, [r4, #0x0E]
_08105774:
	bl sub_801A6B0
	movs r0, #0x00
	str r0, [r6, #0x04]
_0810577C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08105784: .4byte 0x03000FD8
_08105788: .4byte 0x000002BF
_0810578C: .4byte 0x03000FF4
