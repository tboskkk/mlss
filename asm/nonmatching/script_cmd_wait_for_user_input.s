	.syntax unified
	.text

	thumb_func_start script_cmd_wait_for_user_input
script_cmd_wait_for_user_input: @ 080EB0F4
	push {lr}
	ldr r0, [r1, #0x04]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r1, [r3, #0x00]
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080EB110
	movs r0, #0x01
	b _080EB116
_080EB110:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
_080EB116:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
