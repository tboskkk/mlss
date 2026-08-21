	.syntax unified
	.text

	thumb_func_start sub_80DC07C
sub_80DC07C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DC0AA
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x84
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080DC0B0 @ =0x080DBFBD
	str r0, [r4, #0x4C]
_080DC0AA:
	pop {r4}
	pop {r0}
	bx r0
_080DC0B0: .4byte sub_80DBFBC
