	.syntax unified
	.text

	thumb_func_start sub_81124D0
sub_81124D0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x8A
	movs r2, #0x6C
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08112514 @ =0x081127B9
	str r0, [r4, #0x4C]
	ldr r0, _08112518 @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08112514: .4byte sub_81127B8
_08112518: .4byte 0x0000011B
