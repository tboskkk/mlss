	.syntax unified
	.text

	thumb_func_start sub_809B504
sub_809B504:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B544
	ldr r2, _0809B54C @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x01
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
	ldr r0, _0809B550 @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0809B554 @ =0x0809B5A9
	str r0, [r4, #0x4C]
_0809B544:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B54C: .4byte 0x000040C2
_0809B550: .4byte 0x0000015D
_0809B554: .4byte sub_809B5A8
