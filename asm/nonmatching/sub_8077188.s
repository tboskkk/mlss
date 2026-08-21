	.syntax unified
	.text

	thumb_func_start sub_8077188
sub_8077188:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080771CC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807719E
	adds r1, #0xFF
_0807719E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080771A8
	adds r2, #0xFF
_080771A8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080771B2
	adds r3, #0xFF
_080771B2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080771D4 @ =0x000025AB
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x76
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080771CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080771D4: .4byte 0x000025AB
