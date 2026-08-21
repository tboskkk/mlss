	.syntax unified
	.text

	thumb_func_start sub_8070D60
sub_8070D60:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
	ldr r0, _08070D84 @ =0x08071081
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070D84: .4byte sub_8071080
