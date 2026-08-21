	.syntax unified
	.text

	thumb_func_start sub_811104C
sub_811104C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	movs r1, #0x11
	cmp r0, #0x01
	beq _08111064
	movs r1, #0x12
_08111064:
	adds r0, r4, #0x0
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
	ldr r0, _08111088 @ =0x08111175
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08111088: .4byte sub_8111174
