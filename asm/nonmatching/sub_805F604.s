	.syntax unified
	.text

	thumb_func_start sub_805F604
sub_805F604:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0805F62C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0805F634 @ =0x0805F639
	str r0, [r4, #0x4C]
_0805F62C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F634: .4byte sub_805F638
