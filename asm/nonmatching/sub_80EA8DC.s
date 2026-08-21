	.syntax unified
	.text

	thumb_func_start sub_80EA8DC
sub_80EA8DC:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	adds r3, r5, #0x0
	adds r3, #0x98
	ldr r3, [r3, #0x00]
	bl script_test_condition
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EA8FA
	ldr r0, [r4, #0x08]
	str r0, [r5, #0x00]
_080EA8FA:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
