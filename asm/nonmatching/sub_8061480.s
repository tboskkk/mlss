	.syntax unified
	.text

	thumb_func_start sub_8061480
sub_8061480:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080614A8
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _080614B0 @ =0x08060E91
	str r0, [r4, #0x4C]
_080614A8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080614B0: .4byte sub_8060E90
