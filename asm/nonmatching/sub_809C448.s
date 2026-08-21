	.syntax unified
	.text

	thumb_func_start sub_809C448
sub_809C448:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _0809C470 @ =0x000040BF
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809C474 @ =0x0809C4F9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809C470: .4byte 0x000040BF
_0809C474: .4byte sub_809C4F8
