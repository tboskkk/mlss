	.syntax unified
	.text

	thumb_func_start sub_813C420
sub_813C420:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _0813C474 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, _0813C478 @ =0x0813C499
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, _0813C47C @ =0x08139421
	str r1, [r0, #0x00]
	adds r2, #0x0C
	adds r0, r4, r2
	str r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0813C474: .4byte 0x0000033E
_0813C478: .4byte sub_813C498
_0813C47C: .4byte sub_8139420
	.byte 0x70, 0x47, 0x00, 0x00
