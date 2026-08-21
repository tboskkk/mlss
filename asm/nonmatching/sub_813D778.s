	.syntax unified
	.text

	thumb_func_start sub_813D778
sub_813D778:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldr r3, [r5, #0x00]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813D7F0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	movs r2, #0x36
	ldsh r1, [r1, r2]
	cmp r0, r1
	bcs _0813D7E0
	adds r0, r4, #0x0
	movs r1, #0x1C
	bl sub_8139070
	ldr r1, _0813D7D8 @ =0x08136C3D
	str r1, [r5, #0x00]
	movs r2, #0xD2
	lsls r2, r2, #0x01
	adds r0, r4, r2
	str r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813D7DC @ =0x0813D8CD
	str r0, [r1, #0x00]
	b _0813D7F0
_0813D7D8: .4byte sub_8136C3C
_0813D7DC: .4byte sub_813D8CC
_0813D7E0:
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0xCE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
_0813D7F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
