	.syntax unified
	.text

	thumb_func_start sub_80D8D18
sub_80D8D18:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D8D50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087DE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8D4A
	ldr r0, _080D8D54 @ =0x080D69D9
	str r0, [r6, #0x4C]
_080D8D4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8D50: .4byte 0x03000FD8
_080D8D54: .4byte sub_80D69D8
