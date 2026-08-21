	.syntax unified
	.text

	thumb_func_start sub_80DBC3C
sub_80DBC3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x4C]
	str r0, [r4, #0x54]
	adds r0, r4, #0x0
	bl sub_8086C64
	adds r1, r0, #0x0
	cmp r1, #0x00
	bne _080DBC54
	ldr r0, _080DBC5C @ =0x080DBC61
	str r0, [r4, #0x4C]
_080DBC54:
	adds r0, r1, #0x0
	pop {r4}
	pop {r1}
	bx r1
_080DBC5C: .4byte sub_80DBC60
