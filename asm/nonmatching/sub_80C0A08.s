	.syntax unified
	.text

	thumb_func_start sub_80C0A08
sub_80C0A08:
	push {r4, lr}
	add sp, #-0x004
	ldr r0, _080C0A54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C0A28
	adds r1, #0xFF
_080C0A28:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C0A32
	adds r2, #0xFF
_080C0A32:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C0A3C
	adds r3, #0xFF
_080C0A3C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	movs r0, #0x00
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C0A54: .4byte 0x03000FD8
