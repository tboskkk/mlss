	.syntax unified
	.text

	thumb_func_start sub_80620C0
sub_80620C0:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x02
	bls _080620D2
	movs r0, #0x02
	b _080620D4
_080620D2:
	adds r0, #0x02
_080620D4:
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _080620E8 @ =0x08062189
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_080620E8: .4byte sub_8062188
