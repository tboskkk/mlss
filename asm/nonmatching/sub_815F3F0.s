	.syntax unified
	.text

	thumb_func_start sub_815F3F0
sub_815F3F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815F424 @ =0x08CDCDD0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	beq _0815F408
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x40]
_0815F408:
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	beq _0815F416
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x3C]
_0815F416:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
_0815F424: .4byte 0x08CDCDD0
