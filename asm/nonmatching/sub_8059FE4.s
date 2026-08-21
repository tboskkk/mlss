	.syntax unified
	.text

	thumb_func_start sub_8059FE4
sub_8059FE4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8059F24
	adds r0, r4, #0x0
	bl sub_80582DC
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_80587BC
	adds r0, r4, #0x0
	bl sub_8058278
	adds r0, r4, #0x0
	bl sub_80584F8
	pop {r4}
	pop {r0}
	bx r0
