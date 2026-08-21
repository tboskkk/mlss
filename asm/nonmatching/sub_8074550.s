	.syntax unified
	.text

	thumb_func_start sub_8074550
sub_8074550:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807456E
	adds r0, #0xFF
_0807456E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807457C
	adds r0, #0xFF
_0807457C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807458A
	adds r0, #0xFF
_0807458A:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080745A0 @ =0x000022DC
	bl sub_80DF024
	ldr r0, _080745A4 @ =0x08073C19
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080745A0: .4byte 0x000022DC
_080745A4: .4byte sub_8073C18
