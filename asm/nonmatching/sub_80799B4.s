	.syntax unified
	.text

	thumb_func_start sub_80799B4
sub_80799B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080799E2
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r1, #0x05
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r0, _080799E8 @ =0x08078A5D
	str r0, [r4, #0x4C]
_080799E2:
	pop {r4}
	pop {r0}
	bx r0
_080799E8: .4byte sub_8078A5C
