	.syntax unified
	.text

	thumb_func_start sub_8067838
sub_8067838:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0806786C
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0x14
	str r0, [r1, #0x00]
	ldr r0, _08067868 @ =0x080679FD
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _0806786E
_08067868: .4byte sub_80679FC
_0806786C:
	adds r0, r4, #0x0
_0806786E:
	pop {r4, r5}
	pop {r1}
	bx r1
