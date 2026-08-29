	.syntax unified
	.text

	thumb_func_start sub_80DC668
sub_80DC668:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DC69A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080DC6A0 @ =0x080DC0E1
	str r0, [r4, #0x4C]
_080DC69A:
	pop {r4}
	pop {r0}
	bx r0
_080DC6A0: .4byte sub_80DC0E0
