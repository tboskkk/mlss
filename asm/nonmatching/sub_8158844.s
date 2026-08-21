	.syntax unified
	.text

	thumb_func_start sub_8158844
sub_8158844:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x34
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x04]
	subs r0, r0, r1
	str r0, [r4, #0x04]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	ldr r1, _0815887C @ =0xFFFFE000
	cmp r0, r1
	bge _08158872
	bl sub_8199F30
	ldr r1, _08158880 @ =0x000001FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
_08158872:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815887C: .4byte 0xFFFFE000
_08158880: .4byte 0x000001FF
