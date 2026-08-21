	.syntax unified
	.text

	thumb_func_start sub_809A858
sub_809A858:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A894
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0809A884
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809A890
_0809A884:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809A890:
	ldr r0, _0809A89C @ =0x0809A179
	str r0, [r4, #0x4C]
_0809A894:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809A89C: .4byte sub_809A178
