	.syntax unified
	.text

	thumb_func_start sub_80605CC
sub_80605CC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080605EC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080605F4 @ =0x080602B5
	str r0, [r4, #0x4C]
_080605EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080605F4: .4byte sub_80602B4
