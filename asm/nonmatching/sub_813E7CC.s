	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r2
	adds r6, r4, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813E7FA
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _0813E806
_0813E7FA:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0813E806:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r5, [r0, #0x28]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	subs r2, #0x20
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x34
	ldrb r3, [r0, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r2, r1, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	cmp r1, r2
	ble _0813E842
	lsls r3, r3, #0x0C
	b _0813E848
_0813E842:
	lsls r0, r3, #0x0C
	adds r0, r2, r0
	subs r3, r0, r1
_0813E848:
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x2C]
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_813A44C
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	adds r3, r2, #0x0
	cmp r2, #0x00
	bge _0813E87E
	negs r3, r2
_0813E87E:
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r0, r1, r0
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _0813E88C
	negs r1, r0
_0813E88C:
	cmp r3, r1
	ble _0813E8B4
	cmp r2, #0x00
	blt _0813E8A4
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	b _0813E8C6
_0813E8A4:
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x06
	b _0813E8C6
_0813E8B4:
	cmp r0, #0x00
	blt _0813E8CE
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
_0813E8C6:
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r3, r2, #0x0
	b _0813E8DE
_0813E8CE:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	adds r3, r0, #0x0
_0813E8DE:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0813E968 @ =0x083A05EC
	ldr r1, _0813E96C @ =0x00000216
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r0, r1
	adds r0, #0x08
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	adds r2, #0x10
	adds r1, r6, r2
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	movs r0, #0xC6
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r2, #0x08
	adds r1, r6, r2
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	ldr r0, _0813E970 @ =0x08142CF1
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813E968: .4byte 0x083A05EC
_0813E96C: .4byte 0x00000216
_0813E970: .4byte sub_8142CF0
