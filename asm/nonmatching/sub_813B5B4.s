	.syntax unified
	.text

	thumb_func_start sub_813B5B4
sub_813B5B4:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B604 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B60C
	ldr r1, _0813B608 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B60E
	.byte 0x00, 0x00
_0813B604: .4byte 0x000002DE
_0813B608: .4byte 0x00000242
_0813B60C:
	movs r0, #0x00
_0813B60E:
	pop {r4}
	pop {r1}
	bx r1
