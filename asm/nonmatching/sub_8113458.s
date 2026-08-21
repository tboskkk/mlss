	.syntax unified
	.text

	thumb_func_start sub_8113458
sub_8113458:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0811349C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _0811347C
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _0811349C
_0811347C:
	adds r0, r4, #0x0
	movs r1, #0x17
	movs r2, #0x00
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
	ldr r0, _081134A4 @ =0x08112D79
	str r0, [r4, #0x4C]
_0811349C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081134A4: .4byte sub_8112D78
