	.syntax unified
	.text

	thumb_func_start sub_80744B4
sub_80744B4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080744CC
	adds r1, #0xFF
_080744CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080744D6
	adds r2, #0xFF
_080744D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080744E0
	adds r3, #0xFF
_080744E0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074500 @ =0x000022E2
	bl sub_80DF024
	movs r0, #0x8B
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _08074504 @ =0x080746C5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074500: .4byte 0x000022E2
_08074504: .4byte sub_80746C4
