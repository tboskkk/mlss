	.syntax unified
	.text

	thumb_func_start sub_809BB00
sub_809BB00:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809BB18
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809BB42
_0809BB18:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	ldr r2, _0809BB48 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x09
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
	ldr r0, _0809BB4C @ =0x0809B771
	str r0, [r4, #0x4C]
_0809BB42:
	pop {r4}
	pop {r0}
	bx r0
_0809BB48: .4byte 0x000040BF
_0809BB4C: .4byte sub_809B770
