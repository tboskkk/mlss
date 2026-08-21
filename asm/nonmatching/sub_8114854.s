	.syntax unified
	.text

	thumb_func_start sub_8114854
sub_8114854:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08114882
	ldr r0, _08114888 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x60]
	movs r4, #0x00
	str r4, [r0, #0x54]
	ldr r0, [r1, #0x64]
	str r4, [r0, #0x54]
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r5, #0x4C]
_08114882:
	pop {r4, r5}
	pop {r0}
	bx r0
_08114888: .4byte 0x03000FD8
