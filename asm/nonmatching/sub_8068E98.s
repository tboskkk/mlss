	.syntax unified
	.text

	thumb_func_start sub_8068E98
sub_8068E98:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	cmp r0, r1
	blt _08068EE0
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08068EE8 @ =0x00001608
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08068EEC @ =0x03000E3C
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _08068EF0 @ =0x08068F11
	str r0, [r4, #0x4C]
_08068EE0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068EE8: .4byte 0x00001608
_08068EEC: .4byte 0x03000E3C
_08068EF0: .4byte sub_8068F10
