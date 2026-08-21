	.syntax unified
	.text

	thumb_func_start sub_8079348
sub_8079348:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079380
	ldr r2, _08079388 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xE6
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _0807938C @ =0x08079285
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08079390 @ =0x080797E1
	str r0, [r4, #0x60]
_08079380:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079388: .4byte 0x00004029
_0807938C: .4byte sub_8079284
_08079390: .4byte sub_80797E0
