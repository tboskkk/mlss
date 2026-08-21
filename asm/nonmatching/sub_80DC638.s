	.syntax unified
	.text

	thumb_func_start sub_80DC638
sub_80DC638:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DC65C
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DC664 @ =0x080DC27D
	str r0, [r4, #0x4C]
_080DC65C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC664: .4byte sub_80DC27C
