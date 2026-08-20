	.syntax unified
	.text

	thumb_func_start sub_80DEAC0
sub_80DEAC0:
	push {lr}
	adds r1, r0, #0x0
	ldr r2, [r1, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r2, r0
	ble _080DEAD8
	ldr r3, _080DEAD4 @ =0xFFFFFE00
	adds r0, r2, r3
	b _080DEADA
_080DEAD4: .4byte 0xFFFFFE00
_080DEAD8:
	movs r0, #0x00
_080DEADA:
	str r0, [r1, #0x18]
	pop {r0}
	bx r0
