	.syntax unified
	.text

	thumb_func_start sub_8112030
sub_8112030:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08112058
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x20
	strh r1, [r0, #0x00]
	ldr r0, _08112060 @ =0x08112451
	str r0, [r4, #0x4C]
_08112058:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08112060: .4byte sub_8112450
