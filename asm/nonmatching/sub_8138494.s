	.syntax unified
	.text

	thumb_func_start sub_8138494
sub_8138494:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, _08138598 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138590
	movs r4, #0xAF
	lsls r4, r4, #0x02
	adds r3, r2, r4
	ldr r0, [r2, #0x0C]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r4, r2, r5
	ldr r0, [r2, #0x10]
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r3, #0x00]
	subs r5, #0x7E
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x00]
	adds r5, #0x02
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	ldr r1, _0813859C @ =0x000002DA
	adds r0, r2, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _081384FC
	str r1, [r3, #0x00]
_081384FC:
	ldr r0, [r4, #0x00]
	cmp r0, r1
	ble _08138504
	str r1, [r4, #0x00]
_08138504:
	ldr r0, _081385A0 @ =0x000002DE
	adds r1, r2, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	cmp r3, #0x00
	ble _08138528
	ldr r0, [r2, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138542
_08138528:
	cmp r3, #0x00
	bge _0813853E
	ldr r0, [r2, #0x0C]
	ldr r5, _081385A4 @ =0xFFFFFF00
	adds r0, r0, r5
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138542
_0813853E:
	cmp r3, #0x00
	bne _0813854C
_08138542:
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x0C]
_0813854C:
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	ble _0813856C
	ldr r0, [r2, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r2, r5
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138586
_0813856C:
	cmp r3, #0x00
	bge _08138582
	ldr r0, [r2, #0x10]
	ldr r1, _081385A4 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138586
_08138582:
	cmp r3, #0x00
	bne _08138590
_08138586:
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x10]
_08138590:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138598: .4byte 0x00000216
_0813859C: .4byte 0x000002DA
_081385A0: .4byte 0x000002DE
_081385A4: .4byte 0xFFFFFF00
