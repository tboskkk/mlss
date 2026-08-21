	.syntax unified
	.text

	thumb_func_start sub_809A808
sub_809A808:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A84E
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0809A834
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809A840
_0809A834:
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809A840:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _0809A854 @ =0x0809A859
	str r0, [r4, #0x4C]
_0809A84E:
	pop {r4}
	pop {r0}
	bx r0
_0809A854: .4byte sub_809A858
