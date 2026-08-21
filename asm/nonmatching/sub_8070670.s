	.syntax unified
	.text

	thumb_func_start sub_8070670
sub_8070670:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r0, _080706AC @ =0x080706B1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080706AC: .4byte sub_80706B0
