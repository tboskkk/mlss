	.syntax unified
	.text

	thumb_func_start sub_815F08C
sub_815F08C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x34
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x04]
	subs r0, r0, r1
	str r0, [r4, #0x04]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	ldr r1, _0815F0C4 @ =0xFFFFE000
	cmp r0, r1
	bge _0815F0BA
	bl sub_8199F30
	ldr r1, _0815F0C8 @ =0x000001FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
_0815F0BA:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815F0C4: .4byte 0xFFFFE000
_0815F0C8: .4byte 0x000001FF
