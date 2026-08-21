	.syntax unified
	.text

	thumb_func_start sub_806EA54
sub_806EA54:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806EA98
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806EA76
	adds r1, #0xFF
_0806EA76:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806EA80
	adds r2, #0xFF
_0806EA80:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806EA8A
	adds r3, #0xFF
_0806EA8A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806EAA0 @ =0x00001E8A
	bl sub_80DF024
	ldr r0, _0806EAA4 @ =0x0806EAA9
	str r0, [r4, #0x4C]
_0806EA98:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806EAA0: .4byte 0x00001E8A
_0806EAA4: .4byte sub_806EAA8
