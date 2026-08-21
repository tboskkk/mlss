	.syntax unified
	.text

	thumb_func_start sub_8110A30
sub_8110A30:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08110A86
	adds r0, r4, #0x0
	movs r1, #0x20
	bl sub_80883A0
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _08110A8C @ =0x00000119
	bl stop_sfx_80195A8
	ldr r0, _08110A90 @ =0x08110A95
	str r0, [r4, #0x4C]
_08110A86:
	pop {r4}
	pop {r0}
	bx r0
_08110A8C: .4byte 0x00000119
_08110A90: .4byte sub_8110A94
