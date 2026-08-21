	.syntax unified
	.text

	thumb_func_start sub_80DC5CC
sub_80DC5CC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DC5F0
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x20
	strh r1, [r0, #0x00]
	ldr r0, _080DC5F8 @ =0x080DC639
	str r0, [r4, #0x4C]
_080DC5F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC5F8: .4byte sub_80DC638
