	.syntax unified
	.text

	thumb_func_start sub_8079A38
sub_8079A38:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079A50
	adds r1, #0xFF
_08079A50:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08079A5A
	adds r2, #0xFF
_08079A5A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08079A64
	adds r3, #0xFF
_08079A64:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079A88 @ =0x000029D2
	bl sub_80DF024
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08079A8C @ =0x08078525
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079A88: .4byte 0x000029D2
_08079A8C: .4byte sub_8078524
