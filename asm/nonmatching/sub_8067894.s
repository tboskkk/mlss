	.syntax unified
	.text

	thumb_func_start sub_8067894
sub_8067894:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x30]
	cmp r5, #0x00
	bne _080678DA
	movs r0, #0x83
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x2C]
	str r5, [r0, #0x4C]
	ldr r0, [r4, #0x08]
	bl sub_807BC90
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _080678E0 @ =0x08067791
	str r0, [r4, #0x4C]
_080678DA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080678E0: .4byte sub_8067790
	.byte 0x70, 0x47, 0x00, 0x00
