	.syntax unified
	.text

	thumb_func_start sub_80774A4
sub_80774A4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0x9C
	movs r1, #0x01
	ands r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080774C8
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080774D4
_080774C8:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080774D4:
	ldr r0, _080774E0 @ =0x08076D91
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080774E0: .4byte sub_8076D90
