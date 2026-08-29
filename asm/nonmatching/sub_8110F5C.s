	.syntax unified
	.text

	thumb_func_start sub_8110F5C
sub_8110F5C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08110F98
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	movs r1, #0x06
	cmp r0, #0x01
	beq _08110F7A
	movs r1, #0x09
_08110F7A:
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
	ldr r0, _08110FA0 @ =0x0811108D
	str r0, [r4, #0x4C]
_08110F98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08110FA0: .4byte sub_811108C
