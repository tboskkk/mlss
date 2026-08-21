	.syntax unified
	.text

	thumb_func_start sub_8072650
sub_8072650:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807266C
	adds r0, r4, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072674 @ =0x0807197D
	str r0, [r4, #0x4C]
_0807266C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072674: .4byte sub_807197C
