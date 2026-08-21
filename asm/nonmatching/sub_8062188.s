	.syntax unified
	.text

	thumb_func_start sub_8062188
sub_8062188:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062196
	bl sub_807C298
_08062196:
	bl sub_8082B00
	cmp r0, #0x00
	bne _080621D0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _080621B2
	cmp r1, #0x01
	beq _080621C0
	b _080621CC
_080621B2:
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080621CC
_080621C0:
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080621CC:
	ldr r0, _080621D8 @ =0x080618A5
	str r0, [r4, #0x4C]
_080621D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080621D8: .4byte sub_80618A4
