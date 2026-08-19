	.syntax unified
	.text

	thumb_func_start sub_80197C4
sub_80197C4:
	push {lr}
	adds r3, r0, #0x0
	movs r2, #0x00
	movs r1, #0x01
_080197CC:
	adds r2, #0x01
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r1, r0, #0x01
	cmp r1, r3
	ble _080197CC
	adds r0, r2, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
