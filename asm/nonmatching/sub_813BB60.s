	.syntax unified
	.text

	thumb_func_start sub_813BB60
sub_813BB60:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, _0813BB74 @ =0x000002DE
	adds r2, r3, r0
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0813BB78
	movs r0, #0x00
	b _0813BBA4
_0813BB74: .4byte 0x000002DE
_0813BB78:
	ldr r1, _0813BBB4 @ =0x00000242
	adds r0, r3, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x0C]
	adds r0, r0, r1
	str r0, [r3, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813BBA4:
	cmp r0, #0x00
	bne _0813BBAC
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
_0813BBAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813BBB4: .4byte 0x00000242
