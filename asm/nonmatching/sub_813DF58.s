	.syntax unified
	.text

	thumb_func_start sub_813DF58
sub_813DF58:
	push {lr}
	adds r3, r1, #0x0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813DF7A
	ldr r1, _0813DF80 @ =0x00000239
	adds r0, r3, r1
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	ldr r0, _0813DF84 @ =0x0813DFF1
	str r0, [r2, #0x00]
_0813DF7A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813DF80: .4byte 0x00000239
_0813DF84: .4byte 0x0813DFF1
