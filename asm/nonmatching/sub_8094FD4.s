	.syntax unified
	.text

	thumb_func_start sub_8094FD4
sub_8094FD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08094FF4
	ldr r2, _08094FFC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08094FF4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094FFC: .4byte 0x0000204D
