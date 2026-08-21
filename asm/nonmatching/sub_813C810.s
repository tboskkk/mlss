	.syntax unified
	.text

	thumb_func_start sub_813C810
sub_813C810:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r3, #0x00]
	movs r1, #0xFF
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8137550
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_813805C
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r4, #0x0
	bl sub_8139200
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813C888 @ =0x0813C4AD
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0813C888: .4byte sub_813C4AC
