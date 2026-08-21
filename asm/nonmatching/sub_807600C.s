	.syntax unified
	.text

	thumb_func_start sub_807600C
sub_807600C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076030 @ =0x080758BD
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08076030: .4byte sub_80758BC
