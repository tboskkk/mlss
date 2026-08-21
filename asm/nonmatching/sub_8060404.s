	.syntax unified
	.text

	thumb_func_start sub_8060404
sub_8060404:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806042C
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08060434 @ =0x08060501
	str r0, [r4, #0x4C]
_0806042C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060434: .4byte sub_8060500
