	.syntax unified
	.text

	thumb_func_start sub_807116C
sub_807116C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071198
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x14
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x25
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080711A0 @ =0x0806FCF1
	str r0, [r4, #0x4C]
_08071198:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080711A0: .4byte sub_806FCF0
