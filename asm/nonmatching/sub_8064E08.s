	.syntax unified
	.text

	thumb_func_start sub_8064E08
sub_8064E08:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08064E24
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064E2C @ =0x08064559
	str r0, [r4, #0x4C]
_08064E24:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064E2C: .4byte sub_8064558
