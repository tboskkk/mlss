	.syntax unified
	.text

	thumb_func_start sub_8146498
sub_8146498:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08146552
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081464EE
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	subs r2, #0x9A
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	b _0814650A
_081464EE:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _08146534 @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
_0814650A:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08146548
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146538
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	b _0814653C
_08146534: .4byte 0x00000242
_08146538:
	movs r0, #0x04
	orrs r0, r1
_0814653C:
	strb r0, [r2, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146548:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146552:
	ldr r2, _081465A4 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0814659E
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081465A8 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081465AC @ =0x081465B1
	str r0, [r6, #0x00]
_0814659E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081465A4: .4byte 0x000002DE
_081465A8: .4byte 0x0000020D
_081465AC: .4byte sub_81465B0
