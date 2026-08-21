	.syntax unified
	.text

	thumb_func_start sub_809B038
sub_809B038:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _0809B060 @ =0x000040BE
	movs r1, #0x02
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
	ldr r0, _0809B064 @ =0x0809B069
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809B060: .4byte 0x000040BE
_0809B064: .4byte sub_809B068
