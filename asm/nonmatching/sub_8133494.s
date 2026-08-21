	.syntax unified
	.text

	thumb_func_start sub_8133494
sub_8133494:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081334E6
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081334BE
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _081334CA
_081334BE:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081334CA:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _081334EC @ =0x00000117
	subs r1, #0x11
	bl play_sfx_80195B4
	ldr r0, _081334F0 @ =0x08132F11
	str r0, [r4, #0x4C]
_081334E6:
	pop {r4}
	pop {r0}
	bx r0
_081334EC: .4byte 0x00000117
_081334F0: .4byte sub_8132F10
