	.syntax unified
	.text

	thumb_func_start sub_807F834
sub_807F834:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x0C]
	ldr r0, _0807F860 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r3, #0x16]
	subs r0, #0x01
	strh r0, [r3, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F85A
	movs r0, #0x14
	strh r0, [r3, #0x16]
	ldr r0, _0807F864 @ =0x080801BD
	str r0, [r4, #0x04]
_0807F85A:
	pop {r4}
	pop {r0}
	bx r0
_0807F860: .4byte 0x03000FD8
_0807F864: .4byte sub_80801BC
