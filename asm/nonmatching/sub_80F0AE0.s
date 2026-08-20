	.syntax unified
	.text

	thumb_func_start sub_80F0AE0
sub_80F0AE0:
	push {lr}
	adds r1, r0, #0x0
	ldr r2, [r2, #0x00]
	asrs r0, r2, #0x01
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	bne _080F0B04
	ldr r1, [r1, #0x14]
	adds r1, #0xF9
	ands r2, r3
	lsls r3, r2, #0x02
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
_080F0B04:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
