	.syntax unified
	.text

	thumb_func_start sub_809D300
sub_809D300:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809D324
	adds r1, #0xFF
_0809D324:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809D32E
	adds r2, #0xFF
_0809D32E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809D338
	adds r3, #0xFF
_0809D338:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809D350 @ =0x00001E3D
	bl sub_80DF024
	ldr r0, _0809D354 @ =0x0809D3F5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809D350: .4byte 0x00001E3D
_0809D354: .4byte sub_809D3F4
