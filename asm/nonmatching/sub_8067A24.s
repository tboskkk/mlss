	.syntax unified
	.text

	thumb_func_start sub_8067A24
sub_8067A24:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08067A40
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08067A48 @ =0x08066EE1
	str r0, [r4, #0x4C]
_08067A40:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067A48: .4byte sub_8066EE0
