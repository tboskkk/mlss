	.syntax unified
	.text

	thumb_func_start sub_81332E8
sub_81332E8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08133308
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133310 @ =0x081333D9
	str r0, [r4, #0x4C]
_08133308:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133310: .4byte sub_81333D8
