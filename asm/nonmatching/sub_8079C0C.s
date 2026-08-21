	.syntax unified
	.text

	thumb_func_start sub_8079C0C
sub_8079C0C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079C2C
	ldr r2, _08079C34 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079C38 @ =0x08079C71
	str r0, [r4, #0x4C]
_08079C2C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079C34: .4byte 0x00004029
_08079C38: .4byte sub_8079C70
