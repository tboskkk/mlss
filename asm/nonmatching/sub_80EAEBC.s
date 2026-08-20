	.syntax unified
	.text

	thumb_func_start sub_80EAEBC
sub_80EAEBC:
	push {lr}
	ldr r0, [r1, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldm r3!, {r1}
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EAED8
	ldr r0, [r3, #0x00]
	str r0, [r2, #0x00]
_080EAED8:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
