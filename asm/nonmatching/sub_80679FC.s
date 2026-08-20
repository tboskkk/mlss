	.syntax unified
	.text

	thumb_func_start sub_80679FC
sub_80679FC:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08067A1C
	adds r0, r2, #0x0
	adds r0, #0x8C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	str r1, [r0, #0x00]
	ldr r0, _08067A20 @ =0x08067A4D
	str r0, [r2, #0x4C]
_08067A1C:
	pop {r0}
	bx r0
_08067A20: .4byte sub_8067A4C
