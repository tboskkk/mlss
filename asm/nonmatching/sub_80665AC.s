	.syntax unified
	.text

	thumb_func_start sub_80665AC
sub_80665AC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080665BE
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x30]
	b _080665C0
_080665BE:
	ldr r0, [r4, #0x30]
_080665C0:
	cmp r0, #0x00
	bne _080665F8
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080665E8
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080665F4
_080665E8:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080665F4:
	ldr r0, _08066600 @ =0x0806670D
	str r0, [r4, #0x4C]
_080665F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066600: .4byte sub_806670C
