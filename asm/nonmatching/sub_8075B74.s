	.syntax unified
	.text

	thumb_func_start sub_8075B74
sub_8075B74:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8086C64
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08075BB0
	movs r0, #0x8C
	bl stop_sfx_80195A8
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x08]
	strh r4, [r0, #0x0C]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08075BAC @ =0x08075AE1
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _08075BB2
	.byte 0x00, 0x00
_08075BAC: .4byte sub_8075AE0
_08075BB0:
	adds r0, r4, #0x0
_08075BB2:
	pop {r4, r5}
	pop {r1}
	bx r1
