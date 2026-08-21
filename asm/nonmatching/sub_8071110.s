	.syntax unified
	.text

	thumb_func_start sub_8071110
sub_8071110:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071156
	ldr r0, _0807115C @ =0x0000011B
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x0A
	strh r1, [r0, #0x00]
	subs r0, #0x10
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071160 @ =0x08071245
	str r0, [r4, #0x58]
	ldr r0, _08071164 @ =0x08071205
	str r0, [r4, #0x60]
	ldr r0, _08071168 @ =0x0806EDBD
	str r0, [r4, #0x4C]
_08071156:
	pop {r4}
	pop {r0}
	bx r0
_0807115C: .4byte 0x0000011B
_08071160: .4byte sub_8071244
_08071164: .4byte sub_8071204
_08071168: .4byte sub_806EDBC
