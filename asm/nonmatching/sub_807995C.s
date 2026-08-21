	.syntax unified
	.text

	thumb_func_start sub_807995C
sub_807995C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079974
	adds r1, #0xFF
_08079974:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807997E
	adds r2, #0xFF
_0807997E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08079988
	adds r3, #0xFF
_08079988:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080799A8 @ =0x00002A8B
	bl sub_80DF024
	ldr r0, _080799AC @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080799B0 @ =0x08078E2D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080799A8: .4byte 0x00002A8B
_080799AC: .4byte 0x00000119
_080799B0: .4byte sub_8078E2C
