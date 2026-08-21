	.syntax unified
	.text

	thumb_func_start sub_8075D98
sub_8075D98:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08075DE4
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075DEC @ =0x0807536D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075DBC
	adds r1, #0xFF
_08075DBC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075DC6
	adds r2, #0xFF
_08075DC6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075DD0
	adds r3, #0xFF
_08075DD0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075DF0 @ =0x000023DE
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
_08075DE4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08075DEC: .4byte sub_807536C
_08075DF0: .4byte 0x000023DE
