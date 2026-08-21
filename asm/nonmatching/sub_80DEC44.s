	.syntax unified
	.text

	thumb_func_start sub_80DEC44
sub_80DEC44:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DEC54
	ldr r0, _080DEC5C @ =0x080DE671
	str r0, [r4, #0x4C]
_080DEC54:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DEC5C: .4byte sub_80DE670
