	.syntax unified
	.text

	thumb_func_start sub_805C9A4
sub_805C9A4:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805C9D4 @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	ldr r3, _0805C9D8 @ =0x06004000
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C9D4: .4byte dword_8940C9C @ =0x08940C9C
_0805C9D8: .4byte 0x06004000
