	.syntax unified
	.text

	thumb_func_start sub_809AFB4
sub_809AFB4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B008
	ldr r2, _0809B010 @ =0x000040BE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x28
	bl sub_81DD77C
	adds r0, #0x1E
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0A
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0xA8
	adds r0, #0x32
	str r0, [r1, #0x00]
	ldr r0, _0809B014 @ =0x0809A9A1
	str r0, [r4, #0x4C]
_0809B008:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B010: .4byte 0x000040BE
_0809B014: .4byte sub_809A9A0
