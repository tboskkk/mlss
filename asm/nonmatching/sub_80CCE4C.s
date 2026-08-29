	.syntax unified
	.text

	thumb_func_start sub_80CCE4C
sub_80CCE4C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CCE74 @ =0x03000FD8
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
	beq _080CCE6E
	ldr r0, _080CCE78 @ =0x080C8A7D
	str r0, [r5, #0x4C]
_080CCE6E:
	pop {r4, r5}
	pop {r0}
	bx r0
_080CCE74: .4byte 0x03000FD8
_080CCE78: .4byte sub_80C8A7C
