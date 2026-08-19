	.syntax unified
	.text

	thumb_func_start script_cmd_call
script_cmd_call: @ 080EB208
	push {lr}
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	bne _080EB214
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x10]
_080EB214:
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x00]
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
