	.syntax unified
	.text

	thumb_func_start sub_8066780
sub_8066780:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080667B8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080667A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080667B4
_080667A8:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080667B4:
	ldr r0, _080667C0 @ =0x08065FBD
	str r0, [r4, #0x4C]
_080667B8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080667C0: .4byte sub_8065FBC
