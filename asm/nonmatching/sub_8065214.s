	.syntax unified
	.text

	thumb_func_start sub_8065214
sub_8065214:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08065226
	ldr r0, _0806522C @ =0x08065385
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08065226:
	pop {r4}
	pop {r1}
	bx r1
_0806522C: .4byte sub_8065384
