	.syntax unified
	.text

	thumb_func_start sub_80DBDE8
sub_80DBDE8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x30
	strh r0, [r1, #0x00]
	ldr r0, _080DBE14 @ =0x080DB861
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080DBE14: .4byte sub_80DB860
