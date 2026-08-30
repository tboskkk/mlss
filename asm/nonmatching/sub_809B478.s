	.syntax unified
	.text

	thumb_func_start sub_809B478
sub_809B478:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0809B4B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B49E
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B4DC
_0809B49E:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	cmp r5, r6
	bne _0809B4BC
	ldr r2, _0809B4B8 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x03
	b _0809B4C2
_0809B4B4: .4byte 0x03000FD8
_0809B4B8: .4byte 0x000040BF
_0809B4BC:
	ldr r2, _0809B4E4 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x06
_0809B4C2:
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
	ldr r0, _0809B4E8 @ =0x0809B1A1
	str r0, [r4, #0x4C]
_0809B4DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B4E4: .4byte 0x000040BF
_0809B4E8: .4byte sub_809B1A0
