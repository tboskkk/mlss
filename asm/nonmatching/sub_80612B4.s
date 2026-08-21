	.syntax unified
	.text

	thumb_func_start sub_80612B4
sub_80612B4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810DD7C
	adds r1, r4, #0x0
	adds r1, #0x80
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _080612D0 @ =0x0806123D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_080612D0: .4byte sub_806123C
