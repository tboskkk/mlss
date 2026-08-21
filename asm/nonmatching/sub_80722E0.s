	.syntax unified
	.text

	thumb_func_start sub_80722E0
sub_80722E0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, _080722F4 @ =0x080722F9
	str r1, [r4, #0x4C]
	pop {r4}
	pop {r1}
	bx r1
_080722F4: .4byte sub_80722F8
