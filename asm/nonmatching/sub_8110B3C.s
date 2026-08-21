	.syntax unified
	.text

	thumb_func_start sub_8110B3C
sub_8110B3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08110B78
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_80883A0
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0xD5
	bl stop_sfx_80195A8
	ldr r0, _08110B80 @ =0x08110B85
	str r0, [r4, #0x4C]
_08110B78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08110B80: .4byte sub_8110B84
