	.syntax unified
	.text

	thumb_func_start sub_80E5780
sub_80E5780:
	push {r4, r5, r6, lr}
	ldr r4, _080E57D8 @ =0x040000B0
	ldrh r1, [r4, #0x0A]
	ldr r0, _080E57DC @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0x0A]
	ldrh r1, [r4, #0x0A]
	ldr r0, _080E57E0 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0x0A]
	ldrh r0, [r4, #0x0A]
	ldr r1, _080E57E4 @ =0x03000FA4
	ldr r0, _080E57E8 @ =0x03000FB0
	ldr r0, [r0, #0x00]
	lsls r2, r0, #0x02
	adds r0, r2, r0
	lsls r0, r0, #0x07
	ldr r5, _080E57EC @ =0x03000FA8
	ldr r3, [r5, #0x00]
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	ldr r0, _080E57F0 @ =0x03000FAC
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r6, _080E57F4 @ =0x04000010
	adds r0, r0, r6
	str r1, [r4, #0x00]
	str r0, [r4, #0x04]
	cmp r2, #0x00
	bge _080E57C0
	adds r2, #0x03
_080E57C0:
	asrs r0, r2, #0x02
	ldr r1, _080E57F8 @ =0xA6600000
	orrs r0, r1
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r0, #0x01
	eors r3, r0
	str r3, [r5, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E57D8: .4byte 0x040000B0
_080E57DC: .4byte 0x0000C5FF
_080E57E0: .4byte 0x00007FFF
_080E57E4: .4byte 0x03000FA4
_080E57E8: .4byte 0x03000FB0
_080E57EC: .4byte 0x03000FA8
_080E57F0: .4byte 0x03000FAC
_080E57F4: .4byte 0x04000010
_080E57F8: .4byte 0xA6600000
