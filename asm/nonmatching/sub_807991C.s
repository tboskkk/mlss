	.syntax unified
	.text

	thumb_func_start sub_807991C
sub_807991C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0807992A
	str r0, [r4, #0x4C]
	b _0807994C
_0807992A:
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079954 @ =0x08079BA9
	str r0, [r4, #0x4C]
	ldr r2, [r4, #0x30]
	adds r1, r2, #0x0
	adds r1, #0xA0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08079958 @ =0x0807940D
	str r0, [r2, #0x4C]
_0807994C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079954: .4byte sub_8079BA8
_08079958: .4byte sub_807940C
