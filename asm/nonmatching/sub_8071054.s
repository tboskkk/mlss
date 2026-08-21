	.syntax unified
	.text

	thumb_func_start sub_8071054
sub_8071054:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071078
	movs r0, #0xA7
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_08071078:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
