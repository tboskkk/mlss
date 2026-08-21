	.syntax unified
	.text

	thumb_func_start sub_8079BA8
sub_8079BA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	bne _08079BC4
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079BCC @ =0x08079C3D
	str r0, [r4, #0x4C]
_08079BC4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079BCC: .4byte sub_8079C3C
