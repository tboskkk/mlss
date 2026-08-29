	.syntax unified
	.text

	thumb_func_start sub_813D8CC
sub_813D8CC:
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
	beq _0813D90E
	adds r0, r4, #0x0
	movs r1, #0x20
	bl sub_8138944
	ldr r1, _0813D914 @ =0x08136EFD
	str r1, [r5, #0x00]
	movs r2, #0xD2
	lsls r2, r2, #0x01
	adds r0, r4, r2
	str r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813D918 @ =0x0813939D
	str r0, [r1, #0x00]
_0813D90E:
	pop {r4, r5}
	pop {r0}
	bx r0
_0813D914: .4byte sub_8136EFC
_0813D918: .4byte sub_813939C
