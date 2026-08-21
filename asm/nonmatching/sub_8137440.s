	.syntax unified
	.text

	thumb_func_start sub_8137440
sub_8137440:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0xE6
	lsls r1, r1, #0x01
	adds r2, r5, r1
	lsls r0, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r1, r5, r3
	adds r1, r1, r0
	movs r4, #0x00
	ldsh r0, [r1, r4]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r3, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r1, r5, r4
	adds r1, r1, r2
	ldrh r4, [r1, #0x00]
	adds r3, #0x20
	strb r4, [r3, #0x00]
	ldr r3, _081374CC @ =0x00000239
	adds r1, r5, r3
	strb r4, [r1, #0x00]
	adds r2, r6, r2
	ldrh r2, [r2, #0x00]
	ldr r4, _081374D0 @ =0x0000023E
	adds r1, r5, r4
	strh r2, [r1, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081374D4
	mov r1, sp
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0x04
	b _081374DC
_081374CC: .4byte 0x00000239
_081374D0: .4byte 0x0000023E
_081374D4:
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r1, sp
	movs r0, #0x06
_081374DC:
	strb r0, [r1, #0x01]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	add r0, sp
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_80478AC
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldr r0, [r5, #0x0C]
	str r0, [r2, #0x00]
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _08137530
	cmp r0, #0x02
	bhi _08137520
	cmp r0, #0x00
	beq _0813752A
	b _08137548
_08137520:
	cmp r0, #0x04
	beq _08137536
	cmp r0, #0x06
	beq _08137540
	b _08137548
_0813752A:
	movs r2, #0x38
	ldsh r0, [r6, r2]
	b _0813753A
_08137530:
	movs r3, #0x3E
	ldsh r0, [r6, r3]
	b _08137544
_08137536:
	movs r4, #0x3A
	ldsh r0, [r6, r4]
_0813753A:
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	b _08137548
_08137540:
	movs r1, #0x3C
	ldsh r0, [r6, r1]
_08137544:
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
_08137548:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
