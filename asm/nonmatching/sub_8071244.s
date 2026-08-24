	.syntax unified
	.text

	thumb_func_start sub_8071244
sub_8071244:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0xD2
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0807125A
	bl _call_via_r1
_0807125A:
	ldr r1, [r4, #0x2C]
	ldr r0, _08071274 @ =0x080712AD
	str r0, [r1, #0x4C]
	ldr r0, [r1, #0x08]
	bl sub_807FB64
	ldr r0, _08071278 @ =0x0806EDBD
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08071274: .4byte 0x080712AD
_08071278: .4byte sub_806EDBC
