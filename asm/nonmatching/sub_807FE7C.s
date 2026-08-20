	.syntax unified
	.text

	thumb_func_start sub_807FE7C
sub_807FE7C:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _0807FEAC @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r4, _0807FEB0 @ =0x0807FEB5
	ldr r2, [r3, #0x3C]
	ldr r1, [r2, #0x00]
	str r1, [r3, #0x3C]
	ldr r1, [r3, #0x4C]
	str r1, [r2, #0x00]
	str r4, [r2, #0x04]
	movs r1, #0x00
	strh r1, [r2, #0x10]
	str r2, [r3, #0x4C]
	str r0, [r2, #0x08]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FEAC: .4byte 0x03000FD8
_0807FEB0: .4byte sub_807FEB4
