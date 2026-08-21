	.syntax unified
	.text

	thumb_func_start sub_81634DC
sub_81634DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x00]
	bl sub_8161E38
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x04]
	bl sub_8161E38
	ldr r0, [r4, #0x04]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x08]
	bl sub_8161E38
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x0C]
	bl sub_8161E38
	ldr r0, [r4, #0x0C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
