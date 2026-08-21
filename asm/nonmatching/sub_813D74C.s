	.syntax unified
	.text

	thumb_func_start sub_813D74C
sub_813D74C:
	push {r4, lr}
	ldr r2, _0813D770 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	ldr r2, _0813D774 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813D6FC
	pop {r4}
	pop {r0}
	bx r0
_0813D770: .4byte 0x0000033E
_0813D774: .4byte 0x000002B6
