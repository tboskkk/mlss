	.syntax unified
	.text

	thumb_func_start script_cmd_conditional_jump
script_cmd_conditional_jump: @ 080EAB70
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	ldr r3, [r4, #0x08]
	bl script_test_condition
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r4, #0x0C]
	cmp r0, r1
	bne _080EAB8E
	ldr r0, [r4, #0x10]
	str r0, [r5, #0x00]
_080EAB8E:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
