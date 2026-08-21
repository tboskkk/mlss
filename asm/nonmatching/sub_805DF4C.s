	.syntax unified
	.text

	thumb_func_start sub_805DF4C
sub_805DF4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DF7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805DF7C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DF84 @ =0x0805DA79
	str r0, [r4, #0x4C]
_0805DF7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DF84: .4byte sub_805DA78
