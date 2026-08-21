	.syntax unified
	.text

	thumb_func_start sub_807FB34
sub_807FB34:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0807FB5C
	bl sub_807BDDC
	ldrb r0, [r4, #0x13]
	movs r1, #0x05
	negs r1, r1
	ands r1, r0
	movs r0, #0x09
	negs r0, r0
	ands r1, r0
	strb r1, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
_0807FB5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
