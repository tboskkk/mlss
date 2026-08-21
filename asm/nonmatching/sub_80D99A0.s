	.syntax unified
	.text

	thumb_func_start sub_80D99A0
sub_80D99A0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807F4FC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D99D0 @ =0x080D9A99
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D99D0: .4byte sub_80D9A98
