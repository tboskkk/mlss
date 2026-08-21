	.syntax unified
	.text

	thumb_func_start sub_80D25F8
sub_80D25F8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D265C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2624
	cmp r1, #0x04
	bne _080D2628
_080D2624:
	ldr r0, _080D2660 @ =0x080D29D5
	str r0, [r2, #0x4C]
_080D2628:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D263A
	cmp r1, #0x04
	bne _080D2652
_080D263A:
	ldr r2, _080D2664 @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D2652:
	ldr r0, _080D2668 @ =0x080D266D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_080D265C: .4byte 0x03000FD8
_080D2660: .4byte sub_80D29D4
_080D2664: .4byte 0x00002036
_080D2668: .4byte sub_80D266C
