	.syntax unified
	.text

	thumb_func_start sub_80799EC
sub_80799EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079A04
	adds r1, #0xFF
_08079A04:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08079A0E
	adds r2, #0xFF
_08079A0E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08079A18
	adds r3, #0xFF
_08079A18:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079A30 @ =0x00002A58
	bl sub_80DF024
	ldr r0, _08079A34 @ =0x08079BD1
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079A30: .4byte 0x00002A58
_08079A34: .4byte sub_8079BD0
