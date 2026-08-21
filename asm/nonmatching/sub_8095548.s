	.syntax unified
	.text

	thumb_func_start sub_8095548
sub_8095548:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08095574
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809557C @ =0x08095581
	str r0, [r4, #0x4C]
_08095574:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809557C: .4byte 0x08095581
	.byte 0x70, 0x47, 0x00, 0x00
