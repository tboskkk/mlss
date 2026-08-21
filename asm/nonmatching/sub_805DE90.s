	.syntax unified
	.text

	thumb_func_start sub_805DE90
sub_805DE90:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805DEA6
	ldr r0, _0805DEAC @ =0x0805DEB5
	str r0, [r1, #0x4C]
	ldr r0, _0805DEB0 @ =0x0000011B
	bl stop_sfx_80195A8
_0805DEA6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DEAC: .4byte sub_805DEB4
_0805DEB0: .4byte 0x0000011B
