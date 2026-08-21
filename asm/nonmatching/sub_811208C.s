	.syntax unified
	.text

	thumb_func_start sub_811208C
sub_811208C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081120A2
	adds r0, #0xFF
_081120A2:
	asrs r1, r0, #0x08
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081120B0
	adds r0, #0xFF
_081120B0:
	asrs r2, r0, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081120BA
	adds r3, #0xFF
_081120BA:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	movs r2, #0xA4
	bl sub_8111E30
	ldr r0, _081120E0 @ =0x08111C25
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_081120E0: .4byte sub_8111C24
