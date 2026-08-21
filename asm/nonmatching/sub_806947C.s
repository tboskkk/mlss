	.syntax unified
	.text

	thumb_func_start sub_806947C
sub_806947C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080694A8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _080694B0 @ =0x08068F3D
	str r0, [r4, #0x4C]
_080694A8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080694B0: .4byte sub_8068F3C
