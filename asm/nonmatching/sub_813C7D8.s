	.syntax unified
	.text

	thumb_func_start sub_813C7D8
sub_813C7D8:
	push {r4, lr}
	ldr r2, _0813C808 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	movs r2, #0x9B
	lsls r2, r2, #0x01
	adds r3, r1, r2
	movs r2, #0x01
	strb r2, [r3, #0x00]
	ldr r2, _0813C80C @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813C88C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813C808: .4byte 0x0000033E
_0813C80C: .4byte 0x000002B6
