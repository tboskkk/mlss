	.syntax unified
	.text

	thumb_func_start sub_811213C
sub_811213C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0811216A
	adds r0, r4, #0x0
	movs r1, #0x0D
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
	ldr r0, _08112170 @ =0x08112499
	str r0, [r4, #0x4C]
_0811216A:
	pop {r4}
	pop {r0}
	bx r0
_08112170: .4byte sub_8112498
