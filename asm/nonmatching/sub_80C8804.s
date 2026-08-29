	.syntax unified
	.text

	thumb_func_start sub_80C8804
sub_80C8804:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C882C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C8826
	ldr r0, _080C8830 @ =0x080C0F31
	str r0, [r5, #0x4C]
_080C8826:
	pop {r4, r5}
	pop {r0}
	bx r0
_080C882C: .4byte 0x03000FD8
_080C8830: .4byte sub_80C0F30
