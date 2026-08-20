	.syntax unified
	.text

	thumb_func_start sub_813B564
sub_813B564:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B578 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	bne _0813B57C
	movs r0, #0x00
	b _0813B5A8
	.byte 0x00, 0x00
_0813B578: .4byte 0x000002DE
_0813B57C:
	ldr r1, _0813B5B0 @ =0x00000242
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
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813B5A8:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813B5B0: .4byte 0x00000242
