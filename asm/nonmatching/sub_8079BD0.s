	.syntax unified
	.text

	thumb_func_start sub_8079BD0
sub_8079BD0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079C00
	adds r0, r4, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x06
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r2, [r0, #0x00]
	ldr r0, _08079C08 @ =0x08078895
	str r0, [r4, #0x4C]
_08079C00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079C08: .4byte sub_8078894
